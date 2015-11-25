/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Modelo.Paquete;
import Modelo.Persona;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JAIR Y brances
 */
public class PersonaRepositorio {
     private static List<Persona> gente = new ArrayList<Persona>();
    private static Paquete enviar = new Paquete();
    private static Paquete recibir = new Paquete();
    
     public Iterable<Persona> getgente()
        {
            
          

            Persona pg1 = new Persona(123,"Jair", "Cardona", "Turbaco", "lkahda", 1);
            Persona pg2 = new Persona(124,"Jairo", "Cardona", "Turbaco", "lkahda", 2);
            Persona pg3 = new Persona(125,"Jaime", "Cardona", "Turbaco", "lkahda", 3);

            gente.add(pg1);
            gente.add(pg2);
            gente.add(pg3);

            return gente;
        }

    public void addgente(Persona p) {
        gente.add(p);
    }
}
