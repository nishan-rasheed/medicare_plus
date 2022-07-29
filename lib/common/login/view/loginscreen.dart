import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicare_plus/common/login/bloc/login_bloc.dart';
import 'package:medicare_plus/router/app_constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginAdminSuccess) {
            Navigator.pushNamed(context, RouteConstants.dashscreen);
          } else if (state is LoginDoctorSucess) {
            Navigator.pushNamed(context, RouteConstants.drDash);
          }
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.indigo,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: 400,
                    child: Image.asset(
                      'assets/images/medi.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          hintText: '   password', border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent),
                      fixedSize: MaterialStateProperty.all(
                        const Size(150, 30),
                      ),
                    ),
                    onPressed: () {
                      _loginBloc.add(
                        LoginDoneEvent(
                            email: emailController.text,
                            password: passwordController.text),
                      );
                      // Navigator.pushNamed(context, RouteConstants.dashscreen);
                    },
                    child: const Text('login'),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is LoginFailedState) {
                        return Text(
                          state.errorMessage.toString(),
                          style: const TextStyle(color: Colors.red),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Forgot password ?',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteConstants.errorscreen);
                        },
                        child: const Text('click here'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Are you a doctor!',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteConstants.signupscreen);
                        },
                        child: const Text('Register here'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteConstants.drDash);
                        },
                        child: const Text('doctor screen'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
