import 'package:bloc_counter/auth/view/widget/clip.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Stack(
                    children: [
                      Positioned(
                        top: -50,
                        right: -60,
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.3),
                              shape: BoxShape.circle,
                            )),
                      ),
                      Positioned(
                        top: -310,
                        left: -120,
                        child: Container(
                            height: 500,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.3),
                              shape: BoxShape.circle,
                            )),
                      ),
                      ClipPath(
                        clipper: ClipPainter(),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.pink,
                        ),
                      ),
                      Positioned(
                          top: 120,
                          left: MediaQuery.of(context).size.width / 2 - 50,
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            backgroundImage: AssetImage('assets/pp.jpg'),
                          )),
                    ],
                  )),
            ],
          ),
        ));
  }
}
