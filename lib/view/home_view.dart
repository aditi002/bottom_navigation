import 'package:flutter/material.dart';

class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(children: [
          const Text("hello", style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),),
          const Text("hello",style: TextStyle(fontSize: 20),),
          const Text("hello",style: TextStyle(fontSize: 20),),
           TextFormField(
          
        ),
        TextFormField(

        ),
        ElevatedButton(onPressed: (){}, child: const Text("jbd"))

        ],
        )
       
        ),
    );
  }
}