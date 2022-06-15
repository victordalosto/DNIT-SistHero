import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Teste {

    public static void main(String[] args) throws IOException, InterruptedException {

        Path pathSinalizacao = Paths.get("Sinalizacao-V2.ahk");

        final Process process = Runtime.getRuntime().exec(new String[] {
                "C:\\Program Files\\WindowsApps\\HaukeGtze.AutoHotkeypoweredbyweatherlights.com_1.1133.1011.0_x64__6bk20wvc8rfx2\\AutoHotkey.exe",
                pathSinalizacao.toAbsolutePath().toString() });
                
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
            public void run() {
                process.destroy();
            }
        }));

        // Runtime rt = Runtime.getRuntime();
        // rt.exec(new String[] {
        //         "C:\\Program Files\\WindowsApps\\HaukeGtze.AutoHotkeypoweredbyweatherlights.com_1.1133.1011.0_x64__6bk20wvc8rfx2\\AutoHotkey.exe",
        //         "G:\\Meu Drive\\Programacao\\Git\\victordalosto\\Dalosto\\Sisthero\\Sinalizacao-V2.ahk" });

        Thread.sleep(2000);
        System.out.println("Testa");
        process.destroy();
    }

}