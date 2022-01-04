import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/helper/news.dart';
import 'package:news/views/home.dart';
class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews({required this.category});
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  var newslist;
  bool _loading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    NewsForCategory news = NewsForCategory();
    await news.getNewsForCategory(widget.category);
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("360 "),
              Text("News", style: TextStyle(
                color: Colors.indigo,
              ),)
            ],
          ),
          actions: <Widget>[
            Opacity(
              opacity: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save),
              ),
            )
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: _loading ? Center(
          child: Container(
            child: CircularProgressIndicator(),
          ),
        ) : SingleChildScrollView(
          child: Container(
              padding:EdgeInsets.symmetric(horizontal: 16) ,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 15.0),
                    child: ListView.builder(
                        itemCount: newslist.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imageurl: newslist[index].urlToImage,
                            title: newslist[index].title,
                            desc: newslist[index].description,
                            //content: newslist[index].content,
                            url: newslist[index].url,
                          );
                        }),
                  )
                ],
              )
          ),
        ),
      );
    }
  }



