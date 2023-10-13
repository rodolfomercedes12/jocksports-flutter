import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/models/bet_results_model.dart';
import 'package:jock_sports_app/widgets/bet_list_dialog.dart';

class BetResultsDialog extends StatelessWidget {
  const BetResultsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            20.r), // Ajusta el valor según tus preferencias
      ),
      content: Container(
          width: 350.w, // Ancho personalizado
          height: 400.h,
          // Alto personalizado
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  //color: Colors.blue,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          left: -10,
                          top: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel,
                              color: Colors.grey,
                              size: 35.sp,
                            ),
                          )),
                      Positioned(
                          left: 72,
                          top: -90,
                          child: Image.asset(
                            "assets/images/jock_sports_logo.png",
                            width: 150.w,
                            height: 150.h,
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  //color: Colors.teal,
                  child: Center(
                    child: Text(
                      "YOUR BET RESULTS",
                      style: kBlueText.copyWith(fontSize: 23.sp),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.sp, color: Colors.grey),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: BetListDialog([
                    BetResult(
                        teamOneName: "VIKINGS",
                        teamTwoName: "LIONS",
                        teamOneImg: "assets/images/vikings.png",
                        teamTwoImg: "assets/images/lions4.png",
                        teamOneColor: Color.fromRGBO(57, 27, 116, 1),
                        teamTwoColor: Color.fromRGBO(24, 96, 173, 1),
                        betTitle: "VIKINGS -8 VS LIONS",
                        userBetTeam: "VIKINGS",
                        betNumbers: "-8 -110",
                        betStatus: "lose"),
                    BetResult(
                        teamOneName: "FALCONS",
                        teamTwoName: "EAGLES",
                        teamOneImg: "assets/images/falcons.png",
                        teamTwoImg: "assets/images/eagles.png",
                        teamOneColor: Colors.black,
                        teamTwoColor: kGreyColor,
                        betTitle: "FALCONS -15 VS EAGLES",
                        userBetTeam: "EAGLES",
                        betNumbers: "-120 -6",
                        betStatus: "win")
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
