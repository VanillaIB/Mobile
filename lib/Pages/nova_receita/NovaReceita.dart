import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';

class NovaReceita extends StatelessWidget {
  const NovaReceita({super.key});

  @override
  Widget build(BuildContext context) {
    final dropValue = ValueNotifier('');
    final categorias = ['Doces', 'Salgados', 'Bolos', 'Carnes'];

    final formkey = GlobalKey<FormState>();

    final _nomeReceita = TextEditingController();
    final _ingredientes = TextEditingController();
    final _preparo = TextEditingController();
    //final _categoria = TextEditingController();

    return Scaffold(
      appBar: appBarCriado(context),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/1665/1665731.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color(0xFFF58524),
                      Color(0XFFF92B7F),
                    ],
                  ),
                  border: Border.all(
                    width: 2.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                        // autofocus: true,
                        controller: _nomeReceita,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Titulo",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Campo Obrigatório!";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        // autofocus: true,
                        maxLines: null,
                        controller: _ingredientes,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Ingredientes",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Campo Obrigatório!";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        // autofocus: true,
                        controller: _preparo,
                        maxLines: null,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Modo de Preparo",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Campo Obrigatório!";
                          } else {
                            return null;
                          }
                        }),
                    ValueListenableBuilder(
                      valueListenable: dropValue,
                      builder: (BuildContext context, String value, _) {
                        return DropdownButtonFormField<String>(
                          hint: const Text('Seleciona a Categoria'),
                          value: (value.isEmpty) ? null : value,
                          onChanged: (escolha) =>
                              dropValue.value = escolha.toString(),
                          items: categorias
                              .map(
                                (opcao) => DropdownMenuItem(
                                    child: Text(opcao), value: opcao),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    if (formkey.currentState?.validate() == true) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Receita cadastrada com Sucesso!')));
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Erro ao realizar cadastro da receita! Favor insira os dados corretamente!')));
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
