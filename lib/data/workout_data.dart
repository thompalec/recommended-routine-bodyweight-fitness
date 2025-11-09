import '../models/exercise.dart';

class WorkoutData {
  // Warmup exercises
  static final List<Exercise> warmupExercises = [
    Exercise(
      id: 'warmup_shoulder_band',
      name: "Yuri's Shoulder Band Warmup",
      category: 'warmup',
      progressionLevels: ['Standard'],
      gifPath: 'assets/gifs/warmup/shoulder_band_warmup.gif',
      comments: 'Less good: Stick dislocates, can also be done with a tee-shirt',
      isReps: true,
      defaultValue: 5,
    ),
    Exercise(
      id: 'warmup_squat_sky',
      name: 'Squat Sky Reaches',
      category: 'warmup',
      progressionLevels: [
        'Assisted Squat Sky Reaches',
        'Squat Sky Reaches',
        'Extended Squat Sky Reaches'
      ],
      gifPath: 'assets/gifs/warmup/squat_sky_reaches.gif',
      comments: 'Progress from assisted to standard to extended',
      isReps: true,
      defaultValue: 5,
    ),
    Exercise(
      id: 'warmup_wrist',
      name: 'GMB Wrist Prep',
      category: 'warmup',
      progressionLevels: ['Standard'],
      gifPath: 'assets/gifs/warmup/wrist_prep.gif',
      comments: 'Do as many reps as you want',
      isReps: true,
      defaultValue: 10,
    ),
    Exercise(
      id: 'warmup_deadbugs',
      name: 'Deadbugs',
      category: 'warmup',
      progressionLevels: [
        'Static Deadbug Hold',
        '90 Deg Heel Taps',
        'Contralateral Extensions',
        'Double Leg Extension',
        'Full Layouts',
      ],
      gifPath: 'assets/gifs/warmup/deadbugs.gif',
      comments: null,
      isReps: false,
      defaultValue: 30,
    ),
    Exercise(
      id: 'warmup_arch_hangs',
      name: 'Arch Hangs',
      category: 'warmup',
      progressionLevels: [
        'Scapular Pulls',
        'Arch Hangs',
      ],
      gifPath: 'assets/gifs/warmup/arch_hangs.gif',
      comments: 'Add these after you reach Negative Pullups',
      isReps: true,
      defaultValue: 10,
    ),
    Exercise(
      id: 'warmup_support_hold',
      name: 'Support Hold',
      category: 'warmup',
      progressionLevels: [
        'Parallel Bar Support',
        'Ring Support Hold',
        'Rings Turned Out Support Hold',
      ],
      gifPath: 'assets/gifs/warmup/support_hold.gif',
      comments: 'Add these after you reach Negative Dips',
      isReps: false,
      defaultValue: 30,
    ),
    Exercise(
      id: 'warmup_squat_progression',
      name: 'Easier Squat Progression',
      category: 'warmup',
      progressionLevels: ['Standard'],
      gifPath: 'assets/gifs/warmup/easier_squat.gif',
      comments: 'Add these after you reach Bulgarian Split Squats',
      isReps: true,
      defaultValue: 10,
    ),
    Exercise(
      id: 'warmup_hinge_progression',
      name: 'Easier Hinge Progression',
      category: 'warmup',
      progressionLevels: ['Standard'],
      gifPath: 'assets/gifs/warmup/easier_hinge.gif',
      comments: 'Add these after you reach Banded Nordic Curls',
      isReps: true,
      defaultValue: 10,
    ),
  ];

