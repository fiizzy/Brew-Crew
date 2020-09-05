import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Login Page"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            // key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!value.contains('@')) {
                      return 'Enter a valid email address';
                    } else
                      return '';
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter email address',
                      border: const OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  obscureText: true,
                  validator: (value) {
                    if (value.length < 8) {
                      return 'Password must be at least 8 Characters';
                    } else
                      return '';
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      border: const OutlineInputBorder()),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text('LOGIN BUTTON'))),
                  onPressed: () {
                    // formKey.currentState.validate();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
