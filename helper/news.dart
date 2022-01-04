import 'dart:convert';
import 'package:news/models/article_model.dart';
import 'package:http/http.dart' as http;
class News{
  List<ArticleModel> news=[];
  Future<void> getNews() async {
    //String url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=69f679f4f11743cd828680d4e08ebdd8";
    //var response = await http.get(url);
    http.Response response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=in&apiKey=69f679f4f11743cd828680d4e08ebdd8"));
    var jsonData=jsonDecode(response.body);
    if(jsonData['status']=="ok"){
      jsonData["articles"].forEach((element){
       if(element['urlToImage']!=null && element['description']!=null && element['title']!=null && element['url']!=null && element['content']!=null && element['author']!=null){
         ArticleModel articleModel= ArticleModel(
           title: element['title'],
           author: element['author'],
           description: element['description'],
           url: element["url"],
           urlToImage: element["urlToImage"],
           content: element["content"],
         );
         news.add(articleModel);
       }
      });
    }
  }
}

class NewsForCategory{
  List<ArticleModel> news=[];
  Future<void> getNewsForCategory(String category) async {
    //String url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=69f679f4f11743cd828680d4e08ebdd8";
    //var response = await http.get(url);
    http.Response response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=69f679f4f11743cd828680d4e08ebdd8"));
    var jsonData=jsonDecode(response.body);
    if(jsonData['status']=="ok"){
      jsonData["articles"].forEach((element){
        if(element['urlToImage']!=null && element['description']!=null && element['title']!=null && element['url']!=null && element['content']!=null && element['author']!=null){
          ArticleModel articleModel= ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