  // Strength exercises
  static final List<Exercise> strengthExercises = [
    // First Pair
    Exercise(
      id: 'strength_pullup',
      name: 'Pull-up Progression',
      category: 'strength',
      progressionLevels: [
        'Scapular Pulls',
        'Arch Hangs',
        'Pull-up Negatives',
        'Full Pull-ups',
        'Weighted Pull-ups',
        'L-sit Pull-ups (Alt Path 1)',
        'Arch Body Pull-ups (Alt Path 2)',
        'Type-Writer Pull-up (Alt Path 3)',
        'Archer Pull-ups (Alt Path 3)',
      ],
      gifPath: 'assets/gifs/strength/pullup_progression_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 5,
    ),
    Exercise(
      id: 'strength_squat',
      name: 'Squat Progression',
      category: 'strength',
      progressionLevels: [
        'Assisted Squat',
        'Squat',
        'Weighted Squats',
        'Split Squat',
        'Bulgarian Split Squat',
        'Beginner Shrimp Squat',
        'Intermediate Shrimp Squat',
        'Advanced Shrimp Squat',
        'Weighted Shrimp Squats',
        'Step-ups (Alt Path 1)',
        'Deep Step-ups (Alt Path 1)',
        'Partial ROM Pistol Squats (Alt Path 2)',
        'Pistol Squat (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/strength/squat_progression_1.gif',
      comments: 'If you have access to barbells, use them after perfecting basic squat',
      isReps: true,
      defaultValue: 5,
    ),
    // Second Pair
    Exercise(
      id: 'strength_dip',
      name: 'Dip Progression',
      category: 'strength',
      progressionLevels: [
        'Parallel Bar Support Hold',
        'Negative Dips',
        'Parallel Bar Dips',
        'Weighted Dips',
        'Ring Dips (Alt Path 1)',
        'Rings RTO Dips (Alt Path 1)',
        'HeSPU (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/strength/dip_progression_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 5,
    ),
    Exercise(
      id: 'strength_hinge',
      name: 'Hinge Progression',
      category: 'strength',
      progressionLevels: [
        'Romanian Deadlift',
        'Weighted Deadlift',
        'Single Leg Deadlift',
        'Banded Nordic Curl Negatives',
        'Banded Nordic Curls',
        'Nordic Curls',
        'Negative Hamstring Slide (Alt Path 1)',
        'Hamstring Slide (Alt Path 1)',
        'Eccentric Single Leg Sliding Hamstring Slide (Alt Path 1)',
        'Single Leg Sliding Hamstring Slide (Alt Path 1)',
        'Beginner Harop Curl (Alt Path 2)',
        'Advanced Harop Curl (Alt Path 2)',
        'Glute Ham Raise (Alt Path 3)',
      ],
      gifPath: 'assets/gifs/strength/hinge_progression_1.gif',
      comments: 'If you have access to barbells, use them after perfecting basic hinge',
      isReps: true,
      defaultValue: 5,
    ),
    // Third Pair
    Exercise(
      id: 'strength_row',
      name: 'Row Progression',
      category: 'strength',
      progressionLevels: [
        'Vertical Rows',
        'Incline Rows',
        'Horizontal Rows',
        'Wide Rows',
        'Weighted Inverted Rows',
        'Tuck Front Lever (Alt Path 1)',
        'Tuck Front Lever Pulls (Alt Path 1)',
        'Archer Rows (Alt Path 2)',
        'One Arm Rows (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/strength/row_progression_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 5,
    ),
    Exercise(
      id: 'strength_pushup',
      name: 'Push-up Progression',
      category: 'strength',
      progressionLevels: [
        'Vertical Pushup',
        'Incline Pushup',
        'Full Pushup',
        'Diamond Pushup',
        'Pseudo Planche Pushups',
        'Rings Pushup (Alt Path 1)',
        'RTO Pushup (Alt Path 1)',
        'RTO PPPU (Alt Path 1)',
        'HeSPU (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/strength/pushup_progression_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 5,
    ),
  ];

  // Core exercises
  static final List<Exercise> coreExercises = [
    Exercise(
      id: 'core_anti_extension',
      name: 'Anti-Extension Progression',
      category: 'core',
      progressionLevels: [
        'Plank',
        'Ring Ab Rollouts',
        'Kneeling Ab Wheel Rollouts (Alt Path 1)',
        'Standing Ab Wheel Rollouts (Alt Path 1)',
        'Tucked Hanging Leg Raises (Alt Path 2)',
        'Pike Hanging Leg Raises Negative (Alt Path 2)',
        'Straight Hanging Leg Raises (Alt Path 2)',
        'Pike Compressions (Alt Path 3)',
      ],
      gifPath: 'assets/gifs/core/anti_extension_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 8,
    ),
    Exercise(
      id: 'core_anti_rotation',
      name: 'Anti-Rotation Progression',
      category: 'core',
      progressionLevels: [
        'Banded Pallof Press',
        'Assisted Knee Copenhagen Plank (Alt Path 1)',
        'Knee Copenhagen Plank (Alt Path 1)',
        'Assisted Copenhagen Plank (Alt Path 1)',
        'Copenhagen Plank (Alt Path 1)',
        'Copenhagen Plank with Movement (Alt Path 1)',
        'Ring Pallof Press (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/core/anti_rotation_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 8,
    ),
    Exercise(
      id: 'core_extension',
      name: 'Extension Progression',
      category: 'core',
      progressionLevels: [
        'Reverse Hyperextension',
        'Arch Raises (Alt Path 1)',
        'Arch Body Hold (Alt Path 1)',
        'Arch Body Rocks (Alt Path 1)',
        'Hyper Extension (Alt Path 2)',
      ],
      gifPath: 'assets/gifs/core/extension_1.gif',
      comments: null,
      isReps: true,
      defaultValue: 8,
    ),
  ];

  // Get all exercises in workout order
  static List<Exercise> getAllExercisesInOrder() {
    return [
      ...warmupExercises,
      ...strengthExercises,
      ...coreExercises,
    ];
  }

  // Get exercises with rest periods defined
  static List<Map<String, dynamic>> getWorkoutSequence() {
    List<Map<String, dynamic>> sequence = [];

    // Warmup - no rest between exercises
    for (var exercise in warmupExercises) {
      sequence.add({'type': 'exercise', 'data': exercise, 'restAfter': 0});
    }

    // Strength work - pairs with 90s rest
    // First Pair (3 sets each)
    for (int set = 0; set < 3; set++) {
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[0], // Pull-up
        'setNumber': set + 1,
        'restAfter': 90
      });
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[1], // Squat
        'setNumber': set + 1,
        'restAfter': 90
      });
    }

    // Second Pair (3 sets each)
    for (int set = 0; set < 3; set++) {
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[2], // Dip
        'setNumber': set + 1,
        'restAfter': 90
      });
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[3], // Hinge
        'setNumber': set + 1,
        'restAfter': 90
      });
    }

    // Third Pair (3 sets each)
    for (int set = 0; set < 3; set++) {
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[4], // Row
        'setNumber': set + 1,
        'restAfter': 90
      });
      sequence.add({
        'type': 'exercise',
        'data': strengthExercises[5], // Push-up
        'setNumber': set + 1,
        'restAfter': 90
      });
    }

    // Core Triplet (3 sets each) with 60s rest
    for (int set = 0; set < 3; set++) {
      sequence.add({
        'type': 'exercise',
        'data': coreExercises[0], // Anti-Extension
        'setNumber': set + 1,
        'restAfter': 60
      });
      sequence.add({
        'type': 'exercise',
        'data': coreExercises[1], // Anti-Rotation
        'setNumber': set + 1,
        'restAfter': 60
      });
      sequence.add({
        'type': 'exercise',
        'data': coreExercises[2], // Extension
        'setNumber': set + 1,
        'restAfter': set < 2 ? 60 : 0 // No rest after last exercise
      });
    }

    return sequence;
  }
}
