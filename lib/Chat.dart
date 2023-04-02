import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List circleavatar=[
    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/329347360_1245267169756920_5581739145506716565_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Wnxy6DVJhggAX9TONyC&_nc_ht=scontent.fbir1-1.fna&oh=00_AfBxpFpzhes6AI9-DvZt9jPdKmR3i5iU4oZftg8fb5v_5A&oe=642742EA",

    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/337034495_3363003067249747_1881004953746997401_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KBCYpB3Q3rQAX-UuQDS&_nc_ht=scontent.fbir1-1.fna&oh=00_AfCAZBF3jNX_JKdq9oQ-ej2opYa7SdHGZqj1BKDrUPRlcg&oe=642725FA",

    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/337866244_2194234327426994_1501420959826083528_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=8e8d882ER6AAX8r83yf&_nc_ht=scontent.fbir1-1.fna&oh=00_AfD9XlmJMGOtNCfjRocpvfHGmQKYGllv0PyDqgJuhrFVLA&oe=64269D2C",
    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/336679964_3461944767381325_1920012079021846184_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9WSf3uRmGBkAX-mi2DX&_nc_oc=AQmOaUAxOYJeySSuF4yVtYXGzcim-xVjFPjtx8tcvDtML4mUcewGzeW4ZQaaitAFR-oD7yKAGgEixc9y1A9QMawf&_nc_ht=scontent.fbir1-1.fna&oh=00_AfDdQBgYyr3LXMweGMcPZ35WxQQeCAAuEcewQS_yuxwRPQ&oe=642585BD"

  ];
  List titlename=[
    "Prabin Bhattarai",
    "Prakriti Limbu",
    "Suprima Shrestha",
    "Aayush Niraula",

  ];
  List subtitle=[
    "base.apk",
    "Photo",
    "Computer Network",
    "Hello,Whatsup!"
  ];
  List trailing=[
    "Yesterday",
    "3/8/23",
    "2/25/23",
    "2/24/23"
    

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(

          itemCount:circleavatar.length ,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(0.0),
           child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(circleavatar[index]),
                
                      
                ),
                title: Text(titlename[index]),  
                subtitle: Text(subtitle[index]),
                trailing: Text(trailing[index]),
              ),
            ),
          ),
          
      

      );
  }
}