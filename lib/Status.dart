import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top:8.0),
          sliver: SliverToBoxAdapter(
            child: ListTile(
              leading: Stack(
                
                children: [
                  CircleAvatar(

                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/329347360_1245267169756920_5581739145506716565_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Wnxy6DVJhggAX9TONyC&_nc_ht=scontent.fbir1-1.fna&oh=00_AfBxpFpzhes6AI9-DvZt9jPdKmR3i5iU4oZftg8fb5v_5A&oe=642742EA"
                  ),
                  
                    
                      
                ),
                Positioned(
                  top: 30,
                  left: 39,
                  
                    child: Icon(Icons.add_box_rounded,color: Colors.teal,size: 26,),)
                

                ],
              
              ),
              title: Text("My Status"),
              subtitle: Text("Tap to add status update"),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top:8.0),
          sliver: SliverToBoxAdapter(
            child: Text("Recent Updates",style:TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 16)),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            elevation: 0,
            child: ListTile(
              
              leading: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/DuaLipaO2020522_%28101_of_110%29_%2852052470251%29_%28cropped%29.jpg/1200px-DuaLipaO2020522_%28101_of_110%29_%2852052470251%29_%28cropped%29.jpg"),
          
              ),
              title: Text("Dua Lipa"),
              subtitle:Text("Yesterday,13:34"),
          
            ),
          ),
        ),
         SliverPadding(
          padding: const EdgeInsets.only(top:20.0),
          sliver: SliverToBoxAdapter(
            child: Center(child: Text("Your status updates are end-to-end encrypted",style:TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 12))),
          ),
        ),

    
      ],

    );
  }
}