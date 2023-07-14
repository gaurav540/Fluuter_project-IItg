import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Event"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  filled: true,
                    fillColor: Colors.green,
                    prefixIcon: Icon(Icons.event,color: Colors.purple,),
                    hintText: "Event",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ))),
              ),
            ),
            const SizedBox(height: 10),
            Builder(builder: (context) {
              return Center(
                child: SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      )
                    ),
                      onPressed: () {
                        String newEventText = _textEditingController.text;
                        Navigator.of(context).pop(newEventText);
                      },
                      child:  const Text("ADD",style: TextStyle(color: Colors.black),)),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
