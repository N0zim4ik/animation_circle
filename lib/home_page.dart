import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter something!';
                    } else if (value.length < 6) {
                      return 'Email length must be greater then 6 characters';
                    } else if (!value.contains('@')) {
                      'Email must be contains @';
                    } else if (!value.contains('.')) {
                      return 'Email must be contains .';
                    } else if (value.substring(value.indexOf('.')).length < 2) {
                      return 'There was a mistake at the and of email';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter something!';
                    } else if (value.length < 8) {
                      return 'Email length must be greater then 6 characters';
                    } else if (value.contains(RegExp(r'[0-9]'))) {
                      'Password most be number';
                    } else if (value.contains(RegExp(r'[a-zA-Z]'))) {
                      return 'Password most be contains latter';
                    } else if (value.substring(value.indexOf('.')).length < 2) {
                      return 'Password most be contains latter';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FilledButton(
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      print('Every ');
                    }
                  },
                  child: const Text('Sign in'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
