import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_list_tile.dart';
import 'package:task_manager/ui/widgets/user_profile_banner.dart';


class InProgressScreen extends StatelessWidget {
  const InProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileBanner(),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index){
                  return TaskListTIle();

                },separatorBuilder: (BuildContext context, int index){
                return const Divider(height: 4,);
              } ,) ,)
          ],
        ),
      ),
    );
  }
}
