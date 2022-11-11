import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Receita.dart';
import 'package:flutter_application_2/Pages/homepage/homepage.dart';
import 'package:flutter_application_2/Pages/nova_receita/mobx_store/receita_store.dart';
import 'package:flutter_application_2/database/DB_methods.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import '../../Controller/constants.dart';
import '../receitasfavoritas.dart';

class NovaReceita extends StatelessWidget {
  ReceitaStore _receitaStore = GetIt.I<ReceitaStore>();
  late BuildContext _buildContext;
  get controller => null;

  @override
  Widget build(BuildContext context) {
    final dropValue = ValueNotifier('');
    final categorias = ['Doces', 'Salgados', 'Bolos', 'Carnes'];
    _buildContext = context;

    final formkey = GlobalKey<FormState>();

    final nomeReceita = TextEditingController();
    final ingredientes = TextEditingController();
    final preparo = TextEditingController();
    //final _categoria = TextEditingController();

    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
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
            const SizedBox(
              height: 20,
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      // autofocus: true,
                      controller: nomeReceita,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Titulo",
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Campo Obrigatório!";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) =>
                          _receitaStore.atualizarTitle(title: value),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      // autofocus: true,
                      maxLines: null,
                      controller: ingredientes,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Ingredientes",
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Campo Obrigatório!";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) => _receitaStore.atualizarDescription(
                          description: value),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        textInputAction: TextInputAction.next,
                        // autofocus: true,
                        controller: preparo,
                        maxLines: null,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Modo de Preparo",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
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
                                    value: opcao, child: Text(opcao)),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
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
              child: SizedBox.expand(child: Observer(
                builder: (_) {
                  return ElevatedButton(
                    onPressed:
                        _receitaStore.formularioValido ? _botaoGravar : null,
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              )),
            ),
            const SizedBox(
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

  // ignore: dead_code
  _botaoGravar() async {
    await DB_methods().create(
      Receita(
          receitaID: 0,
          image: _receitaStore.id,
          title: _receitaStore.title,
          description: _receitaStore.description,
          category: _receitaStore.category),
    );

    ScaffoldMessenger.of(_buildContext).showSnackBar(
      const SnackBar(
        content: Text('Parabens'),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/heart.svg'),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyRevenues(),
          ),
        ),
      ),
      const SizedBox(
        width: paddingpadrao / 2,
      )
    ],
  );
}
