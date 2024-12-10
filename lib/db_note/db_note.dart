

import 'package:building_computer/db_note/note_entity.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DBNote extends GetxService {
  late Database dbBase;

  Future<DBNote> init() async {
    await createNoteDB();
    return this;
  }

  createNoteDB() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, 'note.db');

    dbBase = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await createNoteTable(db);
        });
  }

  createNoteTable(Database db) async {
    await db.execute(
        'CREATE TABLE IF NOT EXISTS note (id INTEGER PRIMARY KEY, createdTime TEXT, title TEXT, content TEXT)');
  }

  insertNote(NoteEntity entity) async {
    final id = await dbBase.insert('note', {
      'createdTime': entity.createdTime.toIso8601String(),
      'title': entity.title,
      'content': entity.content,
    });
    return id;
  }

  updateNote(NoteEntity entity) async {
    await dbBase.update('note', {
      'createdTime': entity.createdTime.toIso8601String(),
      'title': entity.title,
      'content': entity.content,
    }, where: 'id = ?', whereArgs: [entity.id]);
  }

  deleteNote(NoteEntity entity) async {
    await dbBase.delete('note', where: 'id = ?', whereArgs: [entity.id]);
  }

  cleanNoteData() async {
    await dbBase.delete('note');
  }

  Future<List<NoteEntity>> getNoteAllData() async {
    var result = await dbBase.query('note', orderBy: 'createdTime DESC');
    return result.map((e) => NoteEntity.fromJson(e)).toList();
  }
}
