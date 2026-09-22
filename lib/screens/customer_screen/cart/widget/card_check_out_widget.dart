import 'package:flutter/material.dart';

class CardCheckOutWidget extends StatefulWidget {

final String imageUrl;
final String title;
final String price;

  const CardCheckOutWidget({super.key, required this.imageUrl, required this.title, required this.price});

  @override
  State<CardCheckOutWidget> createState() => _CardCheckOutWidgetState();
}

class _CardCheckOutWidgetState extends State<CardCheckOutWidget> {
 int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
     child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
             borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.imageUrl, height: 100, width: 100, fit: BoxFit.cover,
              ),
            ),
        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(widget.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Text(widget.price, style: TextStyle(color: Colors.red,fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // minus
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        if (quantity > 1) {
                          setState(() {
                            quantity--;
                          });
                        }
                      },
                    ),

                    Text(
                      "$quantity",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                   
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                  ],
                ),
              ),

              
               SizedBox(height: 10,),
          ],
        ),
        Expanded(
  child: Align(
    alignment: Alignment.topRight,
    child: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    ),
  ),
),
      ],
     ),
    ),
  );
  }
}