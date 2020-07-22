import 'package:flutter/foundation.dart';

import 'note.dart';

class Notes extends ChangeNotifier{

  List<Note> _list = [
    Note(
        id: '1a',
        title: 'Newton\'s first law of motion',
       tags: ['Science', 'Physics', 'Motion', 'Newton', 'Laws of Motion', 'Lecture Notes'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '1'),
    Note(
        id: '1b',
        title: 'Newton\'s second law of motion',
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '1'),
    Note(
        id: '1c',
        title: 'Newton\'s third law of motion',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '1'),
    Note(
        id: '2a',
        title: 'Riemann\'s Integration part a',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '2'),
    Note(
        id: '2b',
        title: 'Riemann\'s Integration part b',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '2'),
    Note(
        id: '2c',
        title: 'Riemann\'s Integration part c',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '2'),
    Note(
        id: '3a',
        title: 'Newton\'s first law of motion',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '3'),
    Note(
        id: '3b',
        title: 'Newton\'s first law of motion',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '3'),
    Note(
        id: '3c',
        title: 'Newton\'s first law of motion',
       tags: ['Science', 'Physics', 'Motion'],
        date: DateTime.now(),
        content: 'Hi, start typing...',
        notebookId: '3'),
  ];
  List<Note> get list => [..._list];

  List<Note>  getListByNotebookId(String id){
    return [..._list.where((note) => note.notebookId == id)];
  }

  Note getNoteById(id){
    return _list.firstWhere((note) => note.id == id);
  }

  String addNote(Note n){
    final date = DateTime.now();
    final note = Note(id: date.toString(),
    title: n.title,
    date: date,
    content: n.content,
    notebookId: n.notebookId,
    tags: n.tags);
    _list.add(note);
    notifyListeners();
    return note.id;
  }
  void deleteNote(id){
    _list.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  void deleteNotesByNotebookId(String id){
    _list.removeWhere((note) => note.notebookId == id);
    notifyListeners();
  }

}