import 'package:floqast_banner/constants.dart';
import 'package:flutter/material.dart';

class FloqastForm extends StatelessWidget {
  const FloqastForm({
    Key? key,
  }) : super(key: key);

  String? validateEmail(String? email) {
    final emailPattern = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (email == null || email.isEmpty) {
      return 'Field cannot be blank.';
    } else if (!emailPattern.hasMatch(email)) {
      return 'Invalid email.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final fKey = GlobalKey<FormState>();
    final nameCtrl = TextEditingController();
    final emailCtrl = TextEditingController();

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800, minHeight: 80),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      "Schedule a Demo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Learn more about Floqast.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Learn How FloQast can '),
                        TextSpan(
                          text: 'Improve Your Month-End.',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: fKey,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Feild cannot be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            validator: validateEmail,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            if (fKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(const SnackBar(
                                    content: Text("Schedule Created")));
                            }
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                          ),
                          child: const Text(
                            "Schedule Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
