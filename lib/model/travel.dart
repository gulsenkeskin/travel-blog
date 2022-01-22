class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel("Place 1", "Place 1", "assets/images/top1.jpg"),
      Travel("Place 2", "Place 2", "assets/images/top2.jpg"),
      Travel("Place 3", "Place 3", "assets/images/top3.jpg"),
      Travel("Place 4", "Place 4", "assets/images/top4.jpg"),
    ];
  }
}
