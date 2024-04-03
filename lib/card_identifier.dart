import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

class CardIdentifier extends StatefulWidget {
  const CardIdentifier({super.key});

  @override
  State<CardIdentifier> createState() => _CardIdentifierState();
}

class _CardIdentifierState extends State<CardIdentifier> {
  String? namaGambar;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaGambar = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Identifier"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Satu");
                            await player.setAsset("aset_media/suara/satu.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset_media/gambar/satu.png'))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Dua");
                            await player.setAsset("aset_media/suara/dua.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset_media/gambar/dua.png'))),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Tiga");
                            await player.setAsset("aset_media/suara/tiga.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset_media/gambar/tiga.png'))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Empat");
                            await player.setAsset("aset_media/suara/empat.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset_media/gambar/empat.png'))),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Lima");
                            await player.setAsset("aset_media/suara/lima.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset_media/gambar/lima.png'))),
                ],
              )),
          Text(namaGambar ?? "Klik Salah Satu Gambar")
        ],
      ),
    );
  }
}
