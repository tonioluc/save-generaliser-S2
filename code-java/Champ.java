package fonctions;

import java.lang.reflect.Field;
import java.util.Vector;
import java.util.*;
import zavam.*;

public class Champ {
    String nomClass;
    String[] hidden;
    Vector<Field> sett;

    public void setHidden(String[] hidden) {
        String[] result = new String[hidden.length];
        for (int i = 0; i < hidden.length; i++) {
            result[i] = hidden[i].toLowerCase();
        }
        this.hidden = result;
    }

    public String[] getHidden() {
        return hidden;
    }

    public String getNomClass() {
        return nomClass;
    }

    public void setNomClass(String nomClass) {
        this.nomClass = nomClass;
    }

    public Vector<Field> getSett() {
        return sett;
    }

    public void setSett(Vector<Field> sett) {
        this.sett = sett;
    }

    public Champ(String nomClass) {
        this.nomClass = nomClass;
    }

    @SuppressWarnings("rawtypes")
    public void getFields() throws ClassNotFoundException {
        Vector<Field> result = new Vector<>();
        Class classe = Class.forName(getNomClass());
        Class classeMere = classe.getSuperclass();
        while (classeMere != null) {
            Field[] fs = classeMere.getDeclaredFields();
            for (int i = 0; i < fs.length; i++) {
                if (fs[i].getName().equals("fileName")
                        || Arrays.asList(getHidden()).contains(fs[i].getName().toLowerCase())) {
                    continue;
                }
                result.add(fs[i]);
            }
            classeMere = classeMere.getSuperclass();
        }
        Field[] f = classe.getDeclaredFields();
        for (int i = 0; i < f.length; i++) {
            if (f[i].getName().equals("fileName")
                    || Arrays.asList(getHidden()).contains(f[i].getName().toLowerCase())) {
                continue;
            }
            result.add(f[i]);
        }
        setSett(result);
    }

    public void setOrdre(String attr, int place) {
        for (int i = 0; i < getSett().size(); i++) {
            if (getSett().get(i).getName().equals(attr)) {
                Field temp = getSett().get(place);
                getSett().setElementAt(getSett().get(i), place);
                getSett().setElementAt(temp, i);
                break;
            }
        }
    }
}