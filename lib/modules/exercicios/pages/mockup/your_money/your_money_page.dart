import 'package:app_masterclass/modules/exercicios/pages/mockup/your_money/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class YourMoneyPage extends StatelessWidget {
  const YourMoneyPage({Key? key}) : super(key: key);

  final Color backgroundColor = Colors.black;
  final Color primaryColor = const Color.fromARGB(250, 94, 92, 229);
  final Color secondaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final sizeTela = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: LogoWidget(cor: primaryColor),
              ),
              const SizedBox(height: 36),
              Text(
                'Get your Money\nUnder Control',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 18),
              const Text(
                'Manage your expenses.\nSeamlessy.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: sizeTela.height * 0.12),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign Up with Email ID',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: Image.asset(
                          'assets/logos/G_google.png',
                        ).image,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign Up with Email ID',
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(secondaryColor),
                ),
              ),
              const SizedBox(height: 36),
              TextButton(
                onPressed: () {},
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: secondaryColor, fontSize: 16),
                    children: const [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
