class UserInfo {
  String? name;
  String? msg;
  dynamic? image;
  String? time;

  UserInfo(
      this.name,
      this.msg,
      this.image,
      this.time,
      );
}

List users = [
  UserInfo('Brandon', "I'm coming dude.wait for me", 'assets/images/brandon.png', '12:00'),
  UserInfo('Jaeung', "this book is mine", 'assets/images/Jaeung.png', '02:00'),
  UserInfo('Marsu', "Where are you now", 'assets/images/marsu.png', '08:00'),
  UserInfo('Symon', "ohh shit! I missed my class", 'assets/images/symon.png', '09:00'),
  UserInfo('Micheal', "Can you provide me your book", 'assets/images/Micheal.png', '11:00'),
  UserInfo('Zoa Zo', "hey! are you busy now?", 'assets/images/Zoa.png', '07:00'),
  UserInfo('Ryan', "I have to do this now", 'assets/images/ryan.png', '03:00'),
  UserInfo('Tylor', "Are you kidding me?", 'assets/images/tylor.png', '04:00'),
];
