import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../api/sound_recorder.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';

class RecordButton extends StatelessWidget {
  const RecordButton({Key? key, required this.recorder}) : super(key: key);

  final SoundRecorder recorder;

  @override
  Widget build(BuildContext context) {
    final isRecording = recorder.isRecording;
    final icon = isRecording ? Icons.stop : Icons.mic;
    final text = isRecording ? 'STOP' : 'START';
    final primary = isRecording ? deepOrange : softOrange;
    final onPrimary = isRecording ? white : deepOrange;
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(primary: primary, onPrimary: onPrimary),
        icon: Icon(icon),
        label: Text(text,
            style: TextStyle(
                color: onPrimary, fontSize: 16, fontWeight: FontWeight.bold)),
        onPressed: () async {
          final isRecording = await recorder.toggleRecording();
        });
  }
}
