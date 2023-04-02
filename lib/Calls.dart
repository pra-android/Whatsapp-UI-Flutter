import 'package:flutter/material.dart';
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
   List circleavatar=[
    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/329347360_1245267169756920_5581739145506716565_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Wnxy6DVJhggAX9TONyC&_nc_ht=scontent.fbir1-1.fna&oh=00_AfBxpFpzhes6AI9-DvZt9jPdKmR3i5iU4oZftg8fb5v_5A&oe=642742EA",

    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/337034495_3363003067249747_1881004953746997401_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KBCYpB3Q3rQAX-UuQDS&_nc_ht=scontent.fbir1-1.fna&oh=00_AfCAZBF3jNX_JKdq9oQ-ej2opYa7SdHGZqj1BKDrUPRlcg&oe=642725FA",

    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/337866244_2194234327426994_1501420959826083528_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=8e8d882ER6AAX8r83yf&_nc_ht=scontent.fbir1-1.fna&oh=00_AfD9XlmJMGOtNCfjRocpvfHGmQKYGllv0PyDqgJuhrFVLA&oe=64269D2C",
    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/336679964_3461944767381325_1920012079021846184_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9WSf3uRmGBkAX-mi2DX&_nc_oc=AQmOaUAxOYJeySSuF4yVtYXGzcim-xVjFPjtx8tcvDtML4mUcewGzeW4ZQaaitAFR-oD7yKAGgEixc9y1A9QMawf&_nc_ht=scontent.fbir1-1.fna&oh=00_AfDdQBgYyr3LXMweGMcPZ35WxQQeCAAuEcewQS_yuxwRPQ&oe=642585BD"

  ];
  List title=[
    "+91 9878945698",
    "+91 9578965892",
    "+91 9641235684",
    "+91 9452136548",


  ];
  List subtitle=[
    "8/27/2022,20:23",
    "8/27/2022,20:23",
    "8/27/2022,20:23",
    "8/27/2022,20:23"


  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top:8.0),
          sliver: SliverToBoxAdapter(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.teal,
                child: Icon(Icons.link_sharp,color: Colors.white,size:28,),
                
        
        
              ),
              title: Text("Create Call Link"),
              subtitle: Text("Share a link of your whatsapp call",
              style: TextStyle(fontSize: 12),),
            ),
        
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverToBoxAdapter(
            child: Container(
              child: Text("Recent",style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 16),),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
              itemCount: circleavatar.length,
              itemBuilder: 
            (context ,index)
            {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    circleavatar[index],
          
                  ),
                ),
                title: Text(title[index]),
                subtitle: Text(subtitle[index]),
                trailing: IconButton(onPressed: ()
                {

                }, icon:Icon(Icons.call,color: Colors.teal,)),
          
              );
            }),
          ),
        )

      ],


    );
  }
}