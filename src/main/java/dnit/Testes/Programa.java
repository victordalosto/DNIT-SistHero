
package dnit.testes;

public class Programa {
    
    private static Process process;
    
    private Programa(){}

    public static synchronized void runPrograma(tipoPrograma tipo) {
        killProgram();
        System.out.println(tipo.getCaminhoArquivo());
    }


    public static void killProgram() {
        if (process != null)
            process.destroy();
    }


    /** Conjunto de enums que identificam o tipo de arquivo que será aberto */
    public enum tipoPrograma {
        BASIC("libs/Basic.exe"),
        PAVIMENTO("libs/Pavimento.exe"),
        SINALIZACAO("libs/Sinalizacao.exe"),
        ACOSTAMENTO("libs/Acostamento.exe");
    
        private String caminhoArquivo;
    
        private tipoPrograma(String caminhoArquivo) {
            this.caminhoArquivo = caminhoArquivo;
        }
    
        public String getCaminhoArquivo() {
            return caminhoArquivo;
        }
    }
}
