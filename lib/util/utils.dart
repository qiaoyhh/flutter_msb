

class Utils {
  static String getImgPath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }
  static String getImgPathByWebp(String name, {String format: 'webp'}) {
    return 'assets/images/$name.$format';
  }
}
