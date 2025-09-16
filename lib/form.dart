import 'package:flutter/material.dart';
class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                        child: Text('Submit', style: TextStyle(fontSize: 20),),
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
              )
          )
        ],
      ),
    );
  }
}
