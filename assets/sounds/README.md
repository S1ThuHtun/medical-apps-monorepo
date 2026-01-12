# Alarm Sounds

## Adding a Custom Alarm Sound

To add a custom alarm sound to your app:

1. **Find a sound file**: Download a free alarm sound (MP3, WAV, or OGG format) from sites like:
   - https://freesound.org/
   - https://mixkit.co/free-sound-effects/
   - https://pixabay.com/sound-effects/

2. **Convert to MP3** (if needed): Make sure the file is in MP3 format and named `alarm.mp3`

3. **Add to this folder**: Place the `alarm.mp3` file in this `assets/sounds/` directory

4. **Done!** The app will automatically use your custom alarm sound

## Current Status

The app currently uses a fallback online sound. Once you add `alarm.mp3` to this folder, the app will use your custom sound instead.

## Recommended Sound Characteristics

- **Duration**: 2-5 seconds (will loop automatically)
- **Volume**: Medium to high (the app sets volume to max)
- **Type**: Clear, attention-grabbing sound (bell, beep, chime, etc.)
- **Format**: MP3 (best compatibility)
- **File size**: Keep it small (< 500KB) for faster loading
