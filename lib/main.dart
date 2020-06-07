import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Validado Formulários",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Valida Campos"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 50.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu nome";
                }
              },
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu email";
                }
              },
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu telefone";
                }
              },
              decoration: InputDecoration(
                labelText: "Telefone",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu cpf";
                }
              },
              decoration: InputDecoration(
                labelText: "Cpf",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.url,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu linkedin";
                }
              },
              decoration: InputDecoration(
                labelText: "Linkedin",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.url,
              validator: (value){
                if(value.isEmpty){
                  return "Informe o seu instagram";
                }
              },
              decoration: InputDecoration(
                labelText: "Instagram",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: (value){
                if(value.isEmpty){
                  return "Informe a sua senha";
                }
              },
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return "Repetita a sua senha";
                }
              },
              decoration: InputDecoration(
                labelText: "Repetir a Senha",
                labelStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 14.0
                  ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 17.0),
            ),
            Container(
              height: 55,
              color: Colors.amber,
              width: 380,
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: RaisedButton(
                onPressed:  (){
                  if(_formKey.currentState.validate()){
                    debugPrint("Hello");
                  }
                },
                color: Colors.amber,
                child: Text("Validar Campos", style: TextStyle(color: Colors.white),),
                ),
            ),
          ],
        ),
      ),
    )
    );
  }
}

