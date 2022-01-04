import 'package:news/models/category_model.dart';
import 'package:flutter/material.dart';
List<CategoryModel> getCategories(){
  //List<CategoryModel> category=new List<CategoryModel>[];
  var category=<CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryname="Business";
  categoryModel.imageUrl="assets/buisness.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="Entertainment";
  categoryModel.imageUrl="assets/entertainment.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="General";
  categoryModel.imageUrl="assets/general.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="Health";
  categoryModel.imageUrl="assets/health.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="Science";
  categoryModel.imageUrl="assets/science.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="Sports";
  categoryModel.imageUrl="assets/sports.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryname="Technology";
  categoryModel.imageUrl="assets/technology.jpg";
  category.add(categoryModel);

 return category;
}
