import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/shared/themes.dart';
import 'package:flutter_dicodingone/ui/widgets/buttons.dart';
import 'package:flutter_dicodingone/ui/widgets/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 150,
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 50,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo_netit.png',
                ),
              ),
            ),
          ),
          Text(
            'Sign In',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                const CustomeFormField(
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomeFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomeFiledButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
