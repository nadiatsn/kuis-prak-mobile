import 'package:flutter/material.dart';
import 'package:kuis/groceries.dart';
import 'package:kuis/halaman_detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Groceries"),
      ),
      body: ListView.builder(
        itemCount: groceryList.length,
          itemBuilder: (context, index){
            Groceries groceries = groceryList[index];
            return Card(
              child: ListTile(
                title: Text(groceries.name, ),
                subtitle: Text(groceries.storeName),
                leading: Icon(Icons.rounded_corner),
                //leading: Image.network(groceries.productImageUrls.toString()),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HalamanDetail(groceries: groceries);
                  }));
                },
              ),
            );
          }
      ),
    );
  }
}
