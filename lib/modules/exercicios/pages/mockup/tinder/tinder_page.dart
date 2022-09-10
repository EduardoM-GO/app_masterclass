import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFe84b75),
              Color(0xFFe9566f),
              Color(0xFFeb6468),
              Color(0xFFed7363),
              Color(0xFFed7363),
            ],
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(''),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      Image.asset('assets/logos/tinder.png').image,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'tinder',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -3.5),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'By tapping Create Account or Sign In, you agree to our',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Terms',
                          style: GoogleFonts.montserrat(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: '. Learn how we process you data in our ',
                        ),
                        TextSpan(
                          text: 'Privacy',
                          style: GoogleFonts.montserrat(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Policy',
                          style: GoogleFonts.montserrat(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: ' and ',
                        ),
                        TextSpan(
                          text: 'Cookies Policy',
                          style: GoogleFonts.montserrat(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: FaIcon(FontAwesomeIcons.apple, size: 18))),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'SIGN IN WITH APPLE',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FaIcon(FontAwesomeIcons.facebook, size: 18),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'SIGN IN WITH FACEBOOK',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: FaIcon(FontAwesomeIcons.solidComment,
                                  size: 15))),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'SIGN IN WITH PHONE NUMBER',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
                const SizedBox(height: 4.0),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Trouble Signing In?',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
