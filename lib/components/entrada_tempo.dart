import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    Key? key,
    this.fonteTituloTamanho = 18,
    this.fonteValueTamanho = 18,
    this.centroTexto = TextAlign.start,
    this.fonteCor = Colors.black,
    this.inc,
    this.dec,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final int value;
  final double fonteTituloTamanho;
  final double fonteValueTamanho;
  final TextAlign centroTexto;
  final Color fonteCor;

  final void Function()? inc;
  final void Function()? dec;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fonteTituloTamanho,
            color: fonteCor,
          ),
          textAlign: centroTexto,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              "$value min",
              style: TextStyle(
                fontSize: fonteValueTamanho,
                color: fonteCor,
              ),
              textAlign: centroTexto,
            ),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
