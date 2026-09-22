  import 'package:flutter/material.dart';

  class ActiveOrderCardWidget extends StatelessWidget {
    const ActiveOrderCardWidget({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://www.allrecipes.com/thmb/5JVfA7MxfTUPfRerQMdF-nGKsLY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      )
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("#1234", style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Chip(label: Text("Pending"), backgroundColor: Colors.yellow,),
                            ],
                          ),
                          Text("Burger", style: TextStyle(fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.access_time_rounded, color: Colors.red,),
                              Text("10 min ago", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      )
                    ),
                    Container(
                      child: Text("\$45.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: (){},
                          child: Text("Accept Order", style: TextStyle(color: Colors.white),)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text("Accept Order", style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }