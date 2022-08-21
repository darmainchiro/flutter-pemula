class Plant {
  String name;
  String status;
  String description;
  String kingdom;
  String family;
  String imageAsset;
  List<String> imageUrls;
 
  Plant({
    required this.name,
    required this.status,
    required this.description,
    required this.kingdom,
    required this.family,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var plantList = [
  Plant(
    name: 'Red Cactus',
    status: 'Lembang',
    description:
        'Kaktus mini jenis Gymnocalycium ini memiliki bentuk yang menyerupai buah labu dengan tanduk sebagai tempat tumbuhnya bunga. Lucunya, bagian tanduk tempat bunga muncul ini tidak dipenuhi oleh duri. Bunganya bermekaran dengan indah di beberapa sisi dan warnanya sangat cerah.',
    kingdom: 'Plantae',
    family: 'Cactaceae',
    imageAsset: 'images/cactus_red-min.jpg',
    imageUrls: [
      'https://thumbs.dreamstime.com/b/red-small-cacti-cactuses-pot-red-cactus-small-cacti-cactuses-pot-114128042.jpg',
      'https://rare-gallery.com/thumbs/5375209-cactus-minimalist-wallpaper-cacti-red-rock-plant-pot-indoor-plant-potted-plant-decoration-colorful-pebbles-palnt-potted-decor-interior-decor-white-white-space-red-cactus-free-images.jpg',
      'https://media.istockphoto.com/photos/red-cactus-in-pot-gymnocalycium-mihanovichii-picture-id515711486'
    ],
  ),
  Plant(
    name: 'Pilea Peperomioides',
    status: 'Lembang',
    description:
        'Pilea Peperomioides adalah spesies tanaman berbunga di keluarga jelatang Urticaceae, asli provinsi Yunnan dan Sichuan di Cina selatan. Tanaman dengan daun berbentuk menyerupai koin tersebut dikenal dapat membawa keberuntungan dan kelimpahan bagi pemiliknya.',
    kingdom: 'Plantae',
    family: 'Urticaceae',
    imageAsset: 'images/teratai-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2018/12/02/21/41/pilea-3852265_1280.jpg',
      'https://asset.kompas.com/crops/T-U2t6vwsQsgAQSWMselExaa1ak=/128x512:1152x1195/750x500/data/photo/2022/03/25/623d71237f698.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Pilea_peperomia_and_pups.jpg/440px-Pilea_peperomia_and_pups.jpg',
    ],
  ),
  Plant(
    name: 'Echinofossulocactus',
    status: 'Kota Bandung',
    description:
        'Kaktus mini yang satu ini terlihat unik karena batangnya yang berwarna hijau tua dikelilingi dengan duri yang cukup besar. Kaktus mini Echinofossulocactus ini termasuk kaktus yang pertumbuhannya lambat. Ia membutuhkan waktu sekitar 3 tahun untuk mengeluarkan bunga. Bunganya sendiri ada yang berwarna putih, merah, dan kuning.',
    kingdom: 'Plantae',
    family: 'Cactaceae',
    imageAsset: 'images/cactus_blare-min.jpg',
    imageUrls: [
      'https://media.istockphoto.com/id/1400451235/id/foto/echinofossulocactus-phyllacanthus-atau-stenocactus-dan-dijuluki-kaktus-otak.webp?s=612x612&w=is&k=20&c=KAeUof8q9GMTwZvsBbLF_fLZKnBnAMmjCUyJnS0OS98=',
      'https://media.istockphoto.com/id/138162964/id/foto/kaktus-mekar.webp?s=612x612&w=is&k=20&c=6LEXvFUfeHvsXqT_cvMBsB3A5K45zBgPzYc-t3UqIgo=',
      'https://media.istockphoto.com/id/911294730/id/foto/kaktus-mekar-echinofossulocactus.webp?s=612x612&w=is&k=20&c=SeqaB5C4OLejVPeC6qkTL65UKMmuWNIJA-YRrdOXHAI=',
    ],
  ),
  Plant(
    name: 'Crassula ovata',
    status: 'Padalarang',
    description:
        'Crassula ovata, umumnya dikenal sebagai tanaman giok, tanaman beruntung, tanaman uang atau pohon uang, adalah tanaman sukulen dengan bunga kecil berwarna merah muda atau putih yang berasal dari provinsi KwaZulu-Natal dan Tanjung Timur di Afrika Selatan, dan Mozambik; itu umum sebagai tanaman hias di seluruh dunia.',
    kingdom: 'Plantae',
    family: 'Crassulaceae',
    imageAsset: 'images/crasula-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2013/07/26/16/25/money-tree-167793_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/09/15/12/27/jade-plant-1671461_1280.jpg',
      'https://cdn.pixabay.com/photo/2019/08/28/10/32/jade-plant-4436411_1280.jpg',
    ],
  ),
  Plant(
    name: 'Conifer',
    status: 'Kota Bandung',
    description:
        'Tetumbuhan runjung atau konifer (Pinophyta atau Coniferae) adalah sekelompok tumbuhan berbiji terbuka (Gymnospermae) yang memiliki runjung ("cone") sebagai organ pembawa biji. Kelompok ini sekarang ditempatkan sebagai divisio tersendiri setelah diketahui bahwa pemisahan Gymnospermae dan Angiospermae secara kladistik adalah polifiletik.',
    kingdom: 'Plantae',
    family: 'Cupressaceae',
    imageAsset: 'images/plant3-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2014/09/27/13/36/pine-463469_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/07/27/14/46/tree-7348069_1280.jpg',
      'https://cdn.pixabay.com/photo/2020/01/19/12/56/conifer-4777693_1280.jpg',
    ],
  ),
  Plant(
    name: 'Haworthia',
    status: 'Kota Bandung',
    description:
        'Haworthia adalah genus besar tanaman sukulen kecil yang endemik di Afrika Selatan . Seperti gaharu, mereka adalah anggota dari subfamili Asphodeloideae dan mereka umumnya menyerupai gaharu mini, kecuali pada bunganya, yang berbeda dalam penampilan. Mereka adalah tanaman kebun dan wadah yang populer.',
    kingdom: 'Plantae',
    family: 'Asphodelaceae',
    imageAsset: 'images/plant4-min.jpg',
    imageUrls: [
      'https://imgcdn.floweraura.com/succulent-haworthia-plant-9870767pl-A_0.jpg',
      'https://c8.alamy.com/comp/2HJ6BX1/haworthia-in-a-pot-on-a-yellow-background-a-house-plant-a-green-home-a-succulent-is-a-symbol-of-harmony-copy-space-care-of-indoor-plants-2HJ6BX1.jpg',
      'https://5.imimg.com/data5/PT/HM/CG/SELLER-10833874/haworthia-fasciata-succulent-live-plant-in-white-ripple-ceramic-pot-1000x1000.jpg',
    ],
  ),
  Plant(
    name: 'Peperomia',
    status: 'Lembang',
    description:
        'Peperomia (Peperomia vershaffeltii) adalah tanaman yang berasal dari Brazil. Tanaman ini tumbuh di dataran rendah, tempat teduh dan agak lembap. Dapat diperbanyak dengan cara stek daun atau biji. Digunakan sebagai tanaman hias dalam bentuk pot yang diletakkan di dalam rumah.',
    kingdom: 'Plantae',
    family: 'Piperaceae',
    imageAsset: 'images/peperomia-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2016/07/27/20/17/peperomia-1546175_1280.jpg',
      'https://cdn.pixabay.com/photo/2017/05/24/20/21/peperomia-flower-2341486_1280.jpg',
      'https://cdn.pixabay.com/photo/2014/07/21/19/32/peperomia-pellucida-398858_1280.jpg',
    ],
  ),
  Plant(
    name: 'Lavender Flower',
    status: 'Ciwidey',
    description:
        'Lavender atau lavendel atau Lavandula adalah genus tumbuhan berbunga dalam suku Lamiaceae yang tersusun atas 25-30 spesies. Asal tumbuhan ini adalah dari wilayah selatan Laut Tengah sampai Afrika tropis dan ke timur sampai India—Dunia Lama.',
    kingdom: 'Plantae',
    family: 'Lamiaceae',
    imageAsset: 'images/lavender-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2018/05/01/18/30/lilac-3366467_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/07/23/23/02/lavenders-1537694_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/06/23/15/10/ceramic-1475534_1280.jpg',
    ],
  ),
  Plant(
    name: 'Aloe Vera',
    status: 'Ciwidey',
    description:
        'Lidah buaya (Aloe vera) adalah spesies tumbuhan dengan daun berdaging tebal dari genus Aloe. Tumbuhan ini bersifat menahun, berasal dari Jazirah Arab, dan tanaman liarnya telah menyebar ke kawasan beriklim tropis, semi-tropis, dan kering di berbagai belahan dunia. Tanaman lidah buaya banyak dibudidayakan untuk pertanian, pengobatan, dan tanaman hias, dan dapat juga ditanam di dalam pot.',
    kingdom: 'Plantae',
    family: 'Xanthorrhoeaceae',
    imageAsset: 'images/plant7-min.jpg',
    imageUrls: [
      'https://cdn.pixabay.com/photo/2017/09/09/06/54/aloe-vera-plants-2731140_1280.jpg',
      'https://cdn.pixabay.com/photo/2020/05/11/10/44/aloe-vera-5157522_1280.jpg',
      'https://cdn.pixabay.com/photo/2020/09/06/07/19/aloe-5548208_1280.jpg',
    ],
  ),
];