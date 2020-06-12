import java.nio.file.Files;
import java.nio.file.Paths;

public class Generate_previous {




        public static void main(String[] args) {

            String data = "";

            for (int i = 0; i <= 4095; i++) {
                String number = Integer.toBinaryString(i);

                while(number.length() < 12) {
                    number = "0" + number;
                }
                data = data + number + "\n";
            }

            try {
                Files.write(Paths.get("data1.txt"), data.getBytes());
            }
            catch ( Exception e) {
                System.out.println("error");
            }



        }

}
