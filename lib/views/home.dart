import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerCpf = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerSobreNome = TextEditingController();
  TextEditingController _controllerCelular = TextEditingController();
  TextEditingController _controllerConfirmarSenha = TextEditingController();
  bool _tipoUsuario = false;

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text(widget.title),
      //   ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/fundo.png"),
                            fit: BoxFit.cover),
                        //  color: Colors.red,
                      ),
                    ),
                    Container(
                      // motinha
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/moto.png"),
                          //fit: BoxFit.cover
                        ),
                        //  color: Colors.amber
                      ),
                    ),
                    SizedBox(
                      height: 1000,
                    ),
                    Container(
                      //  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      margin:
                          const EdgeInsets.only(top: 212, left: 20, right: 20),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            
                            color: Colors.white,

                            blurRadius:
                            0, // has the effect of softening the shadow
                            spreadRadius:
                            0, // has the effect of extending the shadow
                            offset: Offset(
                              0, // horizontal, move right 10
                              0, // vertical, move down 10
                            ),
                          )
                        ],
                        //  border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(15),

                        //  decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15),
                        // color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // Logo
                            // width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/logo.png"),
                                // fit: BoxFit.cover
                              ),
                              // color: Colors.blueGrey,
                            ),
                          ),

                          TextFormField(
                            controller: _controllerNome,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Nome",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.person_outline, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerSobreNome,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Sobre Nome",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.people_outline, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerCpf,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "CPF",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.folder_shared, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerCelular,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Celular",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.phone_iphone, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerEmail,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.mail_outline, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerSenha,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.lock_outline, size: 30),
                              suffixIcon: Icon(Icons.visibility_off, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerConfirmarSenha,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Confirmar Senha",
                              labelStyle: TextStyle(
                                color: Color(0xff959595),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.lock_outline, size: 30),
                              suffixIcon: Icon(Icons.visibility_off, size: 30),
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text("Restaurante"),
                                Switch(
                                  value: _tipoUsuario,
                                  onChanged: (bool valor) {
                                    setState(() {
                                      _tipoUsuario = valor;
                                    });
                                  },
                                  activeColor: Color(0xff29AFA0),
                                ),
                                Text("Entregador"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 10),
                            child: RaisedButton(
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                color: Color(0xff29AFA0),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(12.0)),
                                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                onPressed: () {}),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
