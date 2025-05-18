import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:news_app/shared/colors_and_themes/color.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body
        child: Center( // Centers the content horizontally
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Aligns content at the top of the screen
            children: [
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/nour.jpg'),
                      ),
                      SizedBox(
                        width: 25.0, // Adds space between the image and the text
                      ),
                      Text(
                        'Noureldeen Salama',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold, // Optional: makes the text bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),// user
              SizedBox(height: 30),
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      Icon(
                          FluentIcons.person_32_filled,
                        size: 60,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                          'Account Settings',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                          FluentIcons.arrow_right_32_filled,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 60,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FluentIcons.arrow_right_32_filled,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      Icon(
                        FluentIcons.local_language_16_filled,
                        size: 55,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Language Preference',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FluentIcons.arrow_right_32_filled,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      Icon(
                        FluentIcons.chat_help_20_filled,
                        size: 55,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FluentIcons.arrow_right_32_filled,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                elevation: 15, // Optional: adds shadow to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Optional: adds rounded corners
                ),
                shadowColor: Colors.teal[300],
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Padding around the card
                  child: Row( // Row to place image and text side by side
                    children: [
                      Icon(
                        FluentIcons.info_20_filled,
                        size: 55,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'About',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FluentIcons.arrow_right_32_filled,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );    // return Card(
    //   child: Center(
    //     child: Container(
    //       width: 30,
    //       height: 30,
    //       // padding: const EdgeInsets.all(20.0),
    //       child: Column(
    //           children: [
    //             CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/nour.jpg'),
    //             ),
    //             SizedBox(
    //               width: 15.0,
    //             ),
    //             Text(
    //                 'Noureldeen Salama',
    //               style: TextStyle(
    //                 fontSize: 20
    //               ),
    //             ),
    //           ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
