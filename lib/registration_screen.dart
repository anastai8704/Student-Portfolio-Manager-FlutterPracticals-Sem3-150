import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final name = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();

  String gender = "Male";
  String course = "MCA";
  double experience = 0;
  bool flutter = false, java = false, python = false, sql = false;
  bool internship = false;
  String result = "";

  void register() {
    if (name.text.isEmpty ||
        email.text.isEmpty ||
        mobile.text.isEmpty) {
      setState(() {
        result = "Please fill all required fields";
      });
      return;
    }

    if (!email.text.contains("@") || mobile.text.length != 10) {
      setState(() {
        result = "Please enter valid email and mobile number";
      });
      return;
    }

    String skills = "";
    if (flutter) skills += "Flutter ";
    if (java) skills += "Java ";
    if (python) skills += "Python ";
    if (sql) skills += "SQL ";

    setState(() {
      result = "Registration Successful\n"
          "Name: ${name.text}\n"
          "Email: ${email.text}\n"
          "Mobile: ${mobile.text}\n"
          "Gender: $gender\n"
          "Course: $course\n"
          "Skills: $skills\n"
          "Experience: ${experience.toInt()} years\n"
          "Internship: ${internship ? "Yes" : "No"}";
    });
  }

  void clear() {
    name.clear();
    email.clear();
    mobile.clear();

    setState(() {
      gender = "Male";
      course = "MCA";
      experience = 0;
      flutter = false;
      java = false;
      python = false;
      sql = false;
      internship = false;
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Full Name"),
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: mobile,
              decoration: const InputDecoration(labelText: "Mobile Number"),
            ),

            Row(
              children: [
                const Text("Gender: "),
                Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (v) => setState(() => gender = v!),
                ),
                const Text("Male"),
                Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (v) => setState(() => gender = v!),
                ),
                const Text("Female"),
              ],
            ),

            DropdownButton(
              value: course,
              items: ["MCA", "BCA", "MBA"].map((c) {
                return DropdownMenuItem(
                  value: c,
                  child: Text(c),
                );
              }).toList(),
              onChanged: (v) => setState(() => course = v!),
            ),

            CheckboxListTile(
              title: const Text("Flutter"),
              value: flutter,
              onChanged: (v) => setState(() => flutter = v!),
            ),
            CheckboxListTile(
              title: const Text("Java"),
              value: java,
              onChanged: (v) => setState(() => java = v!),
            ),
            CheckboxListTile(
              title: const Text("Python"),
              value: python,
              onChanged: (v) => setState(() => python = v!),
            ),
            CheckboxListTile(
              title: const Text("SQL"),
              value: sql,
              onChanged: (v) => setState(() => sql = v!),
            ),

            const Text("Experience Level"),

            Slider(
  value: experience,
  min: 0,
  max: 5,
  divisions: 5,
  label: "${experience.toInt()} years",
  onChanged: (v) {
    setState(() {
      experience = v;
    });
  },
),

            SwitchListTile(
              title: const Text("Available for Internship"),
              value: internship,
              onChanged: (v) => setState(() => internship = v),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: register,
                  child: const Text("Register"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: clear,
                  child: const Text("Clear"),
                ),
              ],
            ),

            const SizedBox(height: 15),

            GestureDetector(
              onTap: () {},
              child: Text(
                result,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}