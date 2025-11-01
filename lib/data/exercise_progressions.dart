import '../models/exercise_progression.dart';

class ExerciseProgressions {
  static final Map<String, ExerciseProgression> progressions = {
    'strength_pullup': ExerciseProgression(
      exerciseId: 'strength_pullup',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Scapular Pulls',
          description: 'Pull your shoulder blades down while hanging',
          gifPath: 'assets/gifs/strength/pullup_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Arch Hangs',
          description: 'Hang with shoulders pulled down and slight arch',
          gifPath: 'assets/gifs/strength/pullup_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Pull-up Negatives',
          description: 'Jump to top position and lower slowly',
          gifPath: 'assets/gifs/strength/pullup_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Full Pull-ups',
          description: 'Complete pull-ups from dead hang',
          gifPath: 'assets/gifs/strength/pullup_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Weighted Pull-ups',
          description: 'Pull-ups with additional weight',
          gifPath: 'assets/gifs/strength/pullup_4.gif',
        ),
      ],
    ),
    'strength_squat': ExerciseProgression(
      exerciseId: 'strength_squat',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Assisted Squat',
          description: 'Hold support while squatting',
          gifPath: 'assets/gifs/strength/squat_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Squat',
          description: 'Full bodyweight squat',
          gifPath: 'assets/gifs/strength/squat_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Split Squat',
          description: 'One leg forward, one back',
          gifPath: 'assets/gifs/strength/squat_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Bulgarian Split Squat',
          description: 'Back foot elevated split squat',
          gifPath: 'assets/gifs/strength/squat_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Beginner Shrimp Squat',
          description: 'Single leg squat holding back foot',
          gifPath: 'assets/gifs/strength/squat_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Intermediate Shrimp Squat',
          description: 'Single leg squat with assistance',
          gifPath: 'assets/gifs/strength/squat_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Advanced Shrimp Squat',
          description: 'Full single leg squat',
          gifPath: 'assets/gifs/strength/squat_6.gif',
        ),
      ],
    ),
    'strength_dip': ExerciseProgression(
      exerciseId: 'strength_dip',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Parallel Bar Support Hold',
          description: 'Hold yourself up on parallel bars',
          gifPath: 'assets/gifs/strength/dip_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Negative Dips',
          description: 'Jump to top and lower slowly',
          gifPath: 'assets/gifs/strength/dip_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Full Dips',
          description: 'Complete dip from support',
          gifPath: 'assets/gifs/strength/dip_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Weighted Dips',
          description: 'Dips with additional weight',
          gifPath: 'assets/gifs/strength/dip_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Ring Dips',
          description: 'Dips on gymnastics rings',
          gifPath: 'assets/gifs/strength/dip_4.gif',
        ),
      ],
    ),
    'strength_hinge': ExerciseProgression(
      exerciseId: 'strength_hinge',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Romanian Deadlift',
          description: 'Hip hinge with straight legs',
          gifPath: 'assets/gifs/strength/hinge_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Single Leg Deadlift',
          description: 'Balance on one leg while hinging',
          gifPath: 'assets/gifs/strength/hinge_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Banded Nordic Curl Negatives',
          description: 'Assisted lowering in nordic curl',
          gifPath: 'assets/gifs/strength/hinge_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Banded Nordic Curls',
          description: 'Assisted nordic curls with band',
          gifPath: 'assets/gifs/strength/hinge_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Nordic Curls',
          description: 'Full bodyweight nordic curls',
          gifPath: 'assets/gifs/strength/hinge_4.gif',
        ),
      ],
    ),
    'strength_row': ExerciseProgression(
      exerciseId: 'strength_row',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Vertical Rows',
          description: 'Nearly upright body position',
          gifPath: 'assets/gifs/strength/row_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Incline Rows',
          description: 'Body at 45 degree angle',
          gifPath: 'assets/gifs/strength/row_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Horizontal Rows',
          description: 'Body parallel to ground',
          gifPath: 'assets/gifs/strength/row_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Wide Rows',
          description: 'Horizontal rows with wide grip',
          gifPath: 'assets/gifs/strength/row_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Weighted Rows',
          description: 'Rows with additional weight',
          gifPath: 'assets/gifs/strength/row_4.gif',
        ),
      ],
    ),
    'strength_pushup': ExerciseProgression(
      exerciseId: 'strength_pushup',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Vertical Push-ups',
          description: 'Wall push-ups',
          gifPath: 'assets/gifs/strength/pushup_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Incline Push-ups',
          description: 'Hands elevated on surface',
          gifPath: 'assets/gifs/strength/pushup_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Full Push-ups',
          description: 'Standard push-ups on floor',
          gifPath: 'assets/gifs/strength/pushup_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Diamond Push-ups',
          description: 'Hands close together',
          gifPath: 'assets/gifs/strength/pushup_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Pseudo Planche Push-ups',
          description: 'Hands positioned far back',
          gifPath: 'assets/gifs/strength/pushup_4.gif',
        ),
      ],
    ),
    'core_anti_extension': ExerciseProgression(
      exerciseId: 'core_anti_extension',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Plank',
          description: 'Hold plank position',
          gifPath: 'assets/gifs/core/anti_extension_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Ring Ab Rollouts',
          description: 'Ab rollouts using rings',
          gifPath: 'assets/gifs/core/anti_extension_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Ab Wheel Rollouts',
          description: 'Full ab wheel rollouts',
          gifPath: 'assets/gifs/core/anti_extension_2.gif',
        ),
      ],
    ),
    'core_anti_rotation': ExerciseProgression(
      exerciseId: 'core_anti_rotation',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Banded Pallof Press',
          description: 'Resist rotation with band',
          gifPath: 'assets/gifs/core/anti_rotation_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Ring Pallof Press',
          description: 'Pallof press using rings',
          gifPath: 'assets/gifs/core/anti_rotation_1.gif',
        ),
      ],
    ),
    'core_extension': ExerciseProgression(
      exerciseId: 'core_extension',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Reverse Hyperextensions',
          description: 'Lift legs while torso supported',
          gifPath: 'assets/gifs/core/extension_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Back Extensions',
          description: 'Lift torso while legs supported',
          gifPath: 'assets/gifs/core/extension_1.gif',
        ),
      ],
    ),
  };

  static ExerciseProgression? getProgressionForExercise(String exerciseId) {
    return progressions[exerciseId];
  }
}
