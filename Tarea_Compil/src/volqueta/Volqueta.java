/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package volqueta;
import jflex.*;
import java.io.File;

/**
 *
 * @author Checha
 */
public class Volqueta {
/*
 * @author Carlos
 */
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String path = "C:/Users/Checha/Documents/NetBeansProjects/Prototipo_JFlex/src/prototipo_jflex/Lexer.flex";
        generarLexer(path);

    }
    public static void generarLexer(String path){
        File file=new File(path);
        jflex.Main.generate(file);
    }
}
