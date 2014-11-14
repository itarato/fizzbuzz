public class Main {

  public static void main(String[] args) {
    String out = "";

    for (int i = 1; i <= 100; i++) {
      out = "";
      if (i % 3 == 0) {
        out = out + "fizz";
      }
      if (i % 5 == 0) {
        out = out + "buzz";
      }

      if (out.equals("")) {
        out = String.valueOf(i);
      }

      System.out.println(out);
    }
  }

}
