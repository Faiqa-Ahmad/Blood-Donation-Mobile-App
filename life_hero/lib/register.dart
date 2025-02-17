import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:life_hero/routes/approuters.dart';
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_add, color: Colors.white),
              SizedBox(width: 10),
              Text("Register",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
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
                Center(
                  child: Text(
                    'Register Yourself Here',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Name',
                    hintText: 'Enter your Name',
                    border: OutlineInputBorder(),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(15),
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.card_giftcard_sharp,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'CNIC',
                    hintText: 'Enter your CNIC',
                    border: OutlineInputBorder(),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(13),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.calendar_month,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Date Of Birth',
                    hintText: 'Enter your DOB',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.male,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(value: 'Male', child: Text('Male')),
                    DropdownMenuItem(value: 'Female', child: Text('Female')),
                    DropdownMenuItem(value: 'Other', child: Text('Other')),
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(height: 20),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.location_city,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Province',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(value: 'Punjab', child: Text('Punjab')),
                    DropdownMenuItem(value: 'Sindh', child: Text('Sindh')),
                    DropdownMenuItem(value: 'Other', child: Text('Other')),
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.bloodtype,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Blood Group',
                    hintText: 'Enter your Blood Group',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,
                        color: const Color.fromARGB(255, 175, 128, 128)),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Approuters.LOGIN_PAGE);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 175, 128, 128),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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
