import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/components/notification.dart';
import 'package:task_3/pages/setting.dart';

class RecentlyPlayedSection extends StatelessWidget {
  final List<Map<String, String>> recentlyPlayed = [
    {'title': 'Remastered', 'imageUrl': 'assets/images/album3.png'},
    {'title': 'Lana Del Rey', 'imageUrl': 'assets/images/album2.png'},
    {'title': 'Marvin Gaye', 'imageUrl': 'assets/images/album1.png'},
    {'title': 'Marvin Gaye', 'imageUrl': 'assets/images/album2.png'},
    {'title': 'Marvin Gaye', 'imageUrl': 'assets/images/album3.png'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
          'Recently played',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        IconButton(
          icon: Icon(Icons.notifications_active_sharp),
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder:(context)=>
            NotificationPage()));
           },),                
        SizedBox(width:8),
        IconButton(
          icon: Icon(Icons.timer_sharp),
          onPressed: () {
           },),        
        SizedBox(width:8),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>
          SettingPage()));
           },)        
         ],
        )
        ],
        ),
        SizedBox(height:MediaQuery.of(context).size.height * 0.02),
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recentlyPlayed.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: MediaQuery.of(context).size.height * 0.1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(recentlyPlayed[index]['imageUrl']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    recentlyPlayed[index]['title']!,
                    style: TextStyle(color:Color(0xFF777777),
                    fontSize:  MediaQuery.of(context).size.height * 0.02),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
