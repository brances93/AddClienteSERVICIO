/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;


/**
 *
 * @author SIM-12
 */
@Entity
public class Factura implements Serializable{

     @Id
     private long id;
        private Dos_DiasPaquete date;
        private Persona customers;
        protected static long val = 0;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Dos_DiasPaquete getDate() {
        return date;
    }

    public void setDate(Dos_DiasPaquete date) {
        this.date = date;
    }

    public Persona getCustomers() {
        return customers;
    }

    public void setCustomers(Persona customers) {
        this.customers = customers;
    }

    public static long getVal() {
        return val;
    }

    public static void setVal(long val) {
        Factura.val = val;
    }
    
        
         public Factura()
        {
            this.id = ++val;
            this.date = new Dos_DiasPaquete();
           
        }
        public Factura(Dos_DiasPaquete date)
        {
            this.id = ++val;
            this.date = date;
          
        }
        public String ToString()
        {
            return "\nId :" + this.id +
                   "\nDate :" + this.date +
                   "\nCustomer :" + this.customers +
                   "\n_______________________________________";
        }
        public int HashCode()
        {
            return this.ToString().hashCode();
        }
}
