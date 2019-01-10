

class DateUtils{
  static String getDate(String MMddHH) {
    if (MMddHH.isNotEmpty && MMddHH.length == 6) {
      return MMddHH.substring(0, 2) + "-" + MMddHH.substring(2, 4) + " " +
          MMddHH.substring(4, 6) + ":" + "07";
    }
  }
}