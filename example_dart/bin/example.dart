import 'package:example/example.dart' as example;

void main() async {
  final userRepository = example.makeRepository('http://localhost:3000');
  final user = await userRepository.getUser(1);
  print(user.name);
  final users = await userRepository.getUsers();
  print(users.elementAt(0).name);
}
