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

  // bool _tipoUsuario;

  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        // title: Text(widget.title),
        //   ),
        body: Container(
            child: Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/fundo.png"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  // motinha
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,

                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/moto.png"),
                    //fit: BoxFit.cover
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.3,
                ),
                // Container(
                //   // Logo
                //   // width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height / 1.3,

                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //     image: AssetImage("assets/images/logo.png"),
                //     // fit: BoxFit.cover
                //   )),
                // ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(9.0),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius:
                              1.0, // has the effect of softening the shadow
                          spreadRadius:
                              1.0, // has the effect of extending the shadow
                          offset: Offset(
                            1.0, // horizontal, move right 10
                            1.0, // vertical, move down 10
                          ),
                        )
                      ],
                      //  border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // padding: EdgeInsets.all(15),
                    // padding: EdgeInsets.only(left: 15, right: 15),

                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            // Logo
                            // width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              // fit: BoxFit.cover
                            )),
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
                          /*  Row(
                  children: <Widget>[
                    Text("Restaurante"),
                    Switch(
                        value: _tipoUsuario,
                        onChanged: (bool valor) {
                          setState(() {
                            _tipoUsuario = valor;
                          });
                        }),
                    Text("Entregador"),
                  ],
                ),
*/
                          /*  Padding(
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
                          }),
                      Text("Entregador"),
                    ],
                  ),
                ),*/
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ),
          ],
        ),
      ),
    )));
  }

  //   body: Stack(
  // children: <Widget>[
//         Container(
//           // fundo
//           width: MediaQuery.of(context).size.width,
//           height:MediaQuery.of(context).size.width /4,

//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/fundo.png"),
//                   fit: BoxFit.cover)),
//         ),
//         Container(
//           // motinha
//          // width: MediaQuery.of(context).size.width,
//          // height:
//          //     100, /////////////////////////////////////////ver como pega o 60% da
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/moto.png"),
//                   fit: BoxFit.cover)),
//         ),
//         Container(
//           padding: EdgeInsets.all(25),
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   // Container(
//                   //  child:  Stack(
//                   //     children: <Widget>[
//                   //       Container(
//                   //         // fundo
//                   //         width: MediaQuery.of(context).size.width,
//                   //         height:
//                   //             250, /////////////////////////////////////////ver como pega o 60% da
//                   //         decoration: BoxDecoration(
//                   //             image: DecorationImage(
//                   //                 image: AssetImage("assets/images/fundo.png"),
//                   //                 fit: BoxFit.cover)),
//                   //       ),
//                   //       Container(
//                   //         // motinha
//                   //         width: MediaQuery.of(context).size.width,
//                   //         height:
//                   //             100, /////////////////////////////////////////ver como pega o 60% da
//                   //         decoration: BoxDecoration(
//                   //             image: DecorationImage(
//                   //                 image: AssetImage("assets/images/moto.png"),
//                   //                 fit: BoxFit.cover)),
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                   TextFormField(
//                     controller: _controllerNome,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "Nome",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.person_outline, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerSobreNome,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "Sobre Nome",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.people_outline, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerCpf,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "CPF",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.folder_shared, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerCelular,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "Celular",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.phone_iphone, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerEmail,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "E-mail",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.mail_outline, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerSenha,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "Senha",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.lock_outline, size: 30),
//                       suffixIcon: Icon(Icons.visibility_off, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _controllerConfirmarSenha,
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       labelText: "Confirmar Senha",
//                       labelStyle: TextStyle(
//                         color: Color(0xff959595),
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       prefixIcon: Icon(Icons.lock_outline, size: 30),
//                       suffixIcon: Icon(Icons.visibility_off, size: 30),
//                     ),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   /*  Row(
//                   children: <Widget>[
//                     Text("Restaurante"),
//                     Switch(
//                         value: _tipoUsuario,
//                         onChanged: (bool valor) {
//                           setState(() {
//                             _tipoUsuario = valor;
//                           });
//                         }),
//                     Text("Entregador"),
//                   ],
//                 ),
// */
//                   /*  Padding(
//                   padding: EdgeInsets.only(bottom: 10),
//                   child: Row(
//                     children: <Widget>[
//                       Text("Restaurante"),
//                       Switch(
//                           value: _tipoUsuario,
//                           onChanged: (bool valor) {
//                             setState(() {
//                               _tipoUsuario = valor;
//                             });
//                           }),
//                       Text("Entregador"),
//                     ],
//                   ),
//                 ),*/
//                   Padding(
//                     padding: EdgeInsets.only(top: 16, bottom: 10),
//                     child: RaisedButton(
//                         child: Text(
//                           "Cadastrar",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                           ),
//                         ),
//                         color: Color(0xff29AFA0),
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(12.0)),
//                         padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
//                         onPressed: () {}),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
  //     ],
  //   ));
  // }
}
