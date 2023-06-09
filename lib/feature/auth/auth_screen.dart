import 'package:flutter/material.dart';
import 'package:oto_moto/core/theme/app_fonts.dart';
import 'package:oto_moto/core/ui/widgets/custom_button.dart';
import 'package:oto_moto/core/ui/widgets/custom_text_field.dart';
import 'package:oto_moto/feature/registration/registration_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Введите логин и пароль'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Добро пожаловать! Введите логин и пароль',
                style: AppFonts.w700s25,
                textAlign: TextAlign.center,
              ),
              CustomTextField(
                onChanged: (val) {},
              ),
              CustomTextField(
                onChanged: (val) {},
              ),
              CustomButton(
                onPressed: () {},
                title: 'Войдите',
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                child: const Text('Регистрация'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
