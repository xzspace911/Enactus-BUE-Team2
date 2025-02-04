class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "AirPods",
    subTitle: "High quality",
    image: "images/airpod.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Mobile Phone",
    subTitle: "And now, the mobile has power",
    image: "images/mobile.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "3D Glasses",
    subTitle: "To transport you to the virtual world",
    image: "images/class.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Headphones",
    subTitle: "For long listening hours",
    image: "images/headset.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Voice Recorder",
    subTitle: "Capture important moments around you",
    image: "images/speaker.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Computer Cameras",
    subTitle: "With high-quality image resolution",
    image: "images/camera.png",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
  ),
];
