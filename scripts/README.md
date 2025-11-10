# YouTube to GIF Converter for Exercise Demonstrations

This script automates the process of converting YouTube video segments into optimized GIFs for the app.

## Prerequisites

Install the required tools:

```bash
# macOS
brew install yt-dlp ffmpeg

# Linux
sudo apt install yt-dlp ffmpeg

# Windows (using chocolatey)
choco install yt-dlp ffmpeg
```

## Usage

1. Create a CSV file with your exercise videos (see `exercises_example.csv`)
2. Run the script:

```bash
cd scripts
python3 youtube_to_gif.py your_exercises.csv
```

## CSV Format

The CSV file should have these columns:

| Column | Description | Example |
|--------|-------------|---------|
| category | Exercise category (warmup/strength/core) | `warmup` |
| exercise_id | Exercise identifier | `squat_sky_reaches` |
| level | Progression level number | `0` |
| youtube_url | Full YouTube URL | `https://www.youtube.com/watch?v=dQw4w9WgXcQ` |
| start_time | Start timestamp (MM:SS or HH:MM:SS) | `1:30` |
| end_time | End timestamp (MM:SS or HH:MM:SS) | `1:35` |

## Example CSV

```csv
category,exercise_id,level,youtube_url,start_time,end_time
warmup,squat_sky_reaches,0,https://www.youtube.com/watch?v=example,0:10,0:15
strength,pullup,0,https://www.youtube.com/watch?v=example,1:05,1:10
```

## Output

GIFs will be created in `assets/gifs/` organized by category:

```
assets/gifs/
├── warmup/
│   ├── squat_sky_reaches_0.gif
│   ├── squat_sky_reaches_1.gif
│   └── ...
├── strength/
│   ├── pullup_0.gif
│   ├── pullup_1.gif
│   └── ...
└── core/
    ├── anti_extension_0.gif
    └── ...
```

## Customization

You can adjust the GIF quality by modifying these parameters in the script:

- `width=500` - Width in pixels (default: 500px)
- `fps=15` - Frames per second (default: 15)
- `height<=720` - Video quality to download (default: 720p)

## Tips for Best Results

1. **Keep segments short**: 3-5 seconds per GIF is ideal
2. **Capture full reps**: Start and end at the same position
3. **Use good quality source videos**: 720p or higher
4. **Choose clear demonstrations**: Videos with good lighting and form

## Troubleshooting

**"Command not found: yt-dlp"**
- Install yt-dlp: `brew install yt-dlp` (macOS) or `pip install yt-dlp`

**"Command not found: ffmpeg"**
- Install ffmpeg: `brew install ffmpeg` (macOS) or `sudo apt install ffmpeg` (Linux)

**GIF file too large**
- Reduce width: Change `width=500` to `width=400`
- Reduce fps: Change `fps=15` to `fps=12`
- Make segment shorter: Reduce end_time - start_time

**Poor quality GIF**
- Increase width: Change `width=500` to `width=600`
- Increase fps: Change `fps=15` to `fps=18`
- Use better source video quality

## Batch Processing

To process all exercises at once, create a comprehensive CSV file with all your exercises and run:

```bash
python3 youtube_to_gif.py all_exercises.csv
```

The script will download and convert each one sequentially, showing progress as it goes.
