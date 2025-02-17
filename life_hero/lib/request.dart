import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var elevatedButton = ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 175, 128, 128),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      ),
      child: Text("Submit Request",
          style: TextStyle(fontSize: 18, color: Colors.white)),
    );
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bloodtype, color: Colors.white),
            SizedBox(width: 10),
            Text("Request for Blood",
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
              // Blood Group Dropdown
              Text(
                "Blood Group:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  icon: Icon(Icons.bloodtype,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Select Blood Group",
                  border: OutlineInputBorder(),
                ),
                items: ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"]
                    .map((blood) =>
                        DropdownMenuItem(value: blood, child: Text(blood)))
                    .toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 20),

              // Cell Number TextField
              Text(
                "Cell Number:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [LengthLimitingTextInputFormatter(11)],
                decoration: InputDecoration(
                  icon: Icon(Icons.phone,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Enter your cell number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // City TextField
              Text(
                "City:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.location_city,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Enter your city",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Province:",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  icon: Icon(Icons.map,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Select Province",
                  border: OutlineInputBorder(),
                ),
                items: [
                  "Punjab",
                  "Sindh",
                  "Khyber Pakhtunkhwa",
                  "Balochistan",
                  "Gilgit-Baltistan"
                ]
                    .map((province) => DropdownMenuItem(
                        value: province, child: Text(province)))
                    .toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 20),

              // For Need (Accident, Operation, etc.) TextField
              Text(
                "For Need (Accident, Operation, etc.):",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 175, 128, 128)),
              ),
              SizedBox(height: 8),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  icon: Icon(Icons.text_fields,
                      color: const Color.fromARGB(255, 175, 128, 128)),
                  labelText: "Details about the need",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

              Center(
                child: elevatedButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
