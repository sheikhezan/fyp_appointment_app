class Patients {

  final String name;
  final String imageUrl;
  final double rating;

  Patients ({
     required this.name,
    required this.imageUrl,
    required this.rating
});
}

List<Patients> DummyPatients = [
  Patients(
      name: "Ezan",
      imageUrl: 'assets/images/ezansheikh.jpg',
      rating: 4.9,
  )
];