import 'Author.dart';
import 'Category.dart';
import 'dart:math';

class Story {
  String headline;
  int cred;
  int cost;
  Category subject;
  Author author;

  Random rnd = new Random();

  Story(this.author, Category companyType) {
    if (rnd.nextInt(1) == 0) {
      this.subject = author.pickCat();
    } else {
      this.subject = companyType;
    }

    this.cred = author.getCredibility() - (rnd.nextInt(20) - 10);

    if (this.cred > 100) {
      this.cred = 100;
    } else if (this.cred < 0){
      this.cred = 0;
    }

    this.cost = author.getPrice();

    this.headline = "A Story";
  }

  Story.automatic () {
    this.author = new Author.automatic();

    this.subject = this.author.pickCat();

    this.cred = this.author.getCredibility() - (rnd.nextInt(20) - 10);

    if (this.cred > 100) {
      this.cred = 100;
    } else if (this.cred < 0){
      this.cred = 0;
    }

    this.cost = author.getPrice();

    this.headline = "A Story";
  }
}