import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/flutter_projects/designthree/lib/Taps/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formkey = GlobalKey<FormState>();
  final scaffodkey = GlobalKey<ScaffoldState>();
  final mycontroller = TextEditingController();
  final mycontroller2 = TextEditingController();
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title:Text("Login")),
      body: SingleChildScrollView(
        child: Container(
          height: 780,
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.all(25),
                    width: 320,
                    height: 230.0,
                    child: Image.asset('images/new.jpg')),
                Form(
                  key: formkey,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: 370,
                          child: TextFormField(
                            cursorRadius: Radius.circular(55.0),
                            keyboardType: TextInputType.emailAddress ,
                            controller: mycontroller,
                            autofocus: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              prefixIcon: Icon(Icons.email),
                                hintText: " Enter your Email",
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            validator: (value){
                              if(value.isEmpty){return "Name required";}
                              else { return null;}
                            },
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        Container(
                          width: 370,
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword ,
                            controller: mycontroller2,
                            autofocus: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.visibility_off),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Enter your Password",
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            validator: (value){
                              if(value.isEmpty){return "Pass required";}
                              else { return null;}
                            },
                          ),
                        ),

                        Row(
                          children: [
                          Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: this.valuefirst,
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst = value;
                            });
                          },
                        ),
                            Text("Remember me")
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25.0),
                          width: 440.0,
                          child: FlatButton(
                            color: Colors.blue,
                            child: Text("Log in",style: TextStyle(fontSize: 25.0),),
                            onPressed: (){
                              if(formkey.currentState.validate())
                                if(mycontroller.text=="Shoakk2015@gmail.com")
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Second()));
                                else{
                                  Fluttertoast.showToast(
                                      msg: 'invalid email or password',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      webShowClose: true,
                                      textColor: Colors.blue
                                  );
                                }
                              }



),
                        ),

                        Container(margin: EdgeInsets.only(right: 283.0),child: Text("Lost Password ?")),
                        SizedBox(height: 8.0,),

                        Row(
                          children: [
                            Text("Don't have an Account?"),
                            SizedBox(width: 30.0,),
                            Text("Sign up",style: TextStyle(color: Colors.blue),),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
