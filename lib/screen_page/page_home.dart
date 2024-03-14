import 'package:flutter/material.dart';
import 'package:kamus_app/screen_page/page_detail_word.dart';
import 'package:kamus_app/screen_page/page_profile.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final List<Map<String, String>> listWords = [
    {
      'id': '1',
      'name': 'Apfel',
      'mean':
          'Buah yang bisa dimakan, biasanya bulat, dengan kulit berwarna merah atau hijau.',
      'indonesia': 'Apel'
    },
    {
      'id': '2',
      'name': 'Haus',
      'mean': 'Bangunan yang digunakan sebagai tempat tinggal oleh manusia.',
      'indonesia': 'Rumah'
    },
    {
      'id': '3',
      'name': 'Auto',
      'mean':
          'Kendaraan bermotor dengan empat roda yang digunakan untuk transportasi.',
      'indonesia': 'Mobil'
    },
    {
      'id': '4',
      'name': 'Tisch',
      'mean':
          'Perabot yang digunakan untuk menempatkan makanan atau barang di atasnya.',
      'indonesia': 'Meja'
    },
    {
      'id': '5',
      'name': 'Stuhl',
      'mean': 'Perabot untuk duduk yang biasanya memiliki empat kaki.',
      'indonesia': 'Kursi'
    },
    {
      'id': '6',
      'name': 'Hund',
      'mean':
          'Hewan peliharaan yang biasanya setia dan ramah terhadap manusia.',
      'indonesia': 'Anjing'
    },
    {
      'id': '7',
      'name': 'Katze',
      'mean': 'Hewan peliharaan yang biasanya independen dan suka bermain.',
      'indonesia': 'Kucing'
    },
    {
      'id': '8',
      'name': 'Buch',
      'mean':
          'Kumpulan kertas yang dijilid bersama dan digunakan untuk membaca atau menulis.',
      'indonesia': 'Buku'
    },
    {
      'id': '9',
      'name': 'Telefon',
      'mean':
          'Alat komunikasi elektronik yang digunakan untuk berbicara dengan orang lain dari jarak jauh.',
      'indonesia': 'Telepon'
    },
    {
      'id': '10',
      'name': 'Schule',
      'mean': 'Tempat di mana siswa belajar dan diajar oleh guru.',
      'indonesia': 'Sekolah'
    },
    {
      'id': '11',
      'name': 'Bruder',
      'mean': 'Saudara laki-laki dari orang tua yang sama.',
      'indonesia': 'Saudara'
    },
    {
      'id': '12',
      'name': 'Schwester',
      'mean': 'Saudara perempuan dari orang tua yang sama.',
      'indonesia': 'Saudari'
    },
    {
      'id': '13',
      'name': 'Mutter',
      'mean': 'Orang tua perempuan.',
      'indonesia': 'Ibu'
    },
    {
      'id': '14',
      'name': 'Vater',
      'mean': 'Orang tua laki-laki.',
      'indonesia': 'Ayah'
    },
    {
      'id': '15',
      'name': 'Essen',
      'mean': 'Bahan makanan yang dikonsumsi oleh manusia.',
      'indonesia': 'Makan'
    },
    {
      'id': '16',
      'name': 'Trinken',
      'mean': 'Aksi memasukkan cairan ke dalam tubuh melalui mulut.',
      'indonesia': 'Minum'
    },
    {
      'id': '17',
      'name': 'Wasser',
      'mean':
          'Zat cair yang penting bagi kehidupan dan ditemukan di alam dalam bentuk sungai, danau, dan laut.',
      'indonesia': 'Air'
    },
    {
      'id': '18',
      'name': 'Brot',
      'mean':
          'Makanan yang terbuat dari tepung dan diolah dengan cara dipanggang.',
      'indonesia': 'Roti'
    },
    {
      'id': '19',
      'name': 'Kaffee',
      'mean':
          'Minuman panas yang dibuat dari biji kopi yang disangrai dan dihaluskan.',
      'indonesia': 'Kopi'
    },
    {
      'id': '20',
      'name': 'Milch',
      'mean':
          'Cairan putih yang dihasilkan oleh mamalia betina untuk memberi makan anaknya.',
      'indonesia': 'Susu'
    },
    {
      'id': '21',
      'name': 'Fenster',
      'mean':
          'Bagian dari dinding yang biasanya terbuat dari kaca dan dapat dibuka atau ditutup.',
      'indonesia': 'Jendela'
    },
    {
      'id': '22',
      'name': 'Tür',
      'mean':
          'Bagian dari bangunan yang bisa dibuka dan ditutup untuk masuk atau keluar.',
      'indonesia': 'Pintu'
    },
    {
      'id': '23',
      'name': 'Schlüssel',
      'mean': 'Alat untuk membuka dan mengunci pintu, kotak, atau gembok.',
      'indonesia': 'Kunci'
    },
    {
      'id': '24',
      'name': 'Straße',
      'mean': 'Jalan yang digunakan untuk kendaraan bermotor dan pejalan kaki.',
      'indonesia': 'Jalan'
    },
    {
      'id': '25',
      'name': 'Park',
      'mean':
          'Taman atau area terbuka yang digunakan untuk rekreasi dan olahraga.',
      'indonesia': 'Taman'
    },
    {
      'id': '26',
      'name': 'Baum',
      'mean': 'Tumbuhan tinggi yang memiliki batang kayu dan daun hijau.',
      'indonesia': 'Pohon'
    },
    {
      'id': '27',
      'name': 'Blume',
      'mean':
          'Bagian dari tumbuhan yang biasanya berwarna-warni dan dijadikan hiasan.',
      'indonesia': 'Bunga'
    },
    {
      'id': '28',
      'name': 'Wolke',
      'mean':
          'Massa air kecil yang terbentuk di atmosfer dan menghasilkan hujan.',
      'indonesia': 'Awan'
    },
    {
      'id': '29',
      'name': 'Sonne',
      'mean':
          'Bintang yang terletak di pusat tata surya dan menyebabkan siang hari dan malam hari.',
      'indonesia': 'Matahari'
    },
    {
      'id': '30',
      'name': 'Mond',
      'mean':
          'Satelit alami bumi yang menghasilkan cahaya terang di malam hari.',
      'indonesia': 'Bulan'
    },
  ];

  bool isSearch = true;
  List<String> filterData = [];
  TextEditingController txtSearch = TextEditingController();

  @override
  void initState() {
    super.initState();
    txtSearch.addListener(onSearchTextChanged);
  }

  @override
  void dispose() {
    txtSearch.dispose();
    super.dispose();
  }

  void onSearchTextChanged() {
    setState(() {
      isSearch = txtSearch.text.isEmpty;
      filterData = listWords
          .where((word) => word['name']!
              .toLowerCase()
              .contains(txtSearch.text.toLowerCase()))
          .map((word) => word['name']!)
          .toList();
    });
  }

  _PageHomeState() {
    txtSearch.addListener(() {
      if (txtSearch.text.isEmpty) {
        setState(() {
          isSearch = true;
          txtSearch.text = "";
        });
      } else {
        setState(() {
          isSearch = false;
          txtSearch.text != "";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kamus App'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageProfile()),
                      (route) => false);
                });
              },
              icon: const Icon(Icons.account_circle_rounded)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: txtSearch,
              decoration: InputDecoration(
                hintText: "Search Word",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: txtSearch.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          txtSearch.clear();
                        },
                        icon: const Icon(Icons.clear))
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            isSearch
                ? Expanded(
                    child: ListView.builder(
                      itemCount: listWords.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          child: ListTile(
                            title: Text(listWords[index]['name']!),
                            onTap: () {
                              navigateToDetailPage(
                                  listWords[index]['name']!,
                                  listWords[index]['mean']!,
                                  listWords[index]['indonesia']!);
                            },
                          ),
                        );
                      },
                    ),
                  )
                : searchResult()
          ],
        ),
      ),
    );
  }

  void navigateToDetailPage(String word, String meaning, String indonesia) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            DetailWordPage(word: word, meaning: meaning, indonesia: indonesia),
      ),
    );
  }

  // createFilterList() {
  //   filterData = [];
  //   for (int i = 0; i < listWords.length; i++) {
  //     var word = listWords[i];
  //     String name = word['name'] ?? '';
  //     if (name.toLowerCase().contains(txtSearch.text.toLowerCase())) {
  //       filterData.add(name);
  //     }
  //   }
  //   return searchResult();
  // }

  Widget searchResult() {
    return Expanded(
        child: ListView.builder(
      itemCount: filterData.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              filterData[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.search),
            // Add an icon to the list item
            trailing: const Icon(Icons.arrow_forward),
            // Add a trailing icon
            onTap: () {
              navigateToDetailPage(listWords[index]['name']!,
                  listWords[index]['mean']!, listWords[index]['indonesia']!);
            },
          ),
        );
      },
    ));
  }
}
