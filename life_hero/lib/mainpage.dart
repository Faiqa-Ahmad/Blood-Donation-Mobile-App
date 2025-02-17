import 'package:flutter/material.dart';
import 'package:life_hero/routes/approuters.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 240, 240),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers the content vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
          children: [
            Row(
              mainAxisSize: MainAxisSize.min, // Keeps the Row's width minimal
              children: [
                Icon(Icons.bloodtype,
                    color: const Color.fromARGB(255, 0, 0, 0), size: 30),
                SizedBox(width: 10),
                Text(
                  "Life Hero",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50), // Adds space between the title and the button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Approuters.LOGIN_PAGE);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 175, 128, 128),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
