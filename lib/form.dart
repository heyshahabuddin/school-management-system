import 'package:flutter/material.dart';
class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Declaring form fields controller
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    // Declaring form's key to identify the form uniquely from multiple forms within a single page
    final _userFormKey= GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
          title: Text('User Form', style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network('https://www.rokomari.com/static/200/images/logo.png',
            width: 300,
            height: 100,
          ),
          //Image.asset('assets/logo.png'),
          SizedBox(height: 60,),
          Text("Login with Phone and Password:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),

          // form widget
          Form(
            key: _userFormKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: 'Phone Number:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please Enter Your Phone Number';
                        } else if(value.length != 11){
                          return 'Phone number must be at least 11 characters';
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please Enter Your Password';
                        } else if(value.length < 8){
                          return 'Password must be at least 8 characters';
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 50,
                      //width: 200,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          if(_userFormKey.currentState!.validate()){
                            print(phoneController.text);
                            print(passwordController.text);
                            phoneController.clear();
                            passwordController.clear();
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        child: Text('Submit', style: TextStyle(fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              )
          ),

          // Container Widget
          Container(
            height: 70,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              border: Border.all(
                width: 5,
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  offset: Offset(20, 10)
                ),
                BoxShadow(
                  color: Colors.red.withOpacity(.2),
                  offset: Offset(10, 12)
                )
              ],
            ),
            child: Text('This is container.', style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // card widget
          SizedBox(height: 50,),
          Card(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Simple Card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
                        ),
            ),
          ),
          SizedBox(height: 50,),
          Card(
            child: Container(
              width: 300,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,

              ),
              child: Text('Card container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
