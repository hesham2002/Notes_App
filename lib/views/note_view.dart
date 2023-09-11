import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
          )),

      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notes',
                  style: TextStyle(fontSize: 35),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 35,
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffC76817),
              borderRadius: BorderRadius.circular(30),
            ),
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Flutter tips',
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                    padding: EdgeInsets.only(left: 200),
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      weight: 40,
                      size: 40,
                    )),
                Text(
                    textAlign: TextAlign.center,
                    'Build your carear with hesham atef'),
                Text('${DateTime.now()}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
