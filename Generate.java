import java.nio.file.Files;
import java.nio.file.Paths;


public class Generate {

    public static void main(String[] args) {

        String data = "";
        String number1;
        String number2;
        String sum;

        for (int i = 0; i <= 63; i++) {
            number1 = Integer.toBinaryString(i);
            while(number1.length() < 6) {
                number1 = "0" + number1;
            }
            for (int j = 0; j <= 63; j++) {
                number2 = Integer.toBinaryString(j);
                while(number2.length() < 6) {
                    number2 = "0" + number2;
                }
                sum = Integer.toBinaryString(i+j);

                while(sum.length() < 7) {
                    sum = "0" + sum;
                }
                data = data + number1 + number2 + sum + "\n";
            }

        }

        try {
            Files.write(Paths.get("data.txt"), data.getBytes());
        }
        catch ( Exception e) {
            System.out.println("error");
        }



    }
}
