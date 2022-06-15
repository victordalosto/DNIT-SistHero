import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Open {

    public static void main(String[] args) throws FileNotFoundException, IOException {

        try (BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream("Sinalizacao-V2.ahk")));
             BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("lorem2.txt")));) {

            String linha;
            while (((linha = br.readLine()) != null)) {
                System.out.println("R: " + linha);
                bw.write(linha);
                bw.flush();
                bw.newLine();
            }

        }
    }
}
