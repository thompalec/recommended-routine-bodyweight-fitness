#!/usr/bin/env python3
"""
Script to convert YouTube video segments to GIFs for exercise demonstrations.

Usage:
    python youtube_to_gif.py exercises.csv

CSV format:
    category,exercise_id,level,youtube_url,start_time,end_time
    warmup,squat_sky_reaches,0,https://youtube.com/watch?v=xxx,0:10,0:15
"""

import subprocess
import sys
import csv
import os
from pathlib import Path

def time_to_seconds(time_str):
    """Convert time string (MM:SS or HH:MM:SS) to seconds."""
    parts = time_str.split(':')
    if len(parts) == 2:
        return int(parts[0]) * 60 + int(parts[1])
    elif len(parts) == 3:
        return int(parts[0]) * 3600 + int(parts[1]) * 60 + int(parts[2])
    return int(time_str)

def download_video_segment(url, start_time, end_time, output_path):
    """Download a segment of a YouTube video."""
    print(f"Downloading segment from {start_time} to {end_time}...")

    # Download full video first (yt-dlp's --download-sections can be unreliable)
    temp_video = output_path.parent / f"temp_{output_path.stem}.mp4"

    cmd = [
        'yt-dlp',
        '-f', 'best[height<=720]',  # Limit quality to 720p
        url,
        '-o', str(temp_video)
    ]

    subprocess.run(cmd, check=True)
    return temp_video

def convert_to_gif(video_path, start_time, end_time, output_path, width=500, fps=15):
    """Convert video segment to optimized GIF."""
    print(f"Converting to GIF: {output_path.name}...")

    start_sec = time_to_seconds(start_time)
    end_sec = time_to_seconds(end_time)
    duration = end_sec - start_sec

    # FFmpeg command for high-quality GIF with palette
    cmd = [
        'ffmpeg',
        '-ss', str(start_sec),  # Start time
        '-t', str(duration),     # Duration
        '-i', str(video_path),
        '-vf', f'fps={fps},scale={width}:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse',
        '-loop', '0',  # Loop forever
        '-y',  # Overwrite output file
        str(output_path)
    ]

    subprocess.run(cmd, check=True)
    print(f"✓ Created: {output_path}")

def process_exercises(csv_file, base_output_dir):
    """Process all exercises from CSV file."""
    base_path = Path(base_output_dir)

    with open(csv_file, 'r') as f:
        reader = csv.DictReader(f)

        for row in reader:
            category = row['category']
            exercise_id = row['exercise_id']
            level = row['level']
            url = row['youtube_url']
            start_time = row['start_time']
            end_time = row['end_time']

            # Create output directory
            output_dir = base_path / category
            output_dir.mkdir(parents=True, exist_ok=True)

            # Output filename
            output_file = output_dir / f"{exercise_id}_{level}.gif"

            print(f"\n{'='*60}")
            print(f"Processing: {category}/{exercise_id} (Level {level})")
            print(f"{'='*60}")

            try:
                # Download video
                temp_video = download_video_segment(url, start_time, end_time, output_file)

                # Convert to GIF
                convert_to_gif(temp_video, start_time, end_time, output_file)

                # Clean up temp video
                temp_video.unlink()

                print(f"✓ Successfully created {output_file}")

            except Exception as e:
                print(f"✗ Error processing {exercise_id}: {e}")
                continue

def main():
    if len(sys.argv) < 2:
        print("Usage: python youtube_to_gif.py exercises.csv")
        print("\nCSV format:")
        print("category,exercise_id,level,youtube_url,start_time,end_time")
        sys.exit(1)

    csv_file = sys.argv[1]
    base_output_dir = Path(__file__).parent.parent / 'assets' / 'gifs'

    if not os.path.exists(csv_file):
        print(f"Error: File '{csv_file}' not found")
        sys.exit(1)

    print(f"Output directory: {base_output_dir}")
    process_exercises(csv_file, base_output_dir)
    print("\n✓ All done!")

if __name__ == '__main__':
    main()
