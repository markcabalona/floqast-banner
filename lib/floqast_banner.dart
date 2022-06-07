import 'package:floqast_banner/constants.dart';
import 'package:floqast_banner/floqast_form.dart';
import 'package:floqast_banner/floqast_glass_card.dart';
import 'package:flutter/material.dart';

class FloqastBanner extends StatelessWidget {
  const FloqastBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/floqast-bg.png'),
            fit: size.width < 800 ? BoxFit.fitHeight : BoxFit.fill,
            alignment: const Alignment(-.90, 0),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: FloqastGlassCard(),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FloqastForm(),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
