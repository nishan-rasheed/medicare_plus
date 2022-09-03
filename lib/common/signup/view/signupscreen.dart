import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicare_plus/common/signup/bloc/signup_bloc.dart';
import 'package:medicare_plus/router/app_constants.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final expController = TextEditingController(text: '');
  final departController = TextEditingController(text: '');
  final phoneController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  SignupBloc _signupBloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupBloc,
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignuppDoneState) {
            Navigator.pushNamed(context, RouteConstants.loginscreen);
            
          }
        },
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    left: 25, right: 25, top: 50, bottom: 40),
                child: const Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: '  Full Name',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: '  email', border: InputBorder.none),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: expController,
                  decoration: const InputDecoration(
                    hintText: '  experience',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: departController,
                  decoration: const InputDecoration(
                    hintText: '  department',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    hintText: '  phone',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: '  password',
                    border: InputBorder.none,
                  ),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: () {
                    _signupBloc.add(SignupDoneEvent(
                      name: nameController.text, 
                      email: emailController.text, 
                      exp: expController.text, depart: 
                      departController.text, 
                      phone: phoneController.text, 
                      password: passwordController.text,),);
                  },
                  child: const Text('submit data'),
                ),
              ),
              //  const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already varified ?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteConstants.loginscreen);
                    },
                    child: const Text('login here'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
