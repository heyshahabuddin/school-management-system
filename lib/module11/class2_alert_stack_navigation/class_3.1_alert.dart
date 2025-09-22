import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {

    // custom alert function -- start
    showAlertDialog(){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Do you want call?'),
          content: Text('Write your phone number.'),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Cancel')
            ),
            ElevatedButton(
                onPressed: (){

                },
                child: Text('Submit')
            ),
          ],
        );
      });
    }
    // custom alert function -- end

    showAlertDialogWithIcon(){
      showDialog(
          context: context,
          barrierDismissible: false,  // Disable dismiss from outside of the popup box
          builder: (context){
            return AlertDialog(
              title: Text('Install...'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning, size: 40, color: Colors.red,),
                      SizedBox(width: 5,),
                      Text('Warning'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Your spot is officially secured! Reply with "I\'m in" and I\'ll send you more resources directly into your inbox. Now, before I talk about exactly what you\'re going to learn, I want to share a perspective with you. Something I\'ve noticed after helping more than 600 people learn Cloud Engineering successfully.'),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                )
              ],
            );
          }
      );
    }

    showSimpleDialogWithOptions(){
      showDialog(
          context: context,
          builder: (context)=>SimpleDialog(
            title: Text('Simple Dialog'),
            children: [
              SimpleDialogOption(
                child: Text('Name:'),
              ),
              SimpleDialogOption(
                child: TextFormField(),
              ),
            ],
          ),
      );
    }

    showBottomSheetAlert(){
      showModalBottomSheet(
          context: context,
          builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text('Choose Options:',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text('Option 1'),
              ),
              ListTile(
                title: Text('Option 2'),
              ),
              ListTile(
                title: Text('Option 3'),
              ),
              ListTile(
                title: Text('Option 4'),
              ),
            ],
          ),
      );
    }

    showCustomDialog(){
      showDialog(
          context: context,
          builder: (context)=> Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1920px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg'),
                SizedBox(height: 50,),
                Text('This is dialog box'),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Close'),
                )
              ],
            ),
          ),
      );
    }

    showLoadingDialog(){
      showDialog(
          context: context,
          builder: (context) => Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16,),
                  Text("Loading....."),
                ],
              ),
            ),
          ),
      );
    }

    showSnackBar(){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('This is Snack Bar.'))
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Alerts',
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showAlertDialog();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Alert Dialog',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showAlertDialogWithIcon();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Alert Dialog With Icon',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showSimpleDialogWithOptions();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Simple Dialog With Options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showBottomSheetAlert();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Bottom Sheet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showCustomDialog();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Custom Dialog',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showLoadingDialog();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('Loading...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: (){
                showSnackBar();

                /*
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want call?'),
                    content: Text('Write your phone number.'),
                  );
                });
                */

              },
              child: Text('SnackBar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
