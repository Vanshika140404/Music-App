// // import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// class SearchClick extends StatelessWidget {
//   final List<Map<String, String>> recentSearches = [
//     {'title': 'FKA twigs', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
//     {'title': 'Hozier', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album2.png'},
//     {'title': 'Grimes', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album3.png'},
//     {'title': '1 (Remastered)', 'subtitle': 'Album • The Beatles', 'imageUrl': 'assets/images/edit1.png'},
//     {'title': 'HAYES', 'subtitle': 'Artist', 'imageUrl': 'assets/images/edit2.png'},
//     {'title': 'Led Zeppelin', 'subtitle': 'Artist', 'imageUrl': 'assets/images/buds.jpg'},
//     {'title': 'Les', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search Bar
//           Padding(
//             padding:  EdgeInsets.all(16.0),
//             child: Row(
//               children: [TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   hintStyle: TextStyle(color: Colors.grey),
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey[800], // Search bar background
//                   contentPadding: const EdgeInsets.symmetric(vertical: 8),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(18.0),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//                 readOnly: true,
//               ),
//               Text('Cancel')
//               ]
//             ),
//           ),

//           // Recent Searches Title
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               'Recent Searches',
//               style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),

//           // ListView
//           Expanded(
//             child: ListView.builder(
//               itemCount: recentSearches.length, // Number of items in the list
//               itemBuilder: (context, index) {
//                 final searchItem = recentSearches[index]; // Access current item
//                 return ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage(searchItem['imageUrl']!), // Leading avatar
//                     radius: 28,
//                   ),
//                   title: Text(
//                     searchItem['title']!, // Item title
//                     style: const TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   subtitle: Text(
//                     searchItem['subtitle']!, // Item subtitle
//                     style: const TextStyle(color: Colors.grey, fontSize: 14),
//                   ),
//                   onTap: () {
//                     // Handle tap functionality here
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class SearchClick extends StatelessWidget {
//     final List<Map<String, String>> recentSearches = [
//     {'title': 'FKA twigs', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
//     {'title': 'Hozier', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album2.png'},
//     {'title': 'Grimes', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album3.png'},
//     {'title': '1 (Remastered)', 'subtitle': 'Album • The Beatles', 'imageUrl': 'assets/images/edit1.png'},
//     {'title': 'HAYES', 'subtitle': 'Artist', 'imageUrl': 'assets/images/edit2.png'},
//     {'title': 'Led Zeppelin', 'subtitle': 'Artist', 'imageUrl': 'assets/images/buds.jpg'},
//     {'title': 'Les', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  
//     Column(children:
//      [
//       Row(
//         children: [
//         TextField(
//          decoration: InputDecoration(
//             hintText: "Search",
//             hintStyle: TextStyle(color: Colors.black),
//             prefixIcon: Icon(Icons.search, color: Colors.grey),
//             filled: true,
//             fillColor: Colors.grey[200], 
//             contentPadding: EdgeInsets.symmetric(vertical: 4), // Adjust vertical padding
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(18.0),
//               borderSide: BorderSide.none, // Remove the outline border
//             ),
//           ),
//           readOnly: true, 
//         ),
//         ],
//       ),
//          Text('Recent Searches'),
//          Expanded(
//            child: ListView.builder(
//            itemCount: recentSearches.length, // Number of items in the list
//            itemBuilder: (context, index) {  // Builds each item
//            final searchItem = recentSearches[index]; // Access current item
//            return Padding(
//            padding: const EdgeInsets.symmetric(vertical: 8.0), // Adds spacing
//            child: ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage(searchItem['imageUrl']!), // Leading avatar
//               radius: 28,
//             ),
//             title: Text(
//               searchItem['title']!, // Item title
//               style: const TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             subtitle: Text(
//               searchItem['subtitle']!, // Item subtitle
//               style: const TextStyle(color: Colors.grey, fontSize: 14),
//             ),
//             onTap: () {
//               // Handle tap functionality here
//             },
//            ),
//                   );
//                 }, // End of the itemBuilder function
//                ),
//          ), 
//   ],
//  );
// }
// }

import 'package:flutter/material.dart';

class SearchClick extends StatelessWidget {
  final List<Map<String, String>> recentSearches = [
    {'title': 'FKA twigs', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
    {'title': 'Hozier', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album2.png'},
    {'title': 'Grimes', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album3.png'},
    {'title': '1 (Remastered)', 'subtitle': 'Album • The Beatles', 'imageUrl': 'assets/images/edit1.png'},
    {'title': 'HAYES', 'subtitle': 'Artist', 'imageUrl': 'assets/images/edit2.png'},
    {'title': 'Led Zeppelin', 'subtitle': 'Artist', 'imageUrl': 'assets/images/buds.jpg'},
    {'title': 'Les', 'subtitle': 'Artist', 'imageUrl': 'assets/images/album1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                        filled: true,
                        fillColor: Colors.grey[800], // Search bar background
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      // readOnly: true,
                      onTap: () {
                        
                      },
                    ),
                  ),
                   SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Or define a custom action
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Recent Searches Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recent Searches',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Recent Searches ListView
            Expanded(
              child: ListView.builder(
                itemCount: recentSearches.length,
                itemBuilder: (context, index) {
                  final searchItem = recentSearches[index];
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(searchItem['imageUrl']!),
                        radius: 28,
                        backgroundColor: Colors.grey[700], // Placeholder color if image fails
                      ),
                      title: Text(
                        searchItem['title']!,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      subtitle: Text(
                        searchItem['subtitle']!,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      onTap: () {
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
