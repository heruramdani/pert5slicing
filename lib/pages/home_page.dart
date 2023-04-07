import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget KotakMerah() {
      return Container(
        margin: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Colors.blue),
      );
    }

    Widget KotakHijau() {
      return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Colors.green),
      );
    }

    Widget KotakBiru() {
      return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Colors.blue),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KotakMerah(),
                      KotakMerah(),
                      KotakMerah(),
                      KotakMerah(),
                      KotakMerah(),
                      KotakMerah(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      KotakHijau(),
                      KotakHijau(),
                      KotakHijau(),
                      KotakHijau()
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      KotakBiru(),
                      KotakBiru(),
                      KotakBiru(),
                      KotakBiru(),
                      KotakBiru(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
