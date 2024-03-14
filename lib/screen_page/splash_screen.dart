import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamus_app/screen_page/page_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const PageLogin(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.teal, Colors.indigo],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.whatshot_outlined,
                size: 80,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              Text('German - Indonesia Dictionary',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                      fontSize: 32,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: <Color>[Colors.red, Colors.yellow],
                        ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 500.0, 70.0),
                        ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
