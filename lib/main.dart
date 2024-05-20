import 'dart:io';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const RegisterApp());
}

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Variabel untuk menyimpan nilai dari field input
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void sendMessage(String message) {
      print(message);

      WebSocketChannel channel;
      try {
        channel =
            WebSocketChannel.connect(Uri.parse('ws://192.168.103.240:3000'));
        channel.sink.add(message);

        channel.stream.listen((message) {
          print(message.toString());
          channel.sink.close();
        });
      } catch (e) {
        print(e);
      }

      _usernameController.clear();
      _passwordController.clear();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Jurusan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Kode Jurusan',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Jurusan',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika registrasi di sini
                String username = _usernameController.text;
                String password = _passwordController.text;
                if (username.isNotEmpty && password.isNotEmpty) {
                  sendMessage(username);
                  sendMessage(password);
                } else if (username.isNotEmpty && password.isEmpty) {
                  sendMessage(username);
                  sendMessage("password is empty");
                } else if (username.isEmpty && password.isNotEmpty) {
                  sendMessage("username is empty");
                  sendMessage(password);
                } else {
                  sendMessage("username is empty");
                  sendMessage("password is empty");
                }
                print('Username: $username, Password: $password');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
