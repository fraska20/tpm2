class DataFood {
  String foodName;
  String region;
  String imageLink;
  String link;
  bool isFavorite;

  DataFood({
    required this.foodName,
    required this.region,
    required this.imageLink,
    required this.link,
    required this.isFavorite,
  });
}

var listFood = [
  DataFood(
    foodName: "Mie Aceh",
    region: "Nanggroe Aceh Darussalam",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/e/e2/Aceh_fried_noodles.JPG",
    link: "https://id.wikipedia.org/wiki/Mi_aceh",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Rendang",
    region: "Sumatera Barat",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/7/70/Rendang_daging_sapi_asli_Padang.JPG",
    link: "https://id.wikipedia.org/wiki/Rendang",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Pempek",
    region: "Sumatera Selatan",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/c/ca/Pempek_Kuah_Cuko.jpg",
    link: "https://id.wikipedia.org/wiki/Pempek",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Kerak Telor",
    region: "Jakarta",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/f/f9/Kerak_Telor_Betawi_Vendor.jpg",
    link: "https://id.wikipedia.org/wiki/Kerak_telor",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Gudeg",
    region: "Yogyakarta",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/3/31/Nasi_Gudeg.jpg",
    link: "https://id.wikipedia.org/wiki/Gudeg",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Lumpia",
    region: "Jawa Tengah",
    imageLink: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Lumpia.JPG",
    link: "https://id.wikipedia.org/wiki/Lumpia",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Rujak Cingur",
    region: "Jawa Timur",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/6/6f/Rujakcingur.jpg",
    link: "https://id.wikipedia.org/wiki/Rujak_cingur",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Ayam Betutu",
    region: "Bali",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/f/f4/Ayam_Betutu.jpg",
    link: "https://id.wikipedia.org/wiki/Ayam_betutu",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Soto Banjar",
    region: "Kalimantan Selatan",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Soto_Banjar_ketupat.jpg",
    link: "https://id.wikipedia.org/wiki/Soto_Banjar",
    isFavorite: false,
  ),
  DataFood(
    foodName: "Papeda",
    region: "Papua Timur",
    imageLink:
        "https://upload.wikimedia.org/wikipedia/commons/0/01/Papeda%2C_Kuah_Kuning%2C_Ikan_Tude_Bakar_2.jpg",
    link: "https://id.wikipedia.org/wiki/Papeda",
    isFavorite: false,
  ),
];
