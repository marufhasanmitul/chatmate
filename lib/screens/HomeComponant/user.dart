class User {
  String? name;
  String? msg;
  dynamic? image;
  String? time;

  User(
      this.name,
      this.msg,
      this.image,
      this.time,
      );
}

List users = [
  User('Brandon', "I'm coming dude.wait for me", 'assets/images/brandon.png', '12:00'),
  User('Jaeung', "this book is mine", 'assets/images/Jaeung.png', '02:00'),
  User('Marsu', "Where are you now", 'assets/images/marsu.png', '08:00'),
  User('Symon', "ohh shit! I missed my class", 'assets/images/symon.png', '09:00'),
  User('Micheal', "Can you provide me your book", 'assets/images/Micheal.png', '11:00'),
  User('Zoa Zo', "hey! are you busy now?", 'assets/images/Zoa.png', '07:00'),
  User('Ryan', "I have to do this now", 'assets/images/ryan.png', '03:00'),
  User('Tylor', "Are you kidding me?", 'assets/images/tylor.png', '04:00'),
];
