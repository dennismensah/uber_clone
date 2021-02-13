import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber_clone/application/auth/auth_bloc.dart';
import 'package:uber_clone/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:uber_clone/presentation/core/auth_header_widget.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';
import 'package:sizer/sizer.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AuthHeader(title: 'Sign In'),
          const SizedBox(
            height: 30.0,
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
                obscureText: true,
                style: TextStyle(fontSize: 7.0.sp),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.vpn_key),
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
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 7.0.w),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ],
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
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    ExtendedNavigator.of(context).push(Routes.registerPage);
                  },
                  child: const Text(' Register',
                      style:
                          TextStyle(fontSize: 18.0, color: Colors.redAccent)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 20.0.w,
                    child: const Divider(
                      thickness: 2.0,
                      color: Colors.grey,
                    )),
                Text('  Or  ', style: TextStyle(fontSize: 7.0.sp)),
                SizedBox(
                  width: 20.0.w,
                  child: const Divider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 30.0,
                  child: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 4.0.w,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 30.0,
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // return BlocConsumer<SignInFormBloc, SignInFormState>(
    //   listener: (context, state) {
    //     state.authFailureOrSuccessOption.fold(
    //       () {},
    //       (either) => either.fold(
    //         (failure) {
    //           FlushbarHelper.createError(
    //             message: failure.map(
    //               cancelledByUser: (_) => 'Cancelled',
    //               serverError: (_) => 'Server error',
    //               emailAlreadyInUse: (_) => 'Email already in use',
    //               invalidEmailAndPasswordCombination: (_) =>
    //                   'Invalid email and password combination',
    //             ),
    //           ).show(context);
    //         },
    //         (_) {
    //           ExtendedNavigator.of(context).replace(Routes.homePage);
    //           context
    //               .read<AuthBloc>()
    //               .add(const AuthEvent.authCheckRequested());
    //         },
    //       ),
    //     );
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
    //                         'Sign In',
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //               ),
    //             ),
    //             FlatButton(
    //               onPressed: () {
    //                 ExtendedNavigator.of(context).push(Routes.registerPage);
    //               },
    //               child: const Text(
    //                 'Dont have an account, create one here',
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 30.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                 children: const [
    //                   CircleAvatar(
    //                     backgroundColor: Colors.black12,
    //                     radius: 30.0,
    //                     child: FaIcon(
    //                       FontAwesomeIcons.google,
    //                       color: Colors.red,
    //                     ),
    //                   ),
    //                   CircleAvatar(
    //                     backgroundColor: Colors.black12,
    //                     radius: 30.0,
    //                     child: FaIcon(
    //                       FontAwesomeIcons.facebook,
    //                       color: Colors.blue,
    //                     ),
    //                   ),
    //                   CircleAvatar(
    //                     backgroundColor: Colors.black12,
    //                     radius: 30.0,
    //                     child: FaIcon(
    //                       FontAwesomeIcons.twitter,
    //                       color: Colors.blue,
    //                     ),
    //                   ),
    //                   // if (state.isSubmitting) ...[
    //                   //    SizedBox(height: 8),
    //                   //    LinearProgressIndicator(),
    //                   // ]
    //                   // const SizedBox(height: 8),
    //                   // Row(
    //                   //   children: [
    //                   //     Expanded(
    //                   //       child: FlatButton(
    //                   //         onPressed: () {
    //                   //           context.read<SignInFormBloc>().add(
    //                   //                 const SignInFormEvent
    //                   //                     .signInWithEmailAndPasswordPressed(),
    //                   //               );
    //                   //         },
    //                   //         child: const Text('SIGN IN'),
    //                   //       ),
    //                   //     ),
    //                   //     Expanded(
    //                   //       child: FlatButton(
    //                   //         onPressed: () {
    //                   //           context.read<SignInFormBloc>().add(
    //                   //                 const SignInFormEvent
    //                   //                     .registerWithEmailAndPasswordPressed(),
    //                   //               );
    //                   //         },
    //                   //         child: const Text('REGISTER'),
    //                   //       ),
    //                   //     ),
    //                   //   ],
    //                   // ),
    //                   // RaisedButton(
    //                   //   onPressed: () {
    //                   //     context
    //                   //         .read<SignInFormBloc>()
    //                   //         .add(const SignInFormEvent.signInWithGooglePressed());
    //                   //   },
    //                   //   color: Colors.lightBlue,
    //                   //   child: const Text(
    //                   //     'SIGN IN WITH GOOGLE',
    //                   //     style: TextStyle(
    //                   //       color: Colors.white,
    //                   //       fontWeight: FontWeight.bold,
    //                   //     ),
    //                   //   ),
    //                   // ),
    //                 ],
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

// class SignInForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SignInFormBloc, SignInFormState>(
//       listener: (context, state) {
//         state.authFailureOrSuccessOption.fold(
//           () {},
//           (either) => either.fold(
//             (failure) {
//               FlushbarHelper.createError(
//                 message: failure.map(
//                   cancelledByUser: (_) => 'Cancelled',
//                   serverError: (_) => 'Server error',
//                   emailAlreadyInUse: (_) => 'Email already in use',
//                   invalidEmailAndPasswordCombination: (_) =>
//                       'Invalid email and password combination',
//                 ),
//               ).show(context);
//             },
//             (_) {
//               ExtendedNavigator.of(context).replace(Routes.homePage);
//               context
//                   .read<AuthBloc>()
//                   .add(const AuthEvent.authCheckRequested());
//             },
//           ),
//         );
//       },
//       builder: (context, state) {
//         return Form(
//           autovalidate: state.showErrorMessages,
//           child: ListView(
//             padding: const EdgeInsets.all(8),
//             children: [
//               const Text(
//                 '📝',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 130),
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.email),
//                   labelText: 'Email',
//                 ),
//                 autocorrect: false,
//                 onChanged: (value) => context
//                     .read<SignInFormBloc>()
//                     .add(SignInFormEvent.emailChanged(value)),
//                 validator: (_) => context
//                     .read<SignInFormBloc>()
//                     .state
//                     .emailAddress
//                     .value
//                     .fold(
//                       (f) => f.maybeMap(
//                         invalidEmail: (_) => 'Invalid Email',
//                         orElse: () => null,
//                       ),
//                       (_) => null,
//                     ),
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.lock),
//                   labelText: 'Password',
//                 ),
//                 autocorrect: false,
//                 obscureText: true,
//                 onChanged: (value) => context
//                     .read<SignInFormBloc>()
//                     .add(SignInFormEvent.passwordChanged(value)),
//                 validator: (_) =>
//                     context.read<SignInFormBloc>().state.password.value.fold(
//                           (f) => f.maybeMap(
//                             shortPassword: (_) => 'Short Password',
//                             orElse: () => null,
//                           ),
//                           (_) => null,
//                         ),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 children: [
//                   Expanded(
//                     child: FlatButton(
//                       onPressed: () {
//                         context.read<SignInFormBloc>().add(
//                               const SignInFormEvent
//                                   .signInWithEmailAndPasswordPressed(),
//                             );
//                       },
//                       child: const Text('SIGN IN'),
//                     ),
//                   ),
//                   Expanded(
//                     child: FlatButton(
//                       onPressed: () {
//                         context.read<SignInFormBloc>().add(
//                               const SignInFormEvent
//                                   .registerWithEmailAndPasswordPressed(),
//                             );
//                       },
//                       child: const Text('REGISTER'),
//                     ),
//                   ),
//                 ],
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   context
//                       .read<SignInFormBloc>()
//                       .add(const SignInFormEvent.signInWithGooglePressed());
//                 },
//                 color: Colors.lightBlue,
//                 child: const Text(
//                   'SIGN IN WITH GOOGLE',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               if (state.isSubmitting) ...[
//                 const SizedBox(height: 8),
//                 const LinearProgressIndicator(),
//               ]
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
