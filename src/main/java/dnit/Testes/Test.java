package javacode;

import java.util.Scanner;
import javacode.Programa.tipoPrograma;

public class Test {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String texto = "";
        while (!texto.equals("exit")) {
            texto = scanner.nextLine();
            if (texto.equals("basic")) 
                Programa.runPrograma(tipoPrograma.BASIC);
            if (texto.equals("ac")) 
                Programa.runPrograma(tipoPrograma.ACOSTAMENTO);
            if (texto.equals("sin")) 
                Programa.runPrograma(tipoPrograma.SINALIZACAO);
            if (texto.equals("pav")) 
                Programa.runPrograma(tipoPrograma.PAVIMENTO);
        }
        scanner.close();
    }
    
}
