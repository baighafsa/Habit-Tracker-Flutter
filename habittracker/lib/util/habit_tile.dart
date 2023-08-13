import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final VoidCallback onTap;
  final VoidCallback settingTapped;
  final int timeSpent;
  final int timeGoal;
  final bool habitStarted;

  const HabitTile({Key? key, required this.habitName,
    required this.onTap,
    required this.settingTapped,
    required this.timeSpent,
    required this.timeGoal,
    required this.habitStarted,
  }) : super(key: key);
// convert seconds into min:sec -> 62 sec = 1:02
  String formatToMinSec(int totalSeconds){
    String sec=(totalSeconds % 60).toString();
    // 62 % 60 = 2
    String mins= (totalSeconds / 60).toStringAsFixed(5);
    // if sec is a 1 digit number, place a 0 infromt of it
    if(sec.length==1){
      sec='0'+sec;
    }
    // 59 seconds -> 0:59
    // (59 / 60).toStringAsFixed(1) = 0.9 so,

    if(mins[1]=='.'){
      mins=mins.substring(0,1);
    }
    return mins + ':' + sec;
  }
  // calculate progress percentage
  double percentCompleted(){
    return timeSpent / (timeGoal*60);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // progress cirlcle
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: SizedBox(

                      height: 60,
                      width: 60,
                      child: Stack(
                        children: [
                          CircularPercentIndicator(
                            radius: 60,
                            percent:
                            percentCompleted() < 1 ? percentCompleted() : 1,
                            progressColor: percentCompleted() > 0.5
                            ?(percentCompleted() > 0.75
                            ? Colors.green
                            : Colors.orange)
                            : Colors.red,
                          ),
                          //play pause button
                          Center(
                            child: Icon(habitStarted ? Icons.pause : Icons.play_arrow),
                          )
                        ],
                      )),
                ),

              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //habit names

                  Text(
                    habitName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // progress

                  Text(
                   formatToMinSec(timeSpent)  +
                       ' / ' + timeGoal.toString() +
                       ' = ' + (percentCompleted()*100).toStringAsFixed(0) +
                       '%',
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 4),
                ],
              ),
            ],
          ),
          GestureDetector(
              onTap: settingTapped,
              child: Icon(Icons.settings)),
        ]),
      ),
    );
  }
}
