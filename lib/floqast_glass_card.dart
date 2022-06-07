import 'dart:ui';

import 'package:flutter/material.dart';

class FloqastGlassCard extends StatelessWidget {
  const FloqastGlassCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: size.width > 800 ? Alignment.topRight : Alignment.center,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: size.width > 800
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              : BorderRadius.circular(20),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: size.width * .6,
              minHeight: 180.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20),
              alignment:
                  size.width > 800 ? Alignment.centerLeft : Alignment.center,
              child: Column(
                crossAxisAlignment: size.width > 800
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/floqast-logo.png',
                    scale: size.width > 800 ? 4 : 8,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      Text(
                        'The',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Fastest, Most Accurate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff8bc540),
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Way To Close Your Books!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
