import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Hapus const dari sini karena children-nya tidak semuanya const
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Tambahkan ini untuk alignment vertikal
          children: [
            LeafBorderText( // Hapus const
              text: "random 1",
              imgCode: '1',
            ),
            const SizedBox(height: 10), // Tambahkan Spacer atau SizedBox untuk spacing
            LeafBorderText( // Hapus const
              text: "random 2",
              imgCode: '2',
            ),
            const SizedBox(height: 10), // Spacer atau SizedBox untuk spacing
            LeafBorderText( // Hapus const
              text: "Halo Dunia", // Tambahkan ini jika text adalah optional dengan default value
              imgCode: '0',
            ),
          ],
        ),
      ),
    );
  }
}


class LeafBorderText extends StatelessWidget {
  final String imgCode;
  final String text;
  const LeafBorderText(
    {super.key, required this.text, required this.imgCode});

  void handleButton()
  {
    print("saya dipencet");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
        borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30), topRight: Radius.circular(30),),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              Image(image: NetworkImage('https://picsum.photos/200?random=$imgCode')),
              const SizedBox(
                width: 8,
              ),
              Icon(Icons.build_circle),
              Text(
                text, // Menggunakan variabel `text`
                style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: handleButton, child: const Text('pencet saya')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

