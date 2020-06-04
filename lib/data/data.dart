class Category {
  final String imageUrl;
  final String name;

  Category({this.imageUrl, this.name});
}

List<Category> categories = [
  Category(imageUrl: 'assets/images/stays.png', name: 'Stays'),
  Category(imageUrl: 'assets/images/experiences.png', name: 'Experiences'),
  Category(imageUrl: 'assets/images/adventures.png', name: 'Adventures'),
];

class Property {
  final String location;
  final String name;
  final String imageUrl;
  final String review;
  final String nReviews;
  final String nGuests;
  final String nBedrooms;
  final String nBeds;
  final String nBathrooms;
  final String description;
  final String hostImageUrl;
  final String hostName;
  final String hostWelcome;
  final List<String> images;

  Property(
      {this.location,
      this.name,
      this.imageUrl,
      this.review,
      this.nReviews,
      this.nGuests,
      this.nBedrooms,
      this.nBeds,
      this.nBathrooms,
      this.description,
      this.hostImageUrl,
      this.hostName,
      this.hostWelcome,
      this.images});
}

List<Property> properties = [
  Property(
      location: 'Caretera Casares',
      name: 'Holiday Apartment in Las Galletas',
      imageUrl: 'assets/images/h2_1.png',
      review: '4.7',
      nReviews: '631',
      nGuests: '8',
      nBedrooms: '4',
      nBeds: '4',
      nBathrooms: '2',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      hostImageUrl: 'assets/images/h2_avatar.png',
      hostName: 'Mark',
      hostWelcome:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      images: [
        'assets/images/h2_2.png',
        'assets/images/h2_3.png',
        'assets/images/h2_4.png',
        'assets/images/h2_5.png',
        'assets/images/h2_6.png',
        'assets/images/h2_7.png',
      ]),
  Property(
      location: 'Coral',
      name: 'Sant Joan de Labritja Villa',
      imageUrl: 'assets/images/h3_1.png',
      review: '4.8',
      nReviews: '219',
      nGuests: '5',
      nBedrooms: '2',
      nBeds: '4',
      nBathrooms: '2',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      hostImageUrl: 'assets/images/h3_avatar.png',
      hostName: 'Claire',
      hostWelcome:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      images: [
        'assets/images/h3_2.png',
        'assets/images/h3_3.png',
        'assets/images/h3_4.png',
        'assets/images/h3_5.png',
        'assets/images/h3_6.png',
        'assets/images/h3_7.png',
      ]),
  Property(
      location: 'Cap Martinet',
      name: 'Playa de Talamanca Villa',
      imageUrl: 'assets/images/h1_1.png',
      review: '4.9',
      nReviews: '362',
      nGuests: '12',
      nBedrooms: '6',
      nBeds: '7',
      nBathrooms: '3',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      hostImageUrl: 'assets/images/h1_avatar.png',
      hostName: 'Alice Hood',
      hostWelcome:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      images: [
        'assets/images/h1_2.png',
        'assets/images/h1_3.png',
        'assets/images/h1_4.png',
        'assets/images/h1_5.png',
        'assets/images/h1_6.png',
        'assets/images/h1_7.png',
      ]),
  Property(
    location: 'Es Cubells',
    name: 'Golden Mile Villa',
    imageUrl: 'assets/images/h4_1.png',
    review: '4.9',
    nReviews: '578',
    nGuests: '9',
    nBedrooms: '5',
    nBeds: '4',
    nBathrooms: '3',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    hostImageUrl: 'assets/images/h4_avatar.png',
    hostName: 'Holly',
    hostWelcome:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    images: [
      'assets/images/h4_2.png',
      'assets/images/h4_3.png',
      'assets/images/h4_4.png',
      'assets/images/h4_5.png',
      'assets/images/h4_6.png',
      'assets/images/h4_7.png',
    ],
  ),
];
