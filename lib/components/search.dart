import 'package:flutter/material.dart';
import 'package:task_3/components/searchclick.dart';

class Searchpage extends StatelessWidget {
  Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Search',
            style: TextStyle(
            ),),
            Icon(Icons.camera_alt_outlined)
          ],
        ),
        Container(
          height:MediaQuery.of(context).size.height * 0.1,
          child: TextField(
           decoration: InputDecoration(
              hintText: "Artists, Songs, or Podcasts",
              hintStyle: TextStyle(color: Colors.grey[400]),
              prefixIcon: Icon(Icons.search, color: Colors.grey[400],
              size:MediaQuery.of(context).size.height * 0.06,),
              filled: true,
              fillColor: Colors.grey[800], 
              contentPadding: EdgeInsets.symmetric(vertical: 4), 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: BorderSide.none, 
              ),
            ),
            readOnly: true, 
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SearchClick()));
            },
          ),
        ),
        Text('Your top genres'),
        SizedBox(height:MediaQuery.of(context).size.height * 0.01,),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/search1.jpg",
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.18,
            ),
            Image.asset("assets/images/Search2.png",
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.18,
            ),
          ],
        ),
        Text('Popular Podcasts Categories'),
        SizedBox(height:MediaQuery.of(context).size.height * 0.01),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/search3.png",
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.18,
            ),
            Image.asset("assets/images/search4.png",
             width: MediaQuery.of(context).size.width * 0.5,
             height: MediaQuery.of(context).size.height * 0.18,
           ),
          ],
        ),
        Text('Browse all'),
        SizedBox(height:MediaQuery.of(context).size.height * 0.01,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/search5.png",
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.18,
            ),
            Image.asset("assets/images/search6.png",
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.18
            ),
          ],
        ),
        SizedBox(height:MediaQuery.of(context).size.height * 0.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/search1.jpg",
             width: MediaQuery.of(context).size.width * 0.47  ,         
             height: MediaQuery.of(context).size.height * 0.18           
            ),
            Image.asset("assets/images/Search2.png",
            width: MediaQuery.of(context).size.width * 0.47,            
            height: MediaQuery.of(context).size.height * 0.18,            
            ),
          ],
        )
      ],
    );
  }
}