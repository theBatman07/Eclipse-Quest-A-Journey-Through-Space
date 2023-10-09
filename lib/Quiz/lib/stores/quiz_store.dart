import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_interface/Quiz/lib/common/json_util.dart';
import 'package:sign_in_interface/Quiz/lib/models/category.dart';
import 'package:sign_in_interface/Quiz/lib/models/quiz.dart';
import 'package:sign_in_interface/Quiz/lib/models/quiz_history.dart';

class QuizStore {
  static SharedPreferences? prefs;
  static const String quizHistoryListKey = "QuizHistoryListKey";
  final String categoryJsonFileName = "assets/data/category.json";
  final String quizJsonFileName = "assets/data/quiz.json";

  static Future<void> initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<List<Category>> loadCategoriesAsync() async {
    List<Category> categoryList = [];
    categoryList = await JsonUtil.loadFromJsonAsync<Category>(
        categoryJsonFileName, Category.jsonToObject);
    return categoryList;
  }

  Future<List<Quiz>> loadQuizListByCategoryAsync(int categoryId) async {
    List<Quiz> quizList = [];
    quizList = await JsonUtil.loadFromJsonAsync<Quiz>(
        quizJsonFileName, Quiz.jsonToObject);
    var categoryQuizList =
        quizList.where((element) => element.categoryId == categoryId).toList();
    return categoryQuizList;
  }

  Future<List<QuizHistory>> loadQuizHistoryAsync() async {
    List<QuizHistory> quizHistoryList = [];

    bool ifExists = false;
    ifExists = QuizStore.prefs!.containsKey(quizHistoryListKey);
    if (ifExists) {
      var quizHistoryJson = QuizStore.prefs!.getString(quizHistoryListKey);
      if (quizHistoryJson != null) {
        quizHistoryList = await JsonUtil.loadFromJsonStringAsync<QuizHistory>(
            quizHistoryJson, QuizHistory.jsonToObject);
        quizHistoryList = quizHistoryList.reversed.toList();
      }
    }
    return quizHistoryList;
  }

  Future<Category> getCategoryAsync(int categoryId) async {
    List<Category> categoryList = [];
    categoryList = await JsonUtil.loadFromJsonAsync<Category>(
        categoryJsonFileName, Category.jsonToObject);
    return categoryList.where((element) => element.id == categoryId).first;
  }

  Future<Quiz> getRandomQuizAsync() async {
    List<Quiz> quizList = [];
    quizList = await JsonUtil.loadFromJsonAsync<Quiz>(
        quizJsonFileName, Quiz.jsonToObject);
    var max = quizList.length;
    var index = Random().nextInt(max);
    var quiz = quizList[index];
    return quiz;
  }

  Future<void> saveQuizHistory(QuizHistory? history) async {
    try {
      var historyList = await loadQuizHistoryAsync();
      historyList.add(history!);
      var historyJson = jsonEncode(historyList);
      prefs?.setString(quizHistoryListKey, historyJson);
    } catch (e) {
      print(e);
    }
  }

  Future<Quiz> getQuizByIdAsync(int quizId, int categoryId) async {
    var quizList = await loadQuizListByCategoryAsync(categoryId);
    var quiz = quizList.where((element) => element.id == quizId).first;
    return quiz;
  }
}
