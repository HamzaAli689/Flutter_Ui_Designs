import 'package:flutter/material.dart';
import '../utility/app_constant.dart';

const PHONE_AUTH_HELPER = "Your mobile";


class LoginForm extends StatelessWidget {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.3, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: _buildTextFormUsername(context),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    color: Colors.grey,
                    height: 1,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: _buildTextFormPassword(context),
                )
              ],
            ),
          ),
        )
    );
  }

  Widget _buildTextFormUsername(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration:  InputDecoration(
        border: InputBorder.none,
        hintText: "User Name",
        hintStyle:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
        icon: const Icon(
          Icons.person,
          color: Colors.black87,
        ),
        contentPadding: EdgeInsets.zero,
      ),
      keyboardType: TextInputType.text,
      controller: userNameController,
      validator: (val) => val?.length == 0
          ? PHONE_AUTH_VALIDATION_EMPTY
          : val!.length < 10 ? PHONE_AUTH_VALIDATION_INVALID : null,
    );
  }

  Widget _buildTextFormPassword(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Password",
          hintStyle:
              Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          contentPadding: EdgeInsets.zero,
          icon: const Icon(Icons.lock, color: Colors.black87)),
      keyboardType: TextInputType.text,
      controller: passwordController,
      obscureText: true,
      validator: (val) => val?.length == 0
          ? PHONE_AUTH_VALIDATION_EMPTY
          : val!.length < 10 ? PHONE_AUTH_VALIDATION_INVALID : null,
    );
  }
}
