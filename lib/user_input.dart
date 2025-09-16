import 'package:flutter/material.dart';
class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
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
            SizedBox(height: 30,),
            TextField(
              controller: phoneController,
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
            SizedBox(height: 30,),
            SizedBox(
              height: 60,
              //width: 200,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  print(phoneController.text);
                  print(passwordController.text);
                  phoneController.clear();

                },
                child: Text('Submit', style: TextStyle(fontSize: 25),),
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
      ),
    );
  }
}
