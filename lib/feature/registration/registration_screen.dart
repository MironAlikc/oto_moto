import 'package:flutter/material.dart';
import 'package:oto_moto/core/theme/app_fonts.dart';
import 'package:oto_moto/core/ui/widgets/custom_button.dart';
import 'package:oto_moto/core/ui/widgets/custom_text_field.dart';
import 'package:oto_moto/feature/auth/auth_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                'Введите код потверждения',
                style: AppFonts.w700s25,
                textAlign: TextAlign.center,
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
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                },
                child: Text(''),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
