import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber_clone/application/auth/auth_bloc.dart';
import 'package:uber_clone/application/auth/register_form/register_form_bloc.dart';
import 'package:uber_clone/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:uber_clone/presentation/core/auth_header_widget.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';
import 'package:sizer/sizer.dart';
import 'package:uber_clone/presentation/sign_in/widgets/sign_in_form.dart';

class RegisterForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userType = useState(0);
    return SingleChildScrollView(
      child: Column(
        children: [
          const AuthHeader(title: 'Register'),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            width: 100.0.w,
            margin: EdgeInsets.symmetric(horizontal: 7.0.w),
            height: 80.0,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => userType.value = 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: userType.value == 1
                          ? Colors.transparent
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 0.5.w),
                    alignment: Alignment.center,
                    width: 42.5.w,
                    height: 70.0,
                    child: Text(
                      'Rider',
                      style: TextStyle(
                          color:
                              userType.value == 1 ? Colors.white : Colors.black,
                          fontSize: 8.0.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => userType.value = 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: userType.value == 0
                          ? Colors.transparent
                          : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    margin: EdgeInsets.only(right: 0.5.w),
                    alignment: Alignment.center,
                    width: 42.5.w,
                    height: 70.0,
                    child: Text(
                      'Driver',
                      style: TextStyle(
                          color:
                              userType.value == 0 ? Colors.white : Colors.black,
                          fontSize: 8.0.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7.0.w),
            child: Material(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextFormField(
                style: TextStyle(fontSize: 7.0.sp),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: 'First Name',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0.w),
            child: Material(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextFormField(
                style: TextStyle(fontSize: 7.0.sp),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: 'Last Name',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0.w),
            child: Material(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextFormField(
                style: TextStyle(fontSize: 7.0.sp),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0.w),
            child: Material(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextFormField(
                style: TextStyle(fontSize: 7.0.sp),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: 'Phone ( eg 020xxxxxxx )',
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            width: 100.0.w,
            margin: EdgeInsets.symmetric(horizontal: 7.0.w),
            child: RaisedButton(
              color: Colors.redAccent,
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return BlocConsumer<RegisterFormBloc, RegisterFormState>(
    //   listener: (context, state) {
    //     // state.authFailureOrSuccessOption.fold(
    //     //   () {},
    //     //   (either) => either.fold(
    //     //     (failure) {
    //     //       FlushbarHelper.createError(
    //     //         message: failure.map(
    //     //           cancelledByUser: (_) => 'Cancelled',
    //     //           serverError: (_) => 'Server error',
    //     //           emailAlreadyInUse: (_) => 'Email already in use',
    //     //           invalidEmailAndPasswordCombination: (_) =>
    //     //               'Invalid email and password combination',
    //     //         ),
    //     //       ).show(context);
    //     //     },
    //     //     (_) {
    //     //       ExtendedNavigator.of(context).replace(Routes.homePage);
    //     //       context
    //     //           .read<AuthBloc>()
    //     //           .add(const AuthEvent.authCheckRequested());
    //     //     },
    //     //   ),
    //     // );
    //   },
    //   builder: (context, state) {
    //     return Form(
    //       autovalidate: state.showErrorMessages,
    //       child: SingleChildScrollView(
    //         padding:
    //             const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
    //         child: Column(
    //           children: [
    //             const Text(
    //               '📝',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(fontSize: 130),
    //             ),
    //             const SizedBox(height: 8),
    //             TextFormField(
    //               decoration: const InputDecoration(
    //                 prefixIcon: Icon(Icons.email),
    //                 labelText: 'Email',
    //               ),
    //               autocorrect: false,
    //               onChanged: (value) => context
    //                   .read<SignInFormBloc>()
    //                   .add(SignInFormEvent.emailChanged(value)),
    //               validator: (_) => context
    //                   .read<SignInFormBloc>()
    //                   .state
    //                   .emailAddress
    //                   .value
    //                   .fold(
    //                     (f) => f.maybeMap(
    //                       invalidEmail: (_) => 'Please enter a valid email',
    //                       orElse: () => null,
    //                     ),
    //                     (_) => null,
    //                   ),
    //             ),
    //             const SizedBox(height: 8),
    //             TextFormField(
    //               decoration: const InputDecoration(
    //                 prefixIcon: Icon(Icons.lock),
    //                 labelText: 'Password',
    //               ),
    //               autocorrect: false,
    //               obscureText: true,
    //               onChanged: (value) => context
    //                   .read<SignInFormBloc>()
    //                   .add(SignInFormEvent.passwordChanged(value)),
    //               validator: (_) =>
    //                   context.read<SignInFormBloc>().state.password.value.fold(
    //                         (f) => f.maybeMap(
    //                           shortPassword: (_) =>
    //                               'Passwords should be 6 or more characters in length',
    //                           orElse: () => null,
    //                         ),
    //                         (_) => null,
    //                       ),
    //             ),
    //             const SizedBox(
    //               height: 40.0,
    //             ),
    //             SizedBox(
    //               width: 100.0.w,
    //               child: RaisedButton(
    //                 onPressed: () {
    //                   context.read<SignInFormBloc>().add(
    //                         const SignInFormEvent
    //                             .signInWithEmailAndPasswordPressed(),
    //                       );
    //                 },
    //                 child: state.isSubmitting
    //                     ? const CircularProgressIndicator(backgroundColor: Colors.white,)
    //                     : const Text(
    //                         'Register',
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
