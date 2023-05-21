// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/register_view.dart';
import 'package:mynotes/utilities/scaffold_wrapper.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
    routes: {
      '/login/': (context) => const LoginView(),
      '/register/': (context) => const RegisterView(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            // if (user != null && user.emailVerified) {
            //   print("email Verified");
            //   return const LoginView();
            // } else if (user != null && !user.emailVerified) {
            //   return const VerifyEmailView();
            // } else {
            //   return const LoginView();
            // }
            if (user != null) {
              if (user.emailVerified) {
                print("Email Is Verified");
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView();
            }
            return const Center(
              child: Text("done"),
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      title: "Verify Email",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Text("Verify Your email"),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text("Send Verification email"),
          ),
          ElevatedButton(
            onPressed: () {
              print(FirebaseAuth.instance.currentUser);
            },
            child: const Text("Check User Object"),
          ),
        ],
      ),
    );
  }
}
