import 'package:flutter/material.dart';
import 'package:netflix/lista.dart';

TextEditingController _user = TextEditingController();
TextEditingController _pass = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario_cadastrado = 'Gabrielly';
  String senha_cadastrada = '123';
  String verificador = '';

  bool Logar() {
    if (_user.text == usuario_cadastrado && _pass.text == senha_cadastrada) {
      print('Login realizado com sucesso');
      return true;
    } else {
      print('Credenciais Erradas');
      setState(() {
        verificador = 'Credenciais Erradas';
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: SizedBox(
          width: 150,
          height: 150,
          child: Image.network(
            'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456',
            fit: BoxFit.contain,
          ),
        ),
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Insira seu usuário",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              controller: _user,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Insira sua senha',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              controller: _pass,
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (Logar()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaPage()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Icon(Icons.login),
            ),
            SizedBox(height: 8),
            Text(
              verificador,
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
