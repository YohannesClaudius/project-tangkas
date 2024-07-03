import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String topic;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImgUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.topic,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImgUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: '1',
      topic: 'breaking',
      title: 'Siapa Saja yang Berkuasa di Wilayah Palestina Sekarang?',
      subtitle:
          'Seorang perempuan Palestina membantu seorang anak bermain di reruntuhan bangunan yang hancur akibat pengeboman Israel sebelumnya di Kota Gaza pada 8 April 2024, di tengah konflik yang sedang berlangsung antara Israel dan kelompok militan Hamas Palestina. Jelang Idul Fitri 2024, warga Gaza masih kekurangan bantuan.',
      body:
          """
          \nSEBANYAK 5,5 juta warga Palestina, baik yang ada di Tepi Barat dan Jalur Gaza saat ini, berada di bawah kendali otoritas campuran antara Palestina, Hamas, dan Israel. Secara resmi, warga Palestina sebenarnya memiliki dua perwakilan yaitu Organisasi Pembebasan Palestina (PLO) untuk di forum internasional dan Otoritas Palestina yang memerintah sebagian besar Tepi Barat. Israel juga memiliki kontrol signifikan atas wilayah Palestina, baik secara de facto atau resmi. Sementara Jalur Gaza berada di bawah kontrol kelompok Hamas.
          \nBagaimana Pembagian Kekuasaan di Wilayah Palestina?
          \nDi tahun 1990-an, PLO dan Israel menandatangani Perjanjian Oslo dan Perjanjian Gaza-Jericho, sebuah kesepakatan yang membagi wilayah kendali di Jalur Gaza dan Tepi Barat (kecuali Yerusalem Timur) antara Israel dan Otoritas Palestina yang saat itu baru dibentuk dengan harapan Tepi Barat dan Jalur Gaza pada akhirnya akan menjadi satu kesatuan negara Palestina.
          \nKarena konflik Israel-Palestina yang berkepanjangan, kedua wilayah tersebut kini justru terbagi menjadi tiga wilayah sebagai berikut:
          \nArea A: Area ini mencakup sebagian besar Jalur Gaza dan sekitar 17 persen wilayah Tepi Barat. Area A merupakan wilayah yang paling padat penduduk dan paling mengalami urbanisasi. Di bawah Perjanjian Oslo, Area A seharusnya dikendalikan penuh oleh Palestina, termasuk urusan sipil serta keamanannya. Namun, sejak Oktober 2023, Israel telah memasuki kawasan ini dengan tujuan melenyapkan Hamas. Demikianlah saat ini, Area A juga berada di bawah kontrol Israel.
          \nArea B: Area B mencakup hampir seperempat Tepi Barat yang sebagian besar terdiri dari daerah pedesaan. Di Area B, Israel dan Palestina bekerja sama dalam hal keamanan. Namun untuk urusan sipil, Otoritas Palestina yang bertanggung jawab penuh. Di Area B, Israel memiliki hak untuk mengontrol pergerakan barang dan manusia.
          \nArea C: Sisa lahan dari wilayah Palestina disebut sebagai Area C. Area ini memiliki sebagian besar sumber daya alam di Tepi Barat dan berada di bawah kendali penuh Israel. Area C didominasi oleh pemukim Israel yang berjumlah sekitar 700.000 orang. Kebanyakan dari mereka tinggal di dekat perbatasan dengan Israel, namun hukum internasional menyatakan pemukiman mereka tersebut ilegal.
          \nHamas di Jalur Gaza
          \nHamas merupakan sebuah kelompok bersenjata dan partai politik yang didirikan pada masa pemberontakan Palestina pertama terhadap Israel di tahun 1987-1993. Hamas telah menguasai Jalur Gaza sejak tahun 2006.   Hamas telah secara vokal menentang keberadaan Israel. Selama bertahun-tahun Hamas  melakukan perlawanan terhadap Israel. Paling akhir pada 7 Oktober 2023, ketika mereka secara tiba-tiba melancarkan serangan yang menewaskan lebih dari 1.200 orang yang kemudian memicu perang yang berlangsung hingga saat ini.
          \nHamas sempat bergabung dengan Otoritas Palestina dan menjadi pemimpin otoritas itu setelah memenangkan pemilihan umum di Tepi Barat dan Jalur Gaza. Namun, Hamas akhirnya berpisah dari Otoritas Palestina setelah saingannya, Fatah, yang telah lebih dulu mendominasi Otoritas Palestina menolak untuk mengakui kemenangan Hamas dalam pemilu. Keduanya akhirnya berperang dan Fatah berhasil mengusir Hamas dari Tepi Barat. Di sisi lain, Hamas berhasil menguasai Jalur Gaza.
          \nSetelah berhasil menduduki Jalur Gaza, Hamas kemudian mulai mendirikan institusi politik, militer dan hukum yang sepenuhnya terpisah dari instansi di Tepi Barat. Di Jalur Gaza, Hamas menetapkan Kota Gaza sebagai pusat pemerintahannya. Meski begitu, banyak petinggi Hamas yang memilih untuk tinggal di luar negeri, termasuk kepala politik Hamas sendiri, Ismail Haniyeh.
          \nPLO dan PA
          \nOrganisasi Pembebasan Palestina (PLO) merupakan sebuah organisasi politik yang mengklaim dirinya sebagai perwakilan warga Palestina di dunia yang telah menempati wilayah Palestina sebelum berdirinya Israel tahun 1948. PLO didirikan tahun 1964 ketika pada pertemuan Arab sebagai pusat kepemimpinan dari berbagai kelompok Palestina yang sebelumnya beroperasi sebagai gerakan perlawanan bawah tanah.
          \nOtoritas Palestina (PA) merupakan badan pemerintahan daerah otonom Palestina di Tepi Barat dan Jalur Gaza yang didirikan tahun 1994.
          \nBerdirinya Otoritas Palestina berangkat dari sebuah pertemuan rahasia antara PLO dan Israel di Norwegia  tahun 1993 yang berujung pada penandatanganan Perjanjian Oslo, sebuah perjanjian yang mengharuskan Tepi Barat dan Jalur Gaza yang telah dikuasai Israel sejak tahun 1967 untuk secara bertahap diserahkan kepada Palestina. Melalui perjanjian tersebut, kedua belah pihak sepakat agar Otoritas Palestina mengambil kendali atas sebagian besar wilayah Palestina yang diduduki Israel. Namun, beberapa kelompok Islam militan seperti Hamas menentang perjanjian perdamaian tersebut.
          \nPLO dan Otoritas Palestina saat ini dipimpin oleh Presiden Palestina, Mahmoud Abbas, yang memimpin Partai Fatah yang memiliki perwakilan terbesar di Otoritas Palestina.
""",
      author: 'Paramita Amara',
      authorImgUrl: 'images/article_images/Article_Image1.jpg',
      category: 'Internasional',
      imageUrl:
          'images/article_images/Article_Image1.jpg',
      views: 13231,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Article(
      id: '2',
      topic: 'breaking',
      title: 'Aktivitas Erupsi Gunung Ruang Menurun, Peringatan Tsunami Dicabut',
      subtitle:'ERUPSI: Gunung Ruang di Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro), Sulawesi Utara, kembali meletus, Jumat (19/4/2024) pukul 17.06 Wita. Tinggi kolom abu 400 meter.',
      body: '''
Aktivitas erupsi Gunung Ruang di Kabupaten Sitaro, Sulawesi Utara, menunjukkan penurunan. Pusat Vulkanologi Mitigasi Bencana Geologi (PVMBG) mencabut peringatan risiko tsunami. Meski begitu, level Gunung Ruang masih tetap di level IV Awas.
\n"Potensi erupsi besar menurun sehingga kecil kemungkinan potensi tsunami," kata Kepala PVMBG Badan Geologi, Hendra Gunawan dalam keterangan tertulisnya, Minggu (21/4/2024).
\nHendra menjelaskan, dari hasil pemantauan visual pada tanggal 21 April 2024 sekitar 12.00 Wita, asap kawah utama berwarna putih teramati dengan intensitas tebal tinggi maksimal 200 meter dari puncak dan tidak teramati adanya erupsi.
\n"Hal ini menunjukkan adanya penurunan aktivitas erupsi di Gunung Ruang," ucapnya. Baca juga: Update Dampak Erupsi Gunung Ruang: Ribuan Warga Mengungsi di Sejumlah Titik Hasil pemantauan kegempaan tanggal 21 April 2024 periode 00.00-12.00 Wita tercatat 25 kali gempa vulkanik dangkal dan 19 kali gempa vulkanik dalam.
\n"Potensi bahaya yang mungkin terjadi adalah erupsi eksplosif menghasilkan lontaran batu (pijar) ke segala arah yang bisa diikuti dengan awan panas maupun erupsi efusif (aliran lava)," ucapnya.
\nSaat ini, Tim PVMBG-Badan Geologi-KESDM telah memasang satu stasiun pemantauan berupa stasiun seismik di Pos PGA Ruang yang berjarak kurang lebih 5 kilometer dari puncak untuk memantau aktivitas Gunung Ruang.
\n"Berdasarkan hasil pemantauan visual dan instrumental, aktivitas vulkanik Gunung Ruang masih tinggi, oleh karena itu tingkat aktivitas Gunung Ruang masih tetap di level IV (Awas)," ucapnya.
\nBadan Geologi merekomendasikan agar masyarakat tetap waspada dengan tidak memasuki radius 6 kilometer dari pusat kawah aktif. Masyarakat yang bermukim di Pulau Tagulandang juga diminta waspadai potensi batuan pijar dan luruhan awan panas (surge) dan tetap menggunakan masker untuk menghindari paparan abu vulkanik yang dapat mengganggu sistem pernapasan.
''',
      author: 'Andi Hartik',
      authorImgUrl: 'images/article_images/Article_Image2.jpg',
      category: 'Regional',
      imageUrl:
          'images/article_images/Article_Image2.jpg',
      views: 2301,
      createdAt: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Article(
      id: '3',
      topic: 'breaking',
      title: 'Keuntungan Pasar Aset Kripto di Asia Tenggara Diprediksi Capai Rp 27,5 Triliun',
      subtitle:
          'JAKARTA, KOMPAS.com - Adopsi kripto di kawasan Asia Tenggara tumbuh pesat selama beberapa tahun terakhir. Hal ini terefleksikan dari tingkat keuntungan pasar aset kripto di kawasan Asia Tenggara yang terus tumbuh.',
      body:
          """
          \nBerdasarkan data riset Statista, keuntungan pasar aset kripto di Asia Tenggara diproyeksi mencapai 1,79 miliar dollar AS atau setara sekitar Rp 27,5 triliun.
          \nRiset yang sama menyebutkan, keuntungan pasar kripto diproyeksi tumbuh secara rata-rata mencapai 8,75 persen hingga 2028, dan nilainya mmencapai 2,49 miliar dollar AS atau mencapai Rp 40,34 miliar.
          \nDengan melihat data tersebut, CEO Indodax Oscar Darmawan mengatakan, kawasan Asia Tenggara berpotensi menjadi "pemain kunci" pasar kripto dunia.
          \nPasalnya, selain nilai keuntungan, tingkat penetrasi kripto juga diproyeksi meningkat dan mencapai 12,79 persen pada 2024 dan mencapai 14,83 persen pada 2028.
          \n"Kawasan Asia Tenggara calon key leader industri kripto dunia," kata dia, dalam keterangannya, Rabu (24/4/2024).
          \nLebih lanjut Oscar bilang, Indonesia memiliki potensi besar untuk memanfaatkan momentum tersebut. Sebab, data Chainalysis menyebutkan, Indonesia saat ini sudah menduduki peringkat kelima negara pertumbuhan kripto terbesar, dengan tingkat keuntungan mencapai 1,06 miliar dollar AS. 
          \n"Peringkat ini menunjukkan bahwa minat dan adopsi terhadap aset kripto terus berkembang di Indonesia," ujarnya.
          \nOscar menyebutkan, Indonesia memiliki peluang besar dan pondasi yang kuat untuk mengembangkan industri kripto. Salah satu potensi besar yang dimaksud ialah momentum bonus demografi yang akan dialami Indonesia.
          \n"Menurut data 80 persen mayoritas penduduk Indonesia masih belum atau kurang terjangkau oleh layanan perbankan. Hal ini membuka kesempatan luas bagi para pemain industri kripto untuk mengedukasi mereka sebagai upaya untuk meningkatkan adopsi kripto di Indonesia," tuturnya.
          \nNamun untuk memaksimalkan peluang tersebut, Oscar menekankan pentingnya dukungan dari semua pihak terkait. Kolaborasi antara pihak pemerintah dan swasta menjadi krusial untuk memaksimalkan peluang kripto nasional. 
          \n"Kita dapat menciptakan ekosistem yang ramah terhadap inovasi dan teknologi baru, yang pada akhirnya akan memberikan manfaat besar bagi masyarakat Indonesia serta ekonomi secara keseluruhan," ucapnya.
""",
      author: 'Rully Ramli',
      authorImgUrl: 'images/article_images/Article_Image3.jpg',
      category: 'Money',
      imageUrl:
          'images/article_images/Article_Image3.jpg',
      views: 5005,
      createdAt: DateTime.now().subtract(const Duration(days: 3, hours: 3)),
    ),
    Article(
      id: '4',
      topic: 'highlight',
      title: '8 Tips Kemah, dari Barang Wajib DIbawa hingga Cegah Badan Capek',
      subtitle:'Pernahkah kamu merasa bosan dengan liburan yang itu-itu saja? Jika ya, mungkin saatnya kamu untuk mencoba sesuatu yang berbeda, seperti berkemah di alam terbuka!',
      body: '''
Berkemah di alam terbuka, di gunung, bukit, atau pantai, menawarkan pengalaman liburan yang jauh berbeda. Kamu bisa menikmati keindahan alam yang masih alami, merasakan udara segar, dan jauh dari hiruk pikuk perkotaan.
\nBagi kamu yang baru pertama kali ingin mencoba berkemah, jangan khawatir! Ada beberapa tips untuk membantumu dalam mendapatkan pengalaman berkemah terasa nyaman dan menyenangkan.
\n1. Cek kualitas matras
\nSalah satu barang bawaan yang wajib dibawa saat berkemah adalah matras. Gunakan dan cek kualitas matras untuk kemah. Presiden British Chiropractors Association (BCA) Catherine Quinn dalam laman Express menyarankan untuk menggunakan matras berkualitas untuk melindungi punggung dari permukaan yang keras.
\n2. Pasang tenda dan alas tidur
\nTidur di permukaan yang keras memang berpotensi menyebabkan masalah pada punggung. Oleh karena itu, saat berkemah, penting untuk memastikan tenda, alas tidur, dan perlengkapan lainnya dipasang dengan benar untuk menunjang kenyamanan dan kehangatan Anda.
\n3. Bersihkan area camping dari benda keras
\nSebelum mendirikan tenda, luangkan waktu untuk membersihkan area camping dari batu besar, tongkat, atau benda keras lainnya yang dapat mengganggu kenyamanan tidur Anda. Pastikan permukaan tanah rata dan bebas dari benda-benda yang dapat menonjol dan menusuk punggung.
\n4. Posisi Tidur yang Tepat
\nBagi para pemula yang mungkin belum terbiasa tidur di tenda, penting untuk memperhatikan posisi tidur yang tepat agar terhindar dari rasa sakit di leher dan punggung. Salah satunya, posisi tidur telentang dengan bantal. Posisi ini ideal untuk menjaga kesejajaran tulang belakang. Gunakan bantal untuk menopang leher dan kepala Anda.
\n5. Bagi beban yang akan dibawa
\nMemasukkan perlengkapan ke dalam beberapa tas yang lebih ringan dapat membantu memisahkan beban secara merata dan mengurangi ketegangan pada punggung. Jika berkemah bersama kelompok, bagilah barang bawaan untuk menghindari kelebihan beban pada setiap orang.
\n6. Bawa lotion antinyamuk
\nBawa lotion antinyamuk saat berkemah. Perlu diingat bahwa alam juga merupakan habitat bagi berbagai jenis serangga. Meskipun beberapa serangga mungkin terlihat tidak berbahaya, gigitan mereka dapat menyebabkan ketidaknyamanan dan bahkan membahayakan kesehatan.
\n7. Tisu dan barang higienis lainnya
\nKebersihan merupakan kunci utama untuk menjaga kesehatan, terutama saat berkemah di alam bebas. Tanpa akses mudah ke sungai atau pancuran, tisu dan hand sanitizer menjadi barang penting untuk menjaga diri agar tetap bersih dan terhindar dari kuman.
\n8. Kotak p3k
\nKeamanan dan kebersihan merupakan dua hal penting yang tidak boleh diabaikan saat berkemah. Pastikan Anda membawa kotak P3K dan perlengkapan mandi untuk menjaga diri agar tetap aman dan nyaman selama perjalanan.
''',
      author: 'Alma Erin',
      authorImgUrl: 'images/article_images/Article_Image4.jpg',
      category: 'Travel',
      imageUrl:
          'images/article_images/Article_Image4.jpg',
      views: 7909,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Article(
      id: '5',
      topic: 'highlight',
      title: 'Tips Pilih Kursi dan Cara Hindari Mual di Pesawat',
      subtitle:
          'Ketika Anda merencanakan perjalanan udara, memilih kursi yang tepat dapat membuat perjalanan Anda menjadi lebih nyaman, terutama jika Anda rentan terhadap mabuk perjalanan.',
      body:
          """
          \nMeskipun kursi kelas satu mungkin terlihat menarik, namun bagi yang mudah mual, kursi ekonomi bisa menjadi pilihan yang lebih bijaksana. Ini merupakan beberapa tips yang bisa Anda ikuti dalam memilih kursi pesawat apabila Anda gampang mual, mengutip dari Thesun dan CNTraveler, Senin (23/04/2024).
          \n1. Hindari Kursi di Bagian Belakang Pesawat
          \nMenurut pakar penerbangan, sebaiknya hindari memilih kursi di bagian belakang pesawat jika Anda mudah merasa mual. Hal ini dikarenakan turbulensi cenderung lebih sering terjadi di bagian tersebut. Dengan menghindari tempat duduk di bagian belakang, pengalaman tidak menyenangkan akibat getaran yang lebih kuat dapat dikurangi.
          \n2. Pilih Tempat Duduk di Tengah Kabin
          \nUntuk perjalanan yang lebih nyaman, sebaiknya pilih tempat duduk di tengah kabin, dekat dengan sayap pesawat. 
          \nSelain itu, memilih tempat duduk di lorong juga disarankan guna mencegah rasa claustrophobia (fobia tempat sempit) dan memudahkan mobilitas di dalam pesawat.  Penggunaan ventilasi udara di atas tempat duduk, ternyata juga dapat menurunkan risiko mabuk udara.
          \n3. Gunakan Sistem Hiburan sebagai Distraksi
          \nBagi penumpang yang mengalami mual dan claustrophobia, disarankan untuk menggunakan sistem hiburan dalam pesawat sebagai distraksi. Jika menonton TV memperparah rasa mual, tersedia berbagai macam acara audio yang lebih cocok untuk didengarkan.
          \n4. Tips dari ahli kesehatan
          \nDanielle Qing, spesialis penyakit dalam di Mount Sinai, memberikan tips berguna bagi penumpang yang merasa mual di pesawat. Ia menyarankan agar penumpang tetap duduk untuk menjaga pusat gravitasi tetap rendah, yang dapat membantu mengurangi rasa pusing. Menghindari melihat layar dan mencoba untuk tidur juga disarankan. Salah satu caranya adalah mengonsumsi obat anti-mabuk yang menyebabkan kantuk.
          \n5. Makanan hambar dan Diet BRAT
          \nQing juga menyarankan untuk makan sedikit makanan hambar guna mengurangi rasa mual. Dalam beberapa kasus, makanan dapat membantu meredakan mual. Jika mengalami muntah atau diare, diet BRAT (pisang, nasi, saus apel, roti panggang) disarankan untuk membantu meredakan gejala tersebut.
          
""",
      author: 'Zeta Zahid',
      authorImgUrl: 'images/article_images/Article_Image5.jpg',
      category: 'Travel',
      imageUrl:
          'images/article_images/Article_Image5.jpg',
      views: 3241,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Article(
      id: '6',
      topic: 'breaking',
      title: 'Thailand Alami Gelombang Panas, Akankah Terjadi di Indonesia?',
      subtitle:'Pemerintah Kota Bangkok, Thailand mengeluarkan peringatan baru cuaca panas ekstrem pada Kamis (25/4/2024) dengan indeks panas diperkirakan dapat mencapai suhu maksimal 52 derajat Celsius. Pada Rabu (24/4/2024), suhu di Bangkok mencapai 40,1 derajat Celsius.',
      body: '''
Kementerian Kesehatan Thailand mengatakan bahwa 30 orang meninggal akibat sengatan panas (heat stroke) antara 1 Januari-17 April 2024, dikutip dari Strait Times, Kamis (25/4/2024). Rekor ini mendekati tahun 2023, yaitu sebanyak 37 orang meninggal dunia akibat sengatan suhu panas.
\nAkibat gelombang panas ekstrem, Wakil Direktur Jenderal Departemen Pengendalian Penyakit Thailand, Direk Khampaen mendesak orang lanjut usia dan yang memiliki kondisi medis penyerta, termasuk obesitas, untuk tetap berada di dalam rumah dan minum air secara teratur. April merupakan bulan terpanas sepanjang tahun di Thailand. Dan kondisi ekstrem pada 2024 diperburuk oleh pola cuaca El Nino. Lantas, apakah gelombang panas juga akan menerpa Indonesia?
\nPenjelasan BMKG
\nDeputi Bidang Meteorologi, Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) Guswanto buka suara terkait prakiraan suhu panas di Indonesia. Menurut Guswanto, gelombang panas ekstrem seperti di Thailand kemungkinannya sangat kecil terjadi di Indonesia. Hal ini terjadi karena Indonesia terletak di khatulistiwa dan memiliki kondisi geografis yang dikelilingi oleh lautan yang luas dengan dua samudra.
\n“Gelombang panas seperti di Thailand umumnya akan terjadi di daerah lintang menengah sampai sedang pada daratan yang cukup besar, yang artinya pada wilayah kontinental atau sub-kontinental,” ungkap Guswanto saat dihubungi Kompas.com, Jumat (24/4/2024). Guswanto mengungkapkan bahwa Indonesia tidak pernah terjadi gelombang panas. Selain itu, gelombang panas di Thailand juga tidak akan berdampak pada Indonesia.
\nContohnya, pada April 2023 ketika gelombang panas menyerang Thailand, Indonesia juga tidak mengalaminya. Terkait dengan fenomena El Nino yang menyebabkan cuaca panas, Guswanto menjelaskan bahwa sudah tidak ada El Nino di Indonesia. “Pada Jumat (26/4/2024), indeks cuaca di Indonesia sudah mencapai 0,79 atau berada dalam kondisi normal,” katanya.
\nPerbedaan gelombang panas dan cuaca panas
\nLebih lanjut, Guswanto mengatakan bahwa gelombang panas dan suhu panas merupakan fenomena yang berbeda. Guswanto menjelaskan bahwa gelombang panas disebabkan oleh terbentuknya pusat tekanan tinggi di atmosfer yang membuat udara panas terdiam di suatu wilayah dalam waktu yang cukup lama. Gelombang panas yang terjadi umumnya berlangsung selama beberapa hari atau beberapa minggu. “Ini bisa menyebabkan udara panas akan turun dan memanaskan udara di permukaan,” jelas Guswanto.
\nSelain itu, suatu fenomena dapat dikatakan gelombang panas apabila suhunya lebih dari 5 derajat Celsius dari suhu rata-rata maksimum harian. Suatu kondisi juga dapat dikatakan gelombang panas saat terjadi selama minimal lima hari berturut-turut. “Sementara itu, suhu panas umumnya terjadi tidak di atas suhu rata-rata maksimum harian meskipun lebih panas daripada biasanya,” tutur Guswanto.
''',
      author: 'Inten Esti',
      authorImgUrl: 'images/article_images/Article_Image6.jpg',
      category: 'Tren',
      imageUrl:
          'images/article_images/Article_Image6.jpg',
      views: 4310,
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Article(
      id: '7',
      topic: 'highlight',
      title: 'Gangguan Tersembunyi Penyebab Gampang Ngantuk di Siang Hari',
      subtitle:
          'Rasa kantuk yang berlebihan di siang hari adalah kondisi yang wajar saat kita sedang kurang tidur. Tetapi ada juga orang yang merasa sudah tidur 7 jam setiap malam, tapi sering ngantuk saat bekerja.',
      body:
          """
          \nDikutip dari sleepfoundation.org, meskipun bukan suatu kelainan, rasa kantuk yang terus-menerus bisa jadi tanda adanya gangguan tidur, termasuk insomnia, apnea tidur obstruktif (OSA), atau pun hipersomnia. Perasaan ngantuk mungkin lebih kuat saat kita tidak banyak bergerak, seperti saat mengemudi atau duduk di tempat kerja.
          \nTidur berperan penting dalam mengumpulkan memori, memulihkan kekebalan tubuh, serta proses vital lainnya. Karena itu ketika kita kurang tidur bisa memunculkan gejala yang tidak langsung terkait dengan tidur. Misalnya produktivitas menurun, sulit mengontrol emosi, hingga menurunnya kualitas hidup.
          \nKurang tidur dalam jangka panjang juga terkait dengan risiko besar mengalami penyakit kronis seperti diabetes, obesitas, dan penyakit jantung. Banyak orang yang mengalami kantuk berlebihan di siang hari seringkali tak punya masalah tidur atau merasa sudah tidur cukup. Dalam kasus ini, kantuk mungkin merupakan tanda dari kondisi kesehatan atau gangguan tidur yang mendasarinya.
          \nGangguan tidur dan bangun di malam hari
          \nGangguan tidur seperti sleep apnea, sindrom kaki tidak mau diam, serta gangguan gerakan anggota badan periodik, bisa jadi penyebab tidur selalu terputus. Kondisi ini dapat menyebabkan terbangun mikro yang mengganggu siklus tidur, meskipun inidvidu yang mengalaminya mungkin tidak menyadari bahwa mereka menderita gangguan ini.
          \nSelain itu, gangguan mental juga sering ditandai dengan rasa kantuk berlebihan di siang hari. Misalnya saja depresi, kecemasan, hingga skizofrenia. Penyakit kronis yang juga menyebabkan kita gampang ngantuk antara lain hipotiorid, lupus, penyakit parkinson, hingga kanker.
""",
      author: 'Lusia Kus',
      authorImgUrl: 'images/article_images/Article_Image7.jpg',
      category: 'Health',
      imageUrl:
          'images/article_images/Article_Image7.jpg',
      views: 5005,
      createdAt: DateTime.now().subtract(const Duration(days: 4)),
    ),
    Article(
      id: '8',
      topic: 'highlight',
      title: 'Kentut Sangat Bau Apa Penyebabnya? Ini Penjelasannya.',
      subtitle:'Apakah kentut Anda belakangan memiliki bau yang sangat tidak sedap?',
      body: '''
Menurut ahli, bau kentut bisa dipengaruhi oleh makanan yang Anda makan, kondisi pencernaan, dan efek penggunaan obat-obatan tertentu. Mengutip Health, jika bau kentut Anda seperti telur busuk, kemungkinan besar karena kandungan hidrogen sulfida.
\nHidrogen sulfida dihasilkan oleh bakteri yang memecah makanan di sistem pencernaan Anda. Ketika bercampur dengan gas lain yang dihasilkan tubuh Anda, hasilnya adalah bau seperti telur busuk atau belerang, yang tidak sedap. Terkadang, kentut sangat bau terbentuk ketika terlalu banyak bakteri yang dengan cepat memecah makanan yang tidak tercerna di usus besar Anda. Di lain waktu, kentut yang berbau berlebihan mungkin menandakan suatu kondisi kesehatan. Berikut artikel ini akan mengulas lebih lanjut penyebab kentut Anda sangat bau.
\nPenyebab kentut sangat bau
\nDisari dari Health dan Healthline, macam penyebab kentut Anda sangat bau meliputi berikut:
\n1. Makanan berserat tinggi
\nMakanan berserat tinggi membutuhkan waktu lebih lama untuk terurai dalam sistem pencernaan Anda, sehingga difermentasi bakteri lebih lama. Makanan berserat tinggi terkadang juga berbau, sehingga kentut Anda juga akan bau. Contoh makanan ini seperti brokoli, pakcoy, asparagus, dan kubis. Itu karena kandungan sulfur dalam makanan kaya serat ini. Banyak makan makanan berserat tinggi menghasilkan lebih banyak gas, yang dapat meningkatkan bau kentut.
\n2. Intoleransi makanan
\nMakanan yang Anda makan dapat mempengaruhi bakteri yang hidup di usus besar Anda, yang kemudian memengaruhi bau kentut Anda. Misalnya, beberapa orang tidak dapat sepenuhnya mencerna gula seperti fruktosa dan laktosa. Fruktosa adalah gula dalam buah-buahan dan madu. Laktosa adalah gula dalam produk susu seperti keju, es krim, susu, dan yogurt.
\nJika Anda intoleran terhadap fruktosa atau laktosa, alhasil gula tersebut melewati usus kecil tanpa diserap. Bakteri usus Anda kemudian akan memecah gula di usus besar Anda, menghasilkan gas berlebih yang sangat bau.
\n3. Pengobatan
\nBeberapa obat dapat memengaruhi usus Anda dan meningkatkan produksi gas dan bau kentut. Alasan mengapa obat tersebut menyebabkan kentut sangat bau berbeda-beda tergantung obatnya. Seberapa sering obat membuat Anda mengeluarkan gas berbau bervariasi dari orang ke orang. Misalnya, antibiotik membunuh patogen berbahaya di dalam tubuh, tetapi obat ini juga dapat menghancurkan beberapa bakteri baik di perut. Tanpa bakteri baik itu, kentut Anda bisa lebih bau.
\n4. Sembelit
\nSembelit membuat tinja menumpuk di usus besar Anda. Buang air besar yang tidak teratur dapat menyebabkan bakteri berkembang lebih banyak. Hasil akhirnya adalah gas yang menumpuk dan dikeluarkan menjadi kentut yang bau busuk. Perbanyak minum air putih dan olah raga secara rutin dapat mengatasi dan mencegah sembelit.
\n5. Penumpukan bakteri dan infeksi saluran pencernaan
\nTubuh mengekstrak nutrisi dan mengirimkannya ke aliran darah saat Anda mencerna makanan. Proses pencernaan yang terganggu dapat menyebabkan pertumbuhan bakteri berlebihan di usus. Beberapa bakteri dapat menyebabkan infeksi pada usus dan saluran pencernaan. Hal ini dapat menyebabkan volume gas lebih tinggi dari biasanya dan bau kentut lebih menyengat. Baca juga: Makanan Penyebab Ken
\n6. Kanker usus besar
\nPenyebab kentut sangat bau yang lebih serius adalah kanker usus besar. Polip atau tumor yang terbentuk di saluran pencernaan dapat menyebabkan penyumbatan sebagian usus. Ini mengakibatkan penumpukan gas, perut kembung, dan pada gilirannya akan dikeluarkan dalam bentuk kentut yang sangat bau. Jika Anda mulai memiliki bau kentut yang tidak normal dan rasa tidak nyaman, disertai gejala kanker usus lainnya, segera periksa ke dokter.
\n7. Bedah bariatrik
\nJika Anda telah menjalani operasi bariatrik, Anda mungkin mengalami komplikasi yang mencegah perut mengeluarkan limbah dengan benar ke usus kecil. Ini disebut dumping syndrome dan bisa menyebabkan kentut lebih bau. Menurut Single Care, rata-rata orang menghasilkan hingga 1,5 liter gas setiap hari yang dikelurkan dalam bentuk kentut. Gas tersebut sebagian besar terdiri dari gas tidak berbau akibat hidrogen, karbon dioksida, dan metana.
\nKurang dari satu persen volume gas usus terdiri dari gas yang berhubungan dengan bau tidak sedap yang dihasilkan dari gas yang mengandung sulfur seperti hidrogen sulfida. Sebagian besar penyebab kentut sangat bau tidaklah berbahaya. Dalam kasus yang jarang terjadi, hal ini dapat menjadi indikator adanya infeksi pada saluran pencernaan, masalah pencernaan, atau kondisi medis seperti kanker usus besar.
''',
      author: 'Shinta Pradita',
      authorImgUrl: 'images/article_images/Article_Image8.jpg',
      category: 'Health',
      imageUrl:
          'images/article_images/Article_Image8.jpg',
      views: 3121,
      createdAt: DateTime.now().subtract(const Duration(days: 4)),
    ),
    Article(
      id: '9',
      topic: 'highlight',
      title: 'Kurang Tidur Tingkatkan  Risiko Diabetes Tipe 2',
      subtitle: 'Penelitian terbaru menemukan bahwa orang yang tidur kurang dari enam jam semalam berisiko lebih tinggi terkena penyakit diabetes tipe 2.',
      body:
      '''
Pada penderita diabetes tipe 2, tubuh menjadi resisten terhadap efek hormon yang disebut insulin, dan perlahan-lahan kehilangan kapasitas untuk memproduksi cukup insulin di pankreas.\n\nInsulin penting karena mengatur glukosa (gula) dalam darah yang berasal dari makanan yang dikonsumsi dengan membantu memindahkannya ke sel-sel di seluruh tubuh. Para peneliti mengaku tidak mengetahui alasan pasti mengapa orang yang kurang tidur berisiko lebih tinggi terkena diabetes tipe 2. Namun, penelitian sebelumnya pun menunjukkan, orang yang kurang tidur sering kali mengalami peningkatan penanda peradangan dan asam lemak bebas dalam darahnya, yang mengganggu sensitivitas insulin, sehingga menyebabkan resistensi insulin. \n\nDari temuan tersebut, berarti tubuh kesulitan menggunakan insulin dengan benar untuk mengatur kadar glukosa darah, sehingga meningkatkan risiko diabetes tipe 2.\n\nSelain itu, orang yang kurang tidur, serta orang yang pola tidurnya tidak teratur (misalnya pekerja shift), mengalami gangguan pada ritme alami tubuhnya, yang disebut dengan ritme sirkadian.\n\nHal ini dapat mengganggu pelepasan hormon seperti kortisol, glukagon, dan hormon pertumbuhan. Hormon-hormon ini dilepaskan sepanjang hari untuk memenuhi perubahan kebutuhan energi tubuh, dan biasanya menjaga kadar glukosa darah tetap seimbang. Jika terganggu, hal ini dapat mengurangi kemampuan tubuh untuk menangani glukosa seiring berjalannya waktu. \n\nFaktor-faktor ini, dan faktor-faktor lainnya, dapat berkontribusi pada peningkatan risiko diabetes tipe 2 pada orang yang tidur kurang dari enam jam. Meskipun penelitian ini utamanya berfokus pada orang yang tidur delapan jam atau kurang, ada kemungkinan orang yang tidur lebih lama juga menghadapi peningkatan risiko diabetes tipe 2. \n\nPenelitian sebelumnya telah menunjukkan korelasi berbentuk "U" antara durasi tidur dengan risiko diabetes tipe 2. Sebuah tinjauan terhadap beberapa penelitian menemukan bahwa tidur antara tujuh hingga delapan jam setiap hari dikaitkan dengan risiko terendah. Ketika orang tidur kurang dari tujuh jam atau lebih dari delapan jam, risikonya mulai meningkat. \n\nAlasan tidur lebih lama dikaitkan dengan peningkatan risiko diabetes tipe 2 mungkin terkait dengan penambahan berat badan, yang juga berkorelasi dengan tidur lebih lama. Begitu pula dengan orang yang kurang tidur, kemungkinan besar mengalami kelebihan berat badan atau obesitas.
''',
      author: 'Lulu Lukyani',
      authorImgUrl: 'images/article_images/Article_Image9.jpg',
      category: 'Science',
      imageUrl: 'images/article_images/Article_Image9.jpg',
      views: 4340,
      createdAt: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Article(
      id: '10',
      topic: 'highlight',
      title: 'Kenapa Kopi dan Teh Tidak Boleh Diminum Bersamaan? Ini Penjelasannya',
      subtitle:'Minum kopi atau teh bisa bermanfaat dalam meredakan ngantuk dan meningkatkan ketajaman. Meski demikian, keduanya ternyata tidak boleh diminum bersamaan.',
      body: '''
Minum kopi dan teh secara bersamaan bisa menyebabkan gangguan tidur dan masalah pencernaan yang justru mengganggu aktivitas seharian Anda. Simak penjelasan berikut untuk mengetahui lebih lanjut alasan kenapa kopi dan teh tidak boleh diminum bersamaan.
\nKenapa kopi dan teh tidak boleh diminum bersamaan?
\nBagi sebagian orang, minum kopi dan teh secara bersamaan mungkin terasa nikmat. Terlebih, akhir-akhir ini muncul menu minuman yang memadukan keduanya. Namun, minum kopi dan teh secara bersamaan ternyata kurang dianjurkan karena kafein yang terkandung pada kedua minuman tersebut bisa memicu berbagai gangguan kesehatan.
\nBerikut beberapa efek minum kopi dan teh secara bersamaan yang perlu Anda pahami:
\nMengakibatkan susah tidur
\nKafein pada kopi dan teh dapat mengganggu produksi melatonin atau hormon yang memberi sinyal tidur pada otak. Itu sebabnya, kafein dapat meredakan ngantuk dan membuat seseorang lebihi fokus. Namun, tingginya kadar kafein akibat minum teh dan kopi bersamaan justru membuat Anda susah tidur atau tidak mendapatkan fase tidur yang berkualitas. Akibatnya, tubuh akan kelelahan pada keesokan harinya.
\nMenyebabkan gangguan pencernaan
\nGangguan pencernaan seperti mual, mulas, dan sakit perut juga termasuk efek minum kopi dan teh bersamaan. Efek ini akan semakin terasa jika teh dan kopi dikonsumsi dalam jumlah berlebihan dan saat belum makan.
\nMemicu kenaikan asam lambung
\nKandungan kafein pada teh dan kopi bisa memicu refluks atau kenaikan asam lambung. Kafein dapat mengendurkan sfingter atau otot pemisah kerongkongan dengan lambung. Saat sfingter kendur, cairan atau isi lambung dapat mengalir kembali ke kerongkongan. Kondisi tersebut mengakibatkan nyeri ulu hati, rasa pahit dan asam di mulut, kesulitan menelan, dan tenggorokan terasa perih.
\nMemicu dehidrasi
\nKafein pada kopi dan teh bisa memicu dehidrasi karena meningkatkan frekuensi urine. Itu sebabnya, sebagian orang akan sering buang air kecil setelah minum teh atau kopi. Mengonsumsi keduanya sekaligus bisa membuat seseorang semakin sering buang air kecil. Jika tidak diimbangi dengan minum air putih untuk mengganti cairan yang hilang, seseorang berisiko mengalami dehidrasi.
\nMelemahkan otot kandung kemih
\nKafein juga mengakibatkan otot kandung kemih melemah sehingga tidak mampu menahan terlalu banyak cairan urine di dalamnya. Hal ini menimbulkan Anda semakin sering buang air kecil sehingga menganggu pekerjaan atau aktivitas lain dan membuat susah tidur di malam hari. Itulah penjelasan kenapa kopi dan teh tidak boleh diminum bersamaan.
\nKetimbang minum kopi bersama teh, sebaiknya Anda selalu menyiapkan air putih setiap mengonsumsi minuman berkafein agar cairan tubuh tetap terjaga. Anda juga dapat berkonsultasi dengan dokter untuk mengetahui batas konsumsi teh atau kopi yang aman bagi kesehatan.
''',
      author: 'Ratna Rininta',
      authorImgUrl: 'images/article_images/Article_Image10.jpg',
      category: 'Health',
      imageUrl:
          'images/article_images/Article_Image10.jpg',
      views: 1111,
      createdAt: DateTime.now().subtract(const Duration(days: 6)),
    ),
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImgUrl,
        category,
        imageUrl,
        views,
        createdAt
      ];
}
