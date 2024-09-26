import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/hana.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('About'),
              subtitle: const Text('Saya seorang pelajar di SMK Wikrama Kota Bogor. Saya mengambil program sekolah dengan jurusan PPLG atau kepanjangan nya yaitu Pengambangan Perangkat Lunak dan Gim.'),
              leading: const Icon(CupertinoIcons.person),
              // trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('History'),
              subtitle: const Text('Saya mulai bersekolah dari PAUD di PAUD Bunga Bangsa melanjutkan TK di TK As-Saadah. SD saya di SD Negri Bangka 3 Kota Bogor. SMP saya di SMP Negri 7 Kota Bogor.'),
              leading: const Icon(CupertinoIcons.hand_draw),
              // trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Skill'),
              subtitle: const Text('Skill yang saya kuasai yaitu, saya bisa design UI/UX, membuat website'),
              leading: const Icon(CupertinoIcons.skew),
              // trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
