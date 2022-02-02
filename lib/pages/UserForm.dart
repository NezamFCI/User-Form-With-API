import 'package:flutter/material.dart';
import 'package:user_form_with_api/widgets/CustomDropdownButton.dart';
import 'package:user_form_with_api/widgets/Custom_Textfield.dart';
import 'package:user_form_with_api/widgets/SingleTextField.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: _height,
              width: _width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bkimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      // color: Colors.green,
                      child: const Center(
                        child: Text(
                          'User Form',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const CustomTextField(
                      labelText: 'Full Name',
                      hintText: 'Enter Your Name',
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SingleTextField(
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        SingleTextField(
                          labelText: 'Password',
                          hintText: 'Enter Your Password',
                        ),
                      ],
                    ),
                    CustomDropdownButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
