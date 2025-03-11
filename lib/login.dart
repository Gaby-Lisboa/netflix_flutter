import 'package:flutter/material.dart';
import 'package:netflix/lista.dart';

TextEditingController _user = TextEditingController();
TextEditingController _pass = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState(
  );
}

class _LoginPageState extends State<LoginPage> {
  String usuario_cadastrado = 'Gabrielly';
  String senha_cadastrada = '123';
  String verificador = '';

  bool Logar(){
    if(_user.text == usuario_cadastrado && _pass.text == senha_cadastrada){
      print('Login realizado com sucesso');
      return true;
    }
    else {
      print('Credenciais Erradas');
      setState(() {
        verificador = 'Credencias Erradas';
      });
      return false;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

        body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          TextField(
            decoration: InputDecoration( //personalização geral
              hintText: "Insira seu usuario", //texto de sobreposição
              border: OutlineInputBorder(),//cria bordas

            ),
            controller: _user, //qual variável que ira preencher esse textfiled?
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Insira sua senha',
              border: OutlineInputBorder(),

            ),
            controller: _pass,
            obscureText: true,

          ),
          ElevatedButton(onPressed: (){
            if(Logar()){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListaPage()));
            }
            Logar();

          },
              child: Icon(Icons.login)
          )
        ],
      )

    );
  }
}
