import 'package:flutter/material.dart';
import 'package:task2/app_colors.dart';
import 'package:task2/model/activity_model.dart';

class AppComponents {
  static Widget listItems(BuildContext context,ActivityDM activityItem) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
        color:AppColors.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          Expanded(flex:1,child: Icon(activityItem.icon.icon,color: AppColors.darkPurple,)),
          Expanded(
            flex: 2,
            child: RichText(
              text:TextSpan(
                text: activityItem.actTitle,
                style: (TextStyle(fontSize: 20, color: Colors.black,)),
                children: <InlineSpan>[
                  TextSpan(
                    text: '\n ${activityItem.actDescription}',
                    style: TextStyle(fontSize: 13,color: AppColors.darkGrey),
                  )
                ]
            ),
            textAlign: TextAlign.start,),
          ),
          Expanded(flex:1,child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.darkPurple,))
        ],
      ),
    );
  }
}
