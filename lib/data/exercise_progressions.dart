import '../models/exercise_progression.dart';

class ExerciseProgressions {
  static final Map<String, ExerciseProgression> progressions = {
    'warmup_shoulder_band': ExerciseProgression(
      exerciseId: 'warmup_shoulder_band',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Standard',
          description: 'Less good: Stick dislocates, can also be done with a tee-shirt',
          gifPath: 'assets/gifs/warmup/warmup_shoulder_band_0.gif',
        ),
      ],
    ),
    'warmup_squat_sky': ExerciseProgression(
      exerciseId: 'warmup_squat_sky',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Assisted Squat Sky Reaches',
          description: 'Use support to help with balance and depth',
          gifPath: 'assets/gifs/warmup/warmup_squat_sky_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Squat Sky Reaches',
          description: 'Full squat sky reaches without support',
          gifPath: 'assets/gifs/warmup/warmup_squat_sky_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Extended Squat Sky Reaches',
          description: 'Advanced squat sky reaches with extended range',
          gifPath: 'assets/gifs/warmup/warmup_squat_sky_2.gif',
        ),
      ],
    ),
    'warmup_arch_hangs': ExerciseProgression(
      exerciseId: 'warmup_arch_hangs',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Scapular Pulls',
          description: 'Pull your shoulder blades down while hanging. Elbows straight, pause at top for 3-5s',
          gifPath: 'assets/gifs/warmup/warmup_arch_hangs_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Arch Hangs',
          description: 'Hold with shoulders pulled down. Progress to 90 degree shoulder angle',
          gifPath: 'assets/gifs/warmup/warmup_arch_hangs_1.gif',
        ),
      ],
    ),
    'warmup_deadbugs': ExerciseProgression(
      exerciseId: 'warmup_deadbugs',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Static Deadbug Hold',
          description: 'Hold arms and legs in deadbug position without moving',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_0.png',
        ),
        ProgressionLevel(
          level: 1,
          name: '90 Deg Heel Taps',
          description: 'Tap heels to ground while maintaining 90 degree angle at hips and knees',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Contralateral Extensions',
          description: 'Extend opposite arm and leg while maintaining core stability',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Double Leg Extension',
          description: 'Extend both legs simultaneously while keeping lower back pressed down',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Full Layouts',
          description: 'Full body extension from deadbug position',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Advanced Full Layouts',
          description: 'Advanced full body extension with increased difficulty',
          gifPath: 'assets/gifs/warmup/warmup_deadbugs_5.gif',
        ),
      ],
    ),
    'warmup_support_hold': ExerciseProgression(
      exerciseId: 'warmup_support_hold',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Parallel Bar Support',
          description: 'Hold yourself up on parallel bars with straight arms',
          gifPath: 'assets/gifs/warmup/warmup_support_hold_0.png',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Ring Support Hold',
          description: 'Hold yourself up on gymnastics rings with straight arms',
          gifPath: 'assets/gifs/warmup/warmup_support_hold_1.png',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Rings Turned Out Support Hold',
          description: 'Hold on rings with hands turned outward for increased difficulty',
          gifPath: 'assets/gifs/warmup/warmup_support_hold_2.gif',
        ),
      ],
    ),
    'strength_pullup': ExerciseProgression(
      exerciseId: 'strength_pullup',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Scapular Pulls',
          description: 'Pull your shoulder blades down while hanging. Elbows straight, pause at top for 3-5s',
          gifPath: 'assets/gifs/strength/strength_pullup_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Arch Hangs',
          description: 'Hold with shoulders pulled down. Progress to 90 degree shoulder angle',
          gifPath: 'assets/gifs/strength/strength_pullup_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Pull-up Negatives',
          description: 'Jump to top, lower slowly. Build up to 10sec negatives',
          gifPath: 'assets/gifs/strength/strength_pullup_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Full Pull-ups',
          description: 'Complete pull-ups from dead hang',
          gifPath: 'assets/gifs/strength/strength_pullup_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Weighted Pull-ups',
          description: 'Pull-ups with additional weight',
          gifPath: 'assets/gifs/strength/strength_pullup_4.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 5,
          name: 'L-sit Pull-ups (Alt Path 1)',
          description: 'Hold legs in L-sit position, perform pull-up',
          gifPath: 'assets/gifs/strength/strength_pullup_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Arch Body Pull-ups (Alt Path 2)',
          description: 'Pull-ups with arched body position',
          gifPath: 'assets/gifs/strength/strength_pullup_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'Type-Writer Pull-up (Alt Path 3)',
          description: 'Pull up, move side to side at top with straight arms',
          gifPath: 'assets/gifs/strength/strength_pullup_7.gif',
        ),
        ProgressionLevel(
          level: 8,
          name: 'Archer Pull-ups (Alt Path 3)',
          description: 'One assisting arm straight, pull to one side',
          gifPath: 'assets/gifs/strength/strength_pullup_8.gif',
        ),
      ],
    ),
    'strength_squat': ExerciseProgression(
      exerciseId: 'strength_squat',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Assisted Squat',
          description: 'Grab something in front of you and use your hands to assist in the squat. Reduce assistance over time.',
          gifPath: 'assets/gifs/strength/strength_squat_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Squat',
          description: 'Full bodyweight squat. See general form cues.',
          gifPath: 'assets/gifs/strength/strength_squat_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Weighted Squats',
          description: 'Add weight to your squats for increased difficulty',
          gifPath: 'assets/gifs/strength/strength_squat_2.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 3,
          name: 'Split Squat',
          description: 'Remain in the split stance throughout the set. Unlike a lunge, you don\'t return to a "feet together" stance.',
          gifPath: 'assets/gifs/strength/strength_squat_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Bulgarian Split Squat',
          description: 'Back foot elevated split squat. You can progress this further by elevating both your legs.',
          gifPath: 'assets/gifs/strength/squat_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Beginner Shrimp Squat',
          description: 'Make sure your knee and toes leave the floor at the same time',
          gifPath: 'assets/gifs/strength/squat_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Intermediate Shrimp Squat',
          description: 'In this variation, the knee touches the ground but the toes do not.',
          gifPath: 'assets/gifs/strength/squat_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'Advanced Shrimp Squat',
          description: 'In this variation, you hold your heel as you descend. Only the knee touches the floor.',
          gifPath: 'assets/gifs/strength/squat_7.gif',
        ),
        ProgressionLevel(
          level: 8,
          name: 'Weighted Shrimp Squats',
          description: 'Add weight to shrimp squats for increased difficulty',
          gifPath: 'assets/gifs/strength/squat_8.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 9,
          name: 'Step-ups (Alt Path 1)',
          description: 'Putting one leg up on a high object in front of you, put all of your weight on the front leg and step up to the object. Aim to minimize pushing off with the back leg. To make it harder, increase the height of the object, or hold some weight.',
          gifPath: 'assets/gifs/strength/squat_9.gif',
        ),
        ProgressionLevel(
          level: 10,
          name: 'Deep Step-ups (Alt Path 1)',
          description: 'This is the final goal of the step-ups. USE YOUR BACK LEG AS LITTLE AS POSSIBLE',
          gifPath: 'assets/gifs/strength/squat_10.gif',
        ),
        ProgressionLevel(
          level: 11,
          name: 'Partial ROM Pistol Squats (Alt Path 2)',
          description: 'Increase the ROM as you get stronger',
          gifPath: 'assets/gifs/strength/squat_11.gif',
        ),
        ProgressionLevel(
          level: 12,
          name: 'Pistol Squat (Alt Path 2)',
          description: 'If mobility is an issue, you can do counterweighted pistol squats while you work on increasing your ankle mobility.',
          gifPath: 'assets/gifs/strength/squat_12.gif',
        ),
      ],
    ),
    'strength_dip': ExerciseProgression(
      exerciseId: 'strength_dip',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Parallel Bar Support Hold',
          description: 'Work up to 3 sets of 1 minute holds. If you can\'t hold yourself up at all, consider using bands or your feet to assist you until you gain the necessary strength.',
          gifPath: 'assets/gifs/strength/strength_dip_0.png',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Negative Dips',
          description: 'This exercise is only the descent. To get to the starting position you can jump or use a box. Lower yourself with control. Work up to 10 sec descents.',
          gifPath: 'assets/gifs/strength/strength_dip_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Parallel Bar Dips',
          description: 'Complete parallel bar dips from support. See general form cues.',
          gifPath: 'assets/gifs/strength/strength_dip_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Weighted Dips',
          description: 'Dips with additional weight. You can do this progression in place of ring dips. We recommend to add weight to parallel bar dips first instead of ring dips.',
          gifPath: 'assets/gifs/strength/strength_dip_3.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 4,
          name: 'Ring Dips (Alt Path 1)',
          description: 'Prerequisite: 3x8 PB Dips + 60sec RTO Support Hold (from Warmup). Starting from a support position with the rings turned out, perform a dip. It\'s okay if the rings turn in, just make sure you turn them out at the top.',
          gifPath: 'assets/gifs/strength/strength_dip_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Rings RTO Dips (Alt Path 1)',
          description: 'Keep the rings turned out during the entire dip. You will need to lean your body or pike your hips to compensate for the ring turn.',
          gifPath: 'assets/gifs/strength/strength_dip_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'HeSPU (Alt Path 2)',
          description: 'Headstand Push-ups - Advanced vertical pushing exercise',
          gifPath: 'assets/gifs/strength/strength_dip_6.gif',
        ),
      ],
    ),
    'strength_hinge': ExerciseProgression(
      exerciseId: 'strength_hinge',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Romanian Deadlift',
          description: 'Stand up straight. Brace and squeeze your butt to flatten your low back (neutral spine to maybe slightly arched). Send your butt back and lean your torso forward to avoid falling over. You can place the hands on your chest and abdomen for feedback or let them hang by your sides.',
          gifPath: 'assets/gifs/strength/strength_hinge_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Weighted Deadlift',
          description: 'Romanian deadlift with added weight',
          gifPath: 'assets/gifs/strength/strength_hinge_1.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 2,
          name: 'Single Leg Deadlift',
          description: 'If you lack the balance to perform these with a leg in the air, you can use an arm to brace yourself against a surface or you can straddle your legs to help with balance.',
          gifPath: 'assets/gifs/strength/strength_hinge_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Banded Nordic Curl Negatives',
          description: 'Anchor your feet under something sturdy. You want to be anchored about a fist\'s distance away from your ankle. Squeeze your butt to keep your hips extended. Slowly lower your torso, avoiding piking at the hips. Do a little push-up when you reach the bottom to get back to the top and "skip" the concentric.',
          gifPath: 'assets/gifs/strength/strength_hinge_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Banded Nordic Curls',
          description: 'Anchor your feet under something sturdy. You want to be anchored about a fist\'s distance away from your ankle. Squeeze your butt to keep your hips extended. Slowly lower your torso, avoiding piking at the hips. Repeat with weaker bands until you can move on.',
          gifPath: 'assets/gifs/strength/strength_hinge_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Nordic Curls',
          description: 'Anchor your feet under something sturdy. You want to be anchored about a fist\'s distance away from your ankle. Squeeze your butt to keep your hips extended. Slowly lower your torso, avoiding piking at the hips.',
          gifPath: 'assets/gifs/strength/strength_hinge_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Negative Hamstring Slide (Alt Path 1)',
          description: 'Floor Slide Progression: Start in the top position of a glute bridge, slide legs out under control until your butt touches the ground/knees are extended. You will need a towel, socks, sliders, carpet etc. material which allows you to perform this movement smoothly.',
          gifPath: 'assets/gifs/strength/strength_hinge_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'Hamstring Slide (Alt Path 1)',
          description: 'As before, but pull ankles back to glutes after eccentric movement, contracting the hamstrings and glutes. Keep PPT/Neutral Pelvis. Hands supporting at sides for support as needed.',
          gifPath: 'assets/gifs/strength/hinge_7.gif',
        ),
        ProgressionLevel(
          level: 8,
          name: 'Eccentric Single Leg Sliding Hamstring Slide (Alt Path 1)',
          description: 'Similar to previous, but with 1 leg. Keep other leg raised, or rested on working leg. Focus on the eccentric (lowering) phase.',
          gifPath: 'assets/gifs/strength/hinge_8.gif',
        ),
        ProgressionLevel(
          level: 9,
          name: 'Single Leg Sliding Hamstring Slide (Alt Path 1)',
          description: 'Full single leg sliding hamstring curl. Ascend by squeezing glutes, pulling your ankles to your glutes, contracting your hamstrings. Descend by sliding ankles out under control.',
          gifPath: 'assets/gifs/strength/hinge_9.gif',
        ),
        ProgressionLevel(
          level: 10,
          name: 'Beginner Harop Curl (Alt Path 2)',
          description: 'Anchor your feet under something sturdy. You want to be anchored about a fist\'s distance away from your ankle. Lower your torso by piking at the hips. Keep thighs vertical. Ascend by squeezing your glutes and driving your ankles up into your anchor. Progress these by piking your hips less as they get easier.',
          gifPath: 'assets/gifs/strength/hinge_10.gif',
        ),
        ProgressionLevel(
          level: 11,
          name: 'Advanced Harop Curl (Alt Path 2)',
          description: 'Anchor your feet under something sturdy. You want to be anchored about a fist\'s distance away from your ankle. Ascend by squeezing your glutes and driving your ankles up into your anchor.',
          gifPath: 'assets/gifs/strength/hinge_11.gif',
        ),
        ProgressionLevel(
          level: 12,
          name: 'Glute Ham Raise (Alt Path 3)',
          description: 'Advanced glute-ham raise movement. Requires GHR machine or similar setup.',
          gifPath: 'assets/gifs/strength/hinge_12.gif',
        ),
      ],
    ),
    'strength_row': ExerciseProgression(
      exerciseId: 'strength_row',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Vertical Rows',
          description: 'Perform a row, but with the body position vertical.',
          gifPath: 'assets/gifs/strength/strength_row_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Incline Rows',
          description: 'Perform a row, but with the body position somewhere between vertical and horizontal. Go closer to horizontal to make it harder. Don\'t have a low bar? Incline rows using nothing but a bedsheet and closed door.',
          gifPath: 'assets/gifs/strength/strength_row_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Horizontal Rows',
          description: 'Body parallel to ground. See general form cues.',
          gifPath: 'assets/gifs/strength/strength_row_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Wide Rows',
          description: 'It\'s okay to flare your elbows on this one. On a bar: take a wide grip (1.5 times shoulder width) and perform rows. On rings: while performing a row, bring out the elbows to the side up to a 90 degree angle.',
          gifPath: 'assets/gifs/strength/strength_row_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Weighted Inverted Rows',
          description: 'These can be done with a weight plate on your chest/belly (uncomfortable and unreliable), or with a weight vest (minimal setup, but limited weight), or with a dip belt hanging from your waist or chest. Alternatively, you can do Barbell or Dumbbell rows.',
          gifPath: 'assets/gifs/strength/strength_row_4.gif',
          usesWeight: true,
        ),
        ProgressionLevel(
          level: 5,
          name: 'Tuck Front Lever (Alt Path 1)',
          description: 'PRE-REQUISITE: Must be able to perform skin the cat for 5x2, and arching active hang for 3x8. The main points here are to actively depress and retract the scapulae, as well as keeping the elbows completely straight. There should be a strong activation of the lats coupled with the depression. Work up to 3x10-30secs.',
          gifPath: 'assets/gifs/strength/strength_row_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Tuck Front Lever Pulls (Alt Path 1)',
          description: 'We advise having a solid Tuck Front Lever hold (20-30s) before moving on to the Pulls. The main points are to actively depress and retract the scapulae, keeping elbows completely straight. Don\'t spend too much time in the inverted hang or dead hang position, no more than a second. Work 3x5-8. Note: After this, repeat with Advanced Tuck > Half Straddle > Straddle > Half Lay > Full Lay progressions.',
          gifPath: 'assets/gifs/strength/strength_row_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'Archer Rows (Alt Path 2)',
          description: 'See general form cues. Try to maintain a straight assisting arm. Incline Archer Rows are also a thing.',
          gifPath: 'assets/gifs/strength/strength_row_7.gif',
        ),
        ProgressionLevel(
          level: 8,
          name: 'One Arm Rows (Alt Path 2)',
          description: 'Single arm rowing exercise. Advanced progression requiring significant strength.',
          gifPath: 'assets/gifs/strength/strength_row_8.gif',
        ),
      ],
    ),
    'strength_pushup': ExerciseProgression(
      exerciseId: 'strength_pushup',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Vertical Pushup',
          description: 'Standing next to a wall, put your hands on the wall and perform a pushup.',
          gifPath: 'assets/gifs/strength/strength_pushup_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Incline Pushup',
          description: 'Finding some raised object, put your hands on said object and perform a pushup. Lower the height to increase the difficulty.',
          gifPath: 'assets/gifs/strength/strength_pushup_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Full Pushup',
          description: 'See general form cues.',
          gifPath: 'assets/gifs/strength/strength_pushup_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Diamond Pushup',
          description: 'Put your hands close together so the thumbs and index fingers touch, then perform a pushup. If this is too difficult or feels uncomfortable, put your hands just a bit closer than in a normal pushup. Work on moving the hands closer together over time until you reach diamond pushups.',
          gifPath: 'assets/gifs/strength/strength_pushup_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Pseudo Planche Pushups',
          description: 'Putting your hands sideways, lean forward with a straight body until your shoulders are in front of your hands. Perform a pushup while maintaining forward lean. Protract the shoulderblades at the top. Increase forward lean to make more difficult. Decrease forward lean to make easier. You won\'t run out of resistance anytime soon if you keep increasing your forward lean.',
          gifPath: 'assets/gifs/strength/strength_pushup_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Rings Pushup (Alt Path 1)',
          description: 'Perform a pushup on the rings. Turn out the rings at the top.',
          gifPath: 'assets/gifs/strength/strength_pushup_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'RTO Pushup (Alt Path 1)',
          description: 'Starting from a plank position with the rings turned out, perform a pushup while keeping the rings turned out. This will feel alot like a pseudo planche pushup, but on rings.',
          gifPath: 'assets/gifs/strength/strength_pushup_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'RTO PPPU (Alt Path 1)',
          description: 'Starting from an RTO plank position, lean forward until your shoulders are in front of your hand. Perform a pushup while maintaining forward lean. Really protract and depress the shoulderblades at the top. Increase forward lean to make it more difficult. Decrease forward lean to make it easier. You won\'t run out of resistance anytime soon if you keep increasing your forward lean.',
          gifPath: 'assets/gifs/strength/pushup_7.gif',
        ),
        ProgressionLevel(
          level: 8,
          name: 'HeSPU (Alt Path 2)',
          description: 'Headstand Push-ups - Advanced vertical pushing exercise',
          gifPath: 'assets/gifs/strength/pushup_8.gif',
        ),
      ],
    ),
    'core_anti_extension': ExerciseProgression(
      exerciseId: 'core_anti_extension',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Plank',
          description: 'Work up to a 30s hold then move on to your ring rollouts. You\'re only doing the planks, don\'t do every drill in the video.',
          gifPath: 'assets/gifs/core/core_anti_extension_0.png',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Ring Ab Rollouts',
          description: 'Elbows should stay straight. Remain in a hollow body position (ribs down, butt tucked). Keep your hands as close as your overhead mobility will allow. Higher ring position will make this easier. Elevating the feet will make it harder.',
          gifPath: 'assets/gifs/core/core_anti_extension_1.gif',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Kneeling Ab Wheel Rollouts (Alt Path 1)',
          description: 'Use a wall to shorten the ROM and make it easier. The further you are from the wall, the more difficult it becomes. Keep a hollow body position (ribs down, butt tucked), brace your core, and squeeze your glutes.',
          gifPath: 'assets/gifs/core/core_anti_extension_2.gif',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Standing Ab Wheel Rollouts (Alt Path 1)',
          description: 'Use a wall to shorten the ROM and make it easier. The further you are from the wall, the more difficult it becomes. Keep a hollow body position (ribs down, butt tucked), brace your core, and squeeze your glutes.',
          gifPath: 'assets/gifs/core/core_anti_extension_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Tucked Hanging Leg Raises (Alt Path 2)',
          description: 'Remain in a passive hang and a hollow body position (ribs down, butt tucked). To minimize swinging, keep your feet infront of your hips and pause for a second at the top and bottom of the movement.',
          gifPath: 'assets/gifs/core/core_anti_extension_4.gif',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Pike Hanging Leg Raises Negative (Alt Path 2)',
          description: 'Perform a Tucked Leg Raise then straighten your legs and perform a straight legged negative. Remain in a passive hang and a hollow body position (ribs down, butt tucked). To minimize swinging, keep your feet infront of your hips and pause for a second at the top and bottom of the movement.',
          gifPath: 'assets/gifs/core/core_anti_extension_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Straight Hanging Leg Raises (Alt Path 2)',
          description: 'Remain in a passive hang and a hollow body position (ribs down, butt tucked). To minimize swinging, keep your feet infront of your hips and pause for a second at the top and bottom of the movement.',
          gifPath: 'assets/gifs/core/core_anti_extension_6.gif',
        ),
        ProgressionLevel(
          level: 7,
          name: 'Pike Compressions (Alt Path 3)',
          description: 'Advanced pike compression exercise for core strength and flexibility.',
          gifPath: 'assets/gifs/core/core_anti_extension_7.gif',
        ),
      ],
    ),
    'core_anti_rotation': ExerciseProgression(
      exerciseId: 'core_anti_rotation',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Banded Pallof Press',
          description: 'These are performed under control with a short pause when your arms are fully extended',
          gifPath: 'assets/gifs/core/core_anti_rotation_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Assisted Knee Copenhagen Plank (Alt Path 1)',
          description: 'Lower leg should give the minimum assistance you need. Don\'t let the hips sag. Can be performed on your hand instead of elbow.',
          gifPath: 'assets/gifs/core/core_anti_rotation_1.png',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Knee Copenhagen Plank (Alt Path 1)',
          description: 'Don\'t let the hips sag. Can be performed on your hand instead of elbow.',
          gifPath: 'assets/gifs/core/core_anti_rotation_2.png',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Assisted Copenhagen Plank (Alt Path 1)',
          description: 'Lower leg should give the minimum assistance you need. Don\'t let the hips sag. Can be performed on your hand instead of elbow.',
          gifPath: 'assets/gifs/core/core_anti_rotation_3.png',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Copenhagen Plank (Alt Path 1)',
          description: 'Don\'t let the hips sag. Can be performed on your hand instead of elbow.',
          gifPath: 'assets/gifs/core/core_anti_rotation_4.png',
        ),
        ProgressionLevel(
          level: 5,
          name: 'Copenhagen Plank with Movement (Alt Path 1)',
          description: 'Tuck your free leg to your chest and return to neutral under control. Don\'t let the hips sag. Can be performed on your hand instead of elbow.',
          gifPath: 'assets/gifs/core/core_anti_rotation_5.gif',
        ),
        ProgressionLevel(
          level: 6,
          name: 'Ring Pallof Press (Alt Path 2)',
          description: 'You can adjust the difficulty by altering your straddle width. Wider straddle = easier. Narrow straddle = harder.',
          gifPath: 'assets/gifs/core/core_anti_rotation_6.gif',
        ),
      ],
    ),
    'core_extension': ExerciseProgression(
      exerciseId: 'core_extension',
      levels: [
        ProgressionLevel(
          level: 0,
          name: 'Reverse Hyperextension',
          description: 'Keep your butt tucked',
          gifPath: 'assets/gifs/core/core_extension_0.gif',
        ),
        ProgressionLevel(
          level: 1,
          name: 'Arch Raises (Alt Path 1)',
          description: 'Only do the lower-body raises in this video',
          gifPath: 'assets/gifs/core/core_extension_1.png',
        ),
        ProgressionLevel(
          level: 2,
          name: 'Arch Body Hold (Alt Path 1)',
          description: 'Ok, now you can do the rest of the video',
          gifPath: 'assets/gifs/core/core_extension_2.png',
        ),
        ProgressionLevel(
          level: 3,
          name: 'Arch Body Rocks (Alt Path 1)',
          description: 'Advanced arch body rocking exercise',
          gifPath: 'assets/gifs/core/core_extension_3.gif',
        ),
        ProgressionLevel(
          level: 4,
          name: 'Hyper Extension (Alt Path 2)',
          description: 'Standard hyperextension exercise',
          gifPath: 'assets/gifs/core/core_extension_4.gif',
        ),
      ],
    ),
  };

  static ExerciseProgression? getProgressionForExercise(String exerciseId) {
    return progressions[exerciseId];
  }
}
