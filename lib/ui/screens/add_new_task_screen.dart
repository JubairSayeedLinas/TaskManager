import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/user_profile_banner.dart';

class AddNewsTaskScreen extends StatelessWidget {
  const AddNewsTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfileBanner(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16,),
                  Text(
                    'Add New Task',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Title'
                    ),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: 'Description'
                    ),
                  ),
                  const SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {

                        }, child: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
