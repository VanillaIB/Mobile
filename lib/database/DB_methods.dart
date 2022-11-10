import 'package:flutter_application_2/Models/Receita.dart';
import 'package:flutter_application_2/database/DB.dart';
import 'package:flutter_application_2/database/DB_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB_methods {
  Future<Database> _getDatabase() async {
    //await deleteDatabase(
    //  join(await getDatabasesPath(), DATABASE_NAME),
    //);

    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_RECEITAS_TABLE_SCRIPT);

        await db.rawInsert(
            '''insert into $RECEITAS_TABLE_NAME($RECEITAS_COLUMN_TITLE, $RECEITAS_COLUMN_DESCRIPTION, $RECEITAS_COLUMN_CATEGORY))
        VALUES(
          'Carolina', 'Lorem ipsum', 'Doces'
          ''');
      },
      version: DATABASEVERSION,
    );
  }

  Future create(Receita receita) async {
    try {
      final Database db = await _getDatabase();
      receita.receitaID = await db.rawInsert(
          '''insert into $RECEITAS_TABLE_NAME($RECEITAS_COLUMN_TITLE, $RECEITAS_COLUMN_DESCRIPTION, $RECEITAS_COLUMN_CATEGORY)
      VALUES(
        '${receita.title}, '${receita.description}. '${receita.category}'
        )
        ''');
    } catch (ex) {
      return;
    }
  }
}
