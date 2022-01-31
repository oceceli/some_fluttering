import 'package:flutter/material.dart';
import 'package:onboarding/views/widgets/text_field_custom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.lunch_dining),
      //   centerTitle: true,
      //   title: const Text('Giriş yap'),
      // ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldCustom(
                  hintText: 'Kullanıcı adı',
                  prefixIcon: Icons.account_circle_sharp,
                ),
                TextFieldCustom(
                  hintText: 'Şifre',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
