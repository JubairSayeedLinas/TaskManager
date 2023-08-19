import 'package:flutter/material.dart';
import 'package:task_manager/data/models/network_response.dart';
import 'package:task_manager/data/models/task_list_model.dart';
import 'package:task_manager/data/services/network_caller.dart';
import 'package:task_manager/data/utils/urls.dart';
import 'package:task_manager/ui/widgets/task_list_tile.dart';
import 'package:task_manager/ui/widgets/user_profile_banner.dart';


class InProgressScreen extends StatefulWidget {
  const InProgressScreen({Key? key}) : super(key: key);

  @override
  State<InProgressScreen> createState() => _InProgressScreenState();
}

class _InProgressScreenState extends State<InProgressScreen> {
  bool _getProgressTaskInProgress = false;
  TaskListModel _taskListModel = TaskListModel();


  Future<void> getInProgressTask() async{
    _getProgressTaskInProgress = true;
    if (mounted) {
      setState(() {});
    }
    final NetworkResponse response =
    await NetworkCaller().getRequest(Urls.inProgressTasks);

    if (response.isSuccess) {
      _taskListModel = TaskListModel.fromJson(response.body!);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('get In Progress Data Get Failed'),
        ));
      }
    }
    _getProgressTaskInProgress = false;
    if (mounted) {
      setState(() {});
    }

  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getInProgressTask();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileAppBar(),
            Expanded(
              child: _getProgressTaskInProgress ? const Center(
                child: CircularProgressIndicator(),
              ) : ListView.separated(
                itemCount: _taskListModel.data?.length ?? 0,
                itemBuilder: (context, index){
                  return TaskListTile(
                    data: _taskListModel.data![index], onDeleteTap: () {  }, onEditTap: () {  },
                  );

                },separatorBuilder: (BuildContext context, int index){
                return const Divider(height: 4,);
              } ,) ,)
          ],
        ),
      ),
    );
  }
}
