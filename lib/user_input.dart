import 'package:flutter/material.dart';
class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //padding: const EdgeInsets.all(30),
            padding: const EdgeInsets.only(left: 10, right: 15, top: 30, bottom: 30),
            child: TextField(
              maxLength: 11,
              cursorColor: Colors.grey,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                ),
                helperText: 'Phone Number',
                labelText: 'Your Phone Number:',
                prefix: Icon(Icons.phone),
                suffix: Icon(Icons.check),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    )
                ),//
                filled: true,
                fillColor: Colors.grey.shade200,
                contentPadding: EdgeInsets.all(20),

              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //padding: const EdgeInsets.all(30),
            padding: const EdgeInsets.only(left: 10, right: 15, top: 30, bottom: 30),
            child: TextField(
              obscureText: true,
              //maxLength: 11,
              cursorColor: Colors.grey,
              //keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                ),
                helperText: 'Password',
                labelText: 'Your Password:',
                prefix: Icon(Icons.lock),
                suffix: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    )
                ),//
                filled: true,
                fillColor: Colors.grey.shade200,
                contentPadding: EdgeInsets.all(20),

              ),
            ),
          ),
          SizedBox(
            height: 60,
            //width: 200,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
