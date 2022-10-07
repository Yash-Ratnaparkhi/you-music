class CheckTime {
  static String checkTime() {
    int now = DateTime.now().hour;

    if (now > 0 && now < 12) {
      return "Good morning";
    }
    if (now >= 12 && now < 18) {
      return "Good afternoon";
    }
    if (now >= 18 && now <= 24) {
      return "Good evening";
    }
    return "";
  }
}
