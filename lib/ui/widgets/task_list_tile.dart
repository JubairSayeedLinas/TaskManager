import 'package:flutter/material.dart';

class TaskListTIle extends StatelessWidget {
  const TaskListTIle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Title'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('subtite'),
          Text('Date'),
          Row(
            children: [
              Chip(label: Text('New', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_outlined, color: Colors.red.shade300,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Colors.green,),
            ],
          )
        ],
      ),
    );
  }
}