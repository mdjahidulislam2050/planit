import 'package:flutter/material.dart';
import 'package:untitled_sec3_class2/screens/task_board_screen.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child:
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w100
                ),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              child:
              Text(
                "Plan IT",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w900
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 200,),

            InkWell(
              child:
              Text(
                ' Your Personal task management \n and planning solution ',
                style: TextStyle(
                    fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,width: 250,),

            InkWell(

              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TaskBoardScreen())
                );

              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 40),
                  decoration: BoxDecoration(
                      color: isClicked == true ? Colors.cyan : Colors.black87,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("Let’s get started",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white),)
              ),
            )


          ],
        ),
      ),
    );
  }
}
