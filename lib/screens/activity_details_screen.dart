import 'package:flutter/material.dart';
import 'package:task2/app_colors.dart';
import 'package:task2/model/activity_model.dart';

class ActivityDetails extends StatefulWidget {
  final ActivityDM activityItem;

  const ActivityDetails({super.key, required this.activityItem});

  @override
  State<ActivityDetails> createState() => _ActivityDetailsState();
}

class _ActivityDetailsState extends State<ActivityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 30),
            child: IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back), color: AppColors.darkPurple,),
          ),
          //widget.activityItem.icon,

          Icon(widget.activityItem.icon.icon,color: AppColors.darkPurple,size: 100,),
          Text("${widget.activityItem.actTitle}",style: TextStyle(color: Colors.black,fontSize: 30),),
          Text("${widget.activityItem.actDescription}",style: TextStyle(color: AppColors.darkGrey),)

        ],
      ),
    );
  }
}
