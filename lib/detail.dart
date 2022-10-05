import 'package:flutter/material.dart';
import 'package:kuis/detail.dart';
import 'package:kuis/groceries.dart';

class Detail extends StatelessWidget {
  //const TourismDetail({Key? key}) : super(key: key);
  final Groceries groceries;

  Detail(this.groceries);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(groceries.name),
      ),
      body: Padding (padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.network(
            //     tourismPlace.imageUrls.toString(),
            // ),
            // Padding(
            //   padding:const EdgeInsets.all(8.0),
            //   child: Image.network(groceries.imageUrls.toString()),
            // ),
            FavoriteButton(),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Text(
                groceries.price,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Text(
                groceries.discount,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Text(
                groceries.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Text(
                groceries.reviewAverage,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}



// import 'package:flutter/material.dart';
// import 'package:latihankuis/tourism_place.dart';
//
// class TourismDetail extends StatelessWidget {
//   //const TourismDetail({Key? key}) : super(key: key);
//   final TourismPlace tourismPlace;
//
//   TourismDetail(this.tourismPlace);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(tourismPlace.name),
//       ),
//       body: Padding (padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(
//             tourismPlace.imageUrls.toString()
//           ),
//           // Padding(
//           //   padding:const EdgeInsets.all(8.0),
//           //   child: Row(
//           //     children: [
//           //       // ElevatedButton(
//           //       //     onPressed: (){},
//           //       //     child: Text(
//           //       //       tourismPlace.location,
//           //       //       textAlign: TextAlign.center,
//           //       //       style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
//           //       //     ),
//           //       // ),
//           //       // Text(
//           //       //     tourismPlace.location,
//           //       //     textAlign: TextAlign.center,
//           //       //   style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
//           //       // ),
//           //       Text(
//           //         tourismPlace.ticketPrice,
//           //         textAlign: TextAlign.center,
//           //         style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           Padding(
//             padding:const EdgeInsets.all(8.0),
//             child: Text(
//               tourismPlace.location,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
//             ),
//           ),
//           Padding(
//             padding:const EdgeInsets.all(8.0),
//             child: Text(
//               tourismPlace.openDays,
//               textAlign: TextAlign.justify,
//               style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//             ),
//           ),
//           Padding(
//             padding:const EdgeInsets.all(8.0),
//             child: Text(
//               tourismPlace.openTime,
//               textAlign: TextAlign.justify,
//               style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//             ),
//           ),
//           Padding(
//             padding:const EdgeInsets.all(8.0),
//             child: Text(
//               tourismPlace.description,
//               textAlign: TextAlign.justify,
//               style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//             ),
//           ),
//         ],
//       ),
//       ),
//     );
//   }
// }


