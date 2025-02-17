import 'package:flutter/material.dart';
import 'package:life_hero/routes/approuters.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, color: Colors.white),
            SizedBox(width: 10),
            Text("Login", style: TextStyle(fontSize: 25, color: Colors.white)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 175, 128, 128),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Username:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Enter your username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Password:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Approuters.REQUEST_PAGE);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 175, 128, 128),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text("Login",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Approuters.REGISTER_PAGE);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text("Register",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Text(
                  'App version and copyright',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
