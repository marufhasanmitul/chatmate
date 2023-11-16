
import 'package:chatmate/Utils/ScreenBackground.dart';
import 'package:chatmate/Utils/colorAll.dart';
import 'package:chatmate/screens/HomeComponant/active_people.dart';
import 'package:chatmate/screens/HomeComponant/user.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Stack(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/me.png'),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,))
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Massages',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                    )
                  ],
            ),
           Positioned(
             top: 155,
               left:0,
               right: 0,
               child: Container(
             height: 220,
             decoration: const BoxDecoration(
                 color: ColorAll.primaryColor,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(20)),
             ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const Text('Active People',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight:FontWeight.w500),),
                           InkWell(onTap: (){},
                               child: const Image(image: AssetImage('assets/images/menu.png')))
                         ],
                       ),
                     ),
                     const SizedBox( height: 10,),
                     const SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Padding(
                           padding: EdgeInsets.all(10.0),
                           child: ActivePeople(),
                         ),
                       ),
                     )
                   ],
                 ),
           )),
            Positioned(
              top: 320,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(20)),
                ),
                child: ListView.separated(
                    itemCount: users.length,
                  itemBuilder: (context, index){
                    return ListTile(
                     leading:CircleAvatar(
                    radius: 20,
                   backgroundImage: AssetImage(users[index].image),
              ),
                      title:  Text(users[index].name),
                      subtitle: Text(users[index].msg),
                      trailing:  Text(users[index].time),
                    );
                  },
                  separatorBuilder: (context,index){
                      return const Divider();
                  },
                  ),
            ),
          ),
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(backgroundColor: ColorAll.primaryColor,onPressed: (){}, label:const Row(
        children: [
          Icon(Icons.mail,color: Colors.black,),
          SizedBox(width: 5,),
          Text('Massage',style: TextStyle(color: Colors.black),),
        ],
      ),splashColor: ColorAll.primaryColor

        ,),
    );
  }
}
