package dnit.testes;

import java.io.IOException;

public class Teste {
    public static void main(String[] args) {

        Process programa;

        try {
            programa = Runtime.getRuntime().exec("libs/Teste.exe");
            programa.destroy();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
    }

}