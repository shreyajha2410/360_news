class ArticleModel{
   String author;
   String title;
   String description;
   String url;
   String urlToImage;
   String content;
  ArticleModel({required this.author, required this.title, required this.description, required this.content, required this.url, required this.urlToImage});

  /*ArticleModel.fromJson(Map<String, dynamic> json){
    author=json['author'];
    title=json['title'];
    description=json['description'];
    url=json['url'];
    urlToImage=json['urlToImage'];
    content=json['content'];
  }
   Map<String,dynamic> toJson(){
    final Map<String, dynamic> data=new Map<String, dynamic>();
    data['author']=this.author;
    data['title']=this.title;
    data['description']=this.description;
    data['url']=this.url;
    data['urlToImage']=this.urlToImage;
    data['content']=this.content;
    return data;
   }*/
}
