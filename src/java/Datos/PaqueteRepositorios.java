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
public class PaqueteRepositorios {

    private static List<Paquete> data = new ArrayList<Paquete>();
    private static Persona enviar = new Persona();
    private static Persona recibir = new Persona();
    
     public Iterable<Paquete> getPaquete()
        {
            
          

            Paquete pg1 = new Paquete("T123", enviar, recibir, 46.5, 5000.0);
            Paquete pg2 = new Paquete("T124", recibir, enviar, 26.5, 4000.0);
            Paquete pg3 = new Paquete("T125", enviar, recibir, 16.5, 3000.0);

            data.add(pg1);
            data.add(pg2);
            data.add(pg3);

            return data;
        }

    public void addPaquete(Paquete p) {
        data.add(p);
    }
}
