// import 'package:flutter/material.dart';

// class SectionOne extends StatelessWidget {
//   const SectionOne({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(15)),
//               color: Color.fromARGB(119, 40, 15, 37),
//             ),
//             height: 55,
//             width: 55,
//             child: Icon(
//               Icons.menu,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(
//               width:
//                   10), // Add spacing between the label and the TextFormField
//           Expanded(
            
//             child: TextField(
              
//               decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color.fromARGB(119, 40, 15, 37),
//                   prefixIcon: const Icon(Icons.search),
//                   hintText: 'Search...',
//                   border: OutlineInputBorder(
//                       borderRadius:
//                           BorderRadius.all(Radius.circular(20)))),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(119, 40, 15, 37),
            ),
            height: 55,
            width: 55,
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10.0,
          ), // Add spacing between the label and the TextFormField
          Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(119, 40, 15, 37),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
