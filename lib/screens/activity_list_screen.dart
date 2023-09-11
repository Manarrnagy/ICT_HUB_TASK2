import 'package:flutter/material.dart';
import 'package:task2/app_colors.dart';
import 'package:task2/components.dart';

import '../model/activity_model.dart';
import 'activity_details_screen.dart';

class ActivityListScreen extends StatefulWidget {
  ActivityListScreen({super.key});

  @override
  State<ActivityListScreen> createState() => _ActivityListScreenState();
}

class _ActivityListScreenState extends State<ActivityListScreen> {
  final List<ActivityDM> activityItems = [
    ActivityDM("Idea", "test test1", Icon(Icons.lightbulb_outline)),
    ActivityDM("Food", "test test2", Icon(Icons.fastfood_outlined)),
    ActivityDM("Work", "test test3", Icon(Icons.my_library_books_outlined)),
    ActivityDM("Sport", "test test4", Icon(Icons.sports_gymnastics_outlined)),
    ActivityDM("Music", "test test5", Icon(Icons.music_note_outlined)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose activity",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  itemCount: activityItems.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ActivityDetails(
                              activityItem: this.activityItems[i],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: MediaQuery.of(context).size.height * 0.14,
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        //  child: ListTile(
                        //    onTap: (){
                        //      Navigator.of(context).push(MaterialPageRoute(
                        //          builder: (context) => ActivityDetails(
                        //            activityItem: this.activityItems[i],
                        //          )));
                        //    },
                        //    minVerticalPadding: 25,
                        //    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        //    tileColor: AppColors.lightGrey,
                        //    splashColor: Colors.lightBlueAccent,
                        //    title:Text("${activityItems[i].actTitle}",style: TextStyle(fontWeight: FontWeight.bold),),
                        //    subtitle: Text("${activityItems[i].actDescription}",style: TextStyle(color: AppColors.darkGrey),),
                        //    leading:Icon(activityItems[i].icon.icon, color: AppColors.darkPurple,) ,
                        //    trailing: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.darkPurple,),
                        //  ),
                        child:
                            AppComponents.listItems(context, activityItems[i]),
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  backgroundColor: AppColors.darkPurple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
