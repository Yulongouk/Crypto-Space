enum Level {
  beginner,
  intermidate,
  advanced,
}

class Videos {
  final String videosLink;
  final String imgLink;
  final String title;
  final Level level;

  Videos(this.videosLink, this.imgLink, this.title, this.level);
}
