class Doctor {
  final String name;
  final String specialization;
  final String imageUrl;
  final String location;
  final double reviews;
  bool isFavorite;
  final String patients;
  final String experience;
  final String rating;
  final String about;
  final String worktime;

  Doctor({
    required this.name,
    required this.specialization,
    required this.imageUrl,
    required this.location,
    required this.reviews,
    this.isFavorite = false,
    required this.patients,
    required this.experience,
    required this.rating,
    required this.about,
    required this.worktime,
  });
}


List<Doctor> dummyDoctors = [
  Doctor(
    name: 'Dr. John Doe',
    specialization: 'Dentist',
    imageUrl: 'assets/images/dr.david.jpg',
    location: 'New York',
    reviews: 4.5,
    patients : '2000+',
    experience:'11+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. Jane Smith',
    specialization: 'Cardiologist',
    imageUrl: 'assets/images/Jane.jpeg',
    location: 'Los Angeles',
    reviews: 4.8,
    patients : '1890+',
    experience:'9+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. Michael Johnson',
    specialization: 'Neurologist',
    imageUrl: 'assets/images/Michael.jpeg',
    location: 'Chicago',
    reviews: 4.2,
    patients : '2020+',
    experience:' 4+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. Emily Brown',
    specialization: 'Pediatrician',
    imageUrl: 'assets/images/Emily.jpg',
    location: 'Houston',
    reviews: 4.7,
    patients : '120+',
    experience:'6+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. Sarah Lee',
    specialization: 'Dermatologist',
    imageUrl: 'assets/images/Sarahi.webp',
    location: 'Philadelphia',
    reviews: 4.6,
    patients : '2300+',
    experience:'8+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. David Clark',
    specialization: 'Ophthalmologist',
    imageUrl: 'assets/images/David.jpeg',
    location: 'Phoenix',
    reviews: 4.4,
    patients : '1500+',
    experience:'1+ Years',
    rating: '4.5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
  Doctor(
    name: 'Dr. Lisa Taylor',
    specialization: 'Psychiatrist',
    imageUrl: 'assets/images/Lisa.jpg',
    location: 'San Antonio',
    reviews: 4.9,
    patients : '100+',
    experience:'2+ Years',
    rating: '5',
    about: 'As a dedicated pediatrician with over 10 years of experience, I am passionate about providing comprehensive and compassionate care to children of all ages. My approach focuses on building strong relationships with my young patients and their families to ensure their well-being and development. I believe in empowering parents with the knowledge and support they need to make informed decisions about their childrens health. My areas of expertise include childhood vaccinations, developmental screenings, and managing common pediatric illnesses. I am committed to staying current with medical research and advancements to deliver the highest quality of care. Outside of medicine, I enjoy spending time with my family, hiking, and volunteering in the community',
    worktime: 'Monday to Friday, 08:00 AM - 10:00 AM',
  ),
];
