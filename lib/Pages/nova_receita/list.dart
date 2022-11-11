import 'package:flutter/material.dart';
import 'package:flutter_application_2/database/DB_methods.dart';

import '../../database/models/produto_model.dart';

class ReceitaListPage extends StatelessWidget {
  const ReceitaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recem adicionadas'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: FutureBuilder(
          future: DB_methods().getAll(),
          builder: (BuildContext context,
              AsyncSnapshot<List<ReceitaModel>> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.yellow.shade400,
                ),
              );
            }

            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                ReceitaModel receita = snapshot.data![index];
                return Padding(
                  padding: const EdgeInsets.only(left: 6, right: 7),
                  child: Text(
                    receita.title,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
