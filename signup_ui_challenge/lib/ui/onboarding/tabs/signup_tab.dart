import 'package:flutter/material.dart';

import '../../../component/logo_text.dart';
import '../../../component/rounded_button.dart';

import '../../../component/trapezoid_up_cut.dart';
import '../../../utility/app_constant.dart';
import '../../../utility/color_utility.dart';


class SignUpTab extends StatelessWidget {
  final Function onPressed;

  SignUpTab({required this.onPressed});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.0,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.0),
      child: Stack(
        children: <Widget>[
          TrapezoidUpCut(
            child: Stack(
              children: <Widget>[
                Material(
                  elevation: 16,
                  child: Container(
                      height: double.infinity,
                      color: Colors.white,
                      child: _buildForm(size, textTheme)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 24,
            left: 12,
            child: InkWell(
              onTap: (){onPressed();},
              child: Material(
                  elevation: 0.0,
                  shape: CircleBorder(),
                  color: Colors.pinkAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm(Size size, TextTheme textTheme) {
    return Padding(
        padding: EdgeInsets.only(top: size.height * 0.15, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: LogoText(),
                ),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: _buildTextFormUsername(textTheme),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: _buildTextFormPassword(textTheme),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: _buildTextFormPassword(textTheme),
                ),
                SizedBox(
                  height: 48,
                ),
                Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: size.width * 0.05),
                    child: Container(
                      width: 200,
                      child: RoundedButton(
                        text: BUTTON_SIGNUP,
                        onPressed: onPressed,
                        linearGradient: LinearGradient(
                          begin: FractionalOffset.bottomLeft,
                          end: FractionalOffset.topRight,
                          colors: <Color>[
                            Color(getColorHexFromStr("#FF7539")),
                            Color(getColorHexFromStr("#FE6763")),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildTextFormUsername(TextTheme textTheme) {
    return TextFormField(
      style:
          textTheme.titleLarge?.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: new InputDecoration(
        hintText: EMAIL_AUTH_HINT,
        hintStyle: textTheme.bodyMedium?.copyWith(color: Colors.grey),
        suffixIcon: Icon(
          Icons.person,
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.text,
      controller: userNameController,
      validator: (val) => val?.length == 0
          ? EMAIL_AUTH_VALIDATION_EMPTY
          : val!.length < 10 ? EMAIL_AUTH_VALIDATION_INVALID : null,
    );
  }

  Widget _buildTextFormPassword(TextTheme textTheme) {
    return TextFormField(
      style:
          textTheme.titleLarge?.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: new InputDecoration(
          hintText: PASSWORD_AUTH_HINT,
          fillColor: Colors.grey,
          hintStyle: textTheme.bodyMedium?.copyWith(color: Colors.grey),
          suffixIcon: Icon(Icons.lock, color: Colors.grey)),
      keyboardType: TextInputType.text,
      controller: passwordController,
      obscureText: true,
      validator: (val) => val?.length == 0
          ? EMAIL_AUTH_VALIDATION_EMPTY
          : val!.length < 10 ? EMAIL_AUTH_VALIDATION_INVALID : null,
    );
  }
}
