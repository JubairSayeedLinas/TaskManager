import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0 ),
      tileColor: Colors.green,
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'),
        radius: 15,
      ),
      title: Text('UserName', style: TextStyle(fontSize: 14, color: Colors.white),),
      subtitle: Text('Email',style: TextStyle(fontSize: 12,color: Colors.white),),
    );
  }
}