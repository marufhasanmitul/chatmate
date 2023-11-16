
import 'package:chatmate/Utils/ScreenBackground.dart';
import 'package:chatmate/Utils/colorAll.dart';
import 'package:chatmate/screens/HomeComponant/active_people.dart';
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
                       padding: const EdgeInsets.all(8.0),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(20)),
                ),
                child: ListView(
                children: [
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CircleAvatar(
                           radius: 20,
                           backgroundImage: AssetImage('assets/images/brandon.png'),
                         ),
                         SizedBox(width: 10,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Brandon',style: TextStyle(color: Colors.black,fontSize: 15),),
                             Text("I'm coming dude.wait for me",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                           ],
                         ),
                         SizedBox(width: 150,),
                         Text("12:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                       ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/Jaeung.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jaeung',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("this book is mine",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("02:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/marsu.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Marsu',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("Where are you now",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("08:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/symon.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Symon',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("ohh shit! I missed my class",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("09:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/Micheal.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Micheal',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("Can you provide me your book",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("11:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/Zoa.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Zoa Zo',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("hey! are you busy now?",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("09:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/ryan.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ryan',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("I have to do this now",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("07:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/tylor.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tylor',style: TextStyle(color: Colors.black,fontSize: 15),),
                              Text("Are you kidding me?",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 150,),
                          Text("01:00",style: TextStyle(color: Colors.black,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
            ),
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(backgroundColor: ColorAll.primaryColor,onPressed: (){}, label:const Row(
        children: [
          Text('Massage',style: TextStyle(color: Colors.black),),
          SizedBox(width: 5,),
          Icon(Icons.edit,color: Colors.black,)
        ],
      ),splashColor: ColorAll.primaryColor

        ,),
    );
  }
}
