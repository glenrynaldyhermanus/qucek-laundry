import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QucekLaundryFirebaseUser {
  QucekLaundryFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

QucekLaundryFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QucekLaundryFirebaseUser> qucekLaundryFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QucekLaundryFirebaseUser>(
            (user) => currentUser = QucekLaundryFirebaseUser(user));
