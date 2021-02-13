import 'package:bloc_test/bloc_test.dart';
import 'package:uber_clone/application/auth/auth_bloc.dart';

class MockAuthBloc extends MockBloc<AuthState> implements AuthBloc {}

void main() {
  blocTest(
    'emits []',
    build: () {
      return MockAuthBloc();
    },
    expect: [const AuthState.initial()],
  );
}
