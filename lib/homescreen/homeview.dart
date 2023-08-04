import 'package:flutter/material.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromARGB(221, 75, 35, 35),
    

      body: Column(

        children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hello Bambang!',style: TextStyle(
                              color: Colors.white,fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Lets Listen Somthing cool today',style: TextStyle(
                              color: Colors.white70,fontSize: 15,
                            ),
                          ),

                        ],
                      ),
                      ClipOval(
            child: MaterialButton(
              onPressed: () {
                // Add your button's action here
              },
              color: Color.fromARGB(255, 74, 50, 50), // Set your desired background color
              padding: EdgeInsets.all(16.0),
              minWidth: 30.0,
              height: 30.0,
              child: Icon(Icons.notifications_outlined, color: Colors.white,),
            ),
          ),
        
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your favorite artist',style: TextStyle(
                                  color: Colors.white,fontSize: 20,
                              fontWeight: FontWeight.bold

                                ),),

                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Able',style: TextStyle(
                                            color: Colors.white,fontSize: 20
                                          ),),
                                )
                              ],
                            ),
                                                  ),
                          );
                        },
                        
                      ),
                    ),
                  ],
                ),
              )
        ],

      ),
    );
  }
}