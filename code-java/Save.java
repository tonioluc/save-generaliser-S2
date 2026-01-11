package zavam;

import java.io.*;
import java.lang.reflect.*;
import java.util.Vector;

public class Save {

    public void sauvegarde(String fileName, Vector<String> input, Vector<String> fieldName) {
        try {
            FileWriter fw = new FileWriter(fileName, true);
            for (int i = 0; i < input.size(); i++) {
                fw.write((String) fieldName.get(i) + " : " + input.get(i) + " ");
                if (i != input.size() - 1) {
                    fw.write(", ");
                }
            }
            fw.write("\n");
            fw.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
