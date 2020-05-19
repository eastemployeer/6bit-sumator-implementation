import java.nio.file.Files;
import java.nio.file.Paths;


public class Generate {

    public static void main(String[] args) {

        String data = "";

        for (int i = 0; i <= 63; i++) {
            int value =i;
            String number = Integer.toBinaryString(i);

            while(number.length() < 6) {
                number = "0" + number;
            }
            for( int j=0;j<=63;j++){
                int value2=j;
                String number2 = Integer.toBinaryString(j);
                while(number2.length() < 6) {
                    number2 = "0" + number2;
                }
                int result = value +value2;
                String result_string = Integer.toBinaryString(result);
                while(result_string.length() < 7) {
                    result_string = "0" + result_string;
                }
                data = data + number + number2 + result_string+"\n";
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