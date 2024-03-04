import 'package:flutter/material.dart';
import 'package:untitled_sec3_class2/screens/task_board_item_card.dart';

import 'task_board_item_card.dart';
class MyTask{
 final String tittle;
 final String address;
 final String time;

 MyTask({ required this.tittle, required this.address, required this.time});
}


class TaskBoardScreen extends StatefulWidget {

  @override
  State<TaskBoardScreen> createState() => _TaskBoardScreenState();
}

class _TaskBoardScreenState extends State<TaskBoardScreen> {
  List<MyTask> data=[

    MyTask(tittle: 'Task 1', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),
    MyTask(tittle: 'Task 2', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),
    MyTask(tittle: 'Task 3', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(leading:const Text(''),
          title: const Text('Task Board',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 40),),
          centerTitle: true

        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding:  const EdgeInsets.only(bottom: 15),
              child: TaskBoardItemCard(tittle: data[index].tittle, address: data[index].address, time: data[index].time,),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          setState(() {
            data.add((data.length+1) as MyTask);
          });
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
