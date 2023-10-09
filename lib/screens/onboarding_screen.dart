import 'package:flutter/material.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/widgets/onboarding_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var controller = LiquidController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            LiquidSwipe(
                liquidController: controller,
                enableLoop: false,
                fullTransitionValue: 300,
                waveType: WaveType.liquidReveal,
                onPageChangeCallback: (page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                pages: [
                  OnboardingPage(
                    page: 1,
                    color: kBlueColor,
                    titulo: "What is JockSports?",
                    description:
                        "JockSports is a betting app where users can bet on their favorite sports. We offer a secure way to bet and withdrawal your earnings. Welcome to the JockSports family.",
                    img: "assets/images/jock_sports_logo.png",
                  ),
                  OnboardingPage(
                      page: 2,
                      color: kGreenColor,
                      titulo: "Bet Live",
                      description:
                          "JockSports offers an easy and secure way to Bet Live. Be careful with your bets. Once you place a bet it can´t be cancelled. Please check all of our terms.",
                      img: "assets/animations/confirm.json"),
                  OnboardingPage(
                      page: 3,
                      color: kRedColor,
                      titulo: "Withdrawal your Earnings",
                      description:
                          "On JockSports you can easily and safely withdrawal your earnings, Just go to the History Tab and follow the withdrawal process. (Make sure to check all of our Terms)",
                      img: "assets/animations/trophy2.json"),
                  /*OnboardingPage(
                      page: 4,
                      color: Colors.orange,
                      titulo: "Toolkit (Mapa)",
                      description:
                          "Te brindamos un mapa interactivo en el cual podrás ver todos los casos registrados (la última ubicacion donde fue vista una persona).",
                      img: "assets/images/jock_sports_logo.png"),
                  OnboardingPage(
                      page: 5,
                      color: Colors.orange,
                      titulo: "Toolkit (Filtros)",
                      description:
                          "Podrás filtrar entre casos activos (personas que siguen extraviadas) y casos cerrados (personas que fueron encontradas).",
                      img: "assets/images/jock_sports_logo.png"),
                  OnboardingPage(
                      page: 6,
                      color: Colors.orange,
                      titulo: "Toolkit (Post)",
                      description:
                          "Si en algún momento te ves en la necesidad de registrar un caso dentro de la app, deberás llenar un formulario con el nombre completo de la persona, su descripción física, la fecha de desaparición (puede ser anterior al día de registro), un teléfono de contacto (tuyo o de algún familiar) y deberás marcar en el mapa una ubicación aproximada de dónde estuvo por última vez la persona.",
                      img: "assets/images/jock_sports_logo.png"),
                  OnboardingPage(
                      page: 7,
                      color: Colors.orange,
                      titulo: "Es el inicio",
                      description:
                          "Nuestro equipo trabaja para futuras implementaciones que aporten más a la app, si tienes alguna idea que te gustaría que se añada, no dudes en hacérnosla llegar, estaremos felices de implementarla y así tener un mayor impacto positivo.",
                      img: "assets/images/jock_sports_logo.png"),
                  OnboardingPage(
                      page: 8,
                      color: Colors.orange,
                      titulo: "FIND ME!",
                      description:
                          "Gracias por sumarte a este proyecto, haz un buen uso de él.",
                      img: "assets/images/jock_sports_logo.png"),*/
                ]),
            if (this.currentIndex < 2)
              Positioned(
                  bottom: 10.h,
                  right: 10.w,
                  child: IconButton(
                      onPressed: () {
                        controller.animateToPage(
                            page: controller.currentPage + 1, duration: 500);
                      },
                      icon:
                          Icon(Icons.arrow_forward_ios, color: Colors.white))),
            if (this.currentIndex > 0)
              Positioned(
                  bottom: 10.h,
                  left: 10.w,
                  child: IconButton(
                      onPressed: () {
                        controller.animateToPage(
                            page: controller.currentPage - 1, duration: 500);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
            if (this.currentIndex < 2)
              Positioned(
                top: 20.h,
                right: 10.w,
                child: SizedBox(
                  width: 100.w,
                  height: 50.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r))),
                    onPressed: () {
                      controller.jumpToPage(page: 2);
                    },
                    child: Text("Skip",
                        style: kWhiteText.copyWith(
                            fontSize: 14.sp, color: Colors.black)),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
