
import 'package:flutter/material.dart';

class ActivePeople extends StatefulWidget {
  const ActivePeople({super.key});

  @override
  State<ActivePeople> createState() => _ActivePeopleState();
}

class _ActivePeopleState extends State<ActivePeople> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(

                radius: 20,
                backgroundImage: AssetImage('assets/images/brandon.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Brandon',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/Jaeung.png'),
              ),
            ),

            SizedBox(height: 8,),
            Text('Jaeung',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/marsu.png'),
              ),
            ),

            SizedBox(height: 8,),
            Text('Marsu',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/symon.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Saymon',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/Micheal.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Micheal',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/Zoa.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Zoa Zo',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/ryan.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Ryan',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/tylor.png'),
              ),
            ),
            SizedBox(height: 8,),
            Text('Tylor',style: TextStyle(color: Colors.black,fontSize: 12),)

          ],
        ),
      ],
    );
  }
}
