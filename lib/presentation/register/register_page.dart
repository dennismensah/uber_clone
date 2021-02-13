import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber_clone/application/auth/register_form/register_form_bloc.dart';
import 'package:uber_clone/injection.dart';
import 'package:uber_clone/presentation/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: CircleAvatar(radius: 10.0,),
      //   backgroundColor: Colors.white,
      //   title: const Text('Register',style: TextStyle(color: Colors.black),),
      //   elevation: 0.0,
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      body: BlocProvider(
        create: (context) => getIt<RegisterFormBloc>(),
        child: RegisterForm(),
      ),
    );
  }
}
