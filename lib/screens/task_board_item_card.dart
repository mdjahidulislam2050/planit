import 'package:flutter/material.dart';


class TaskBoardItemCard extends StatelessWidget {
  final String tittle;
  final String address;
  final String time;
  const TaskBoardItemCard(
      {super.key,
      required this.tittle,
      required this.address,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tittle,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              address,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black38),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
