package com.example.SegundoParcial.Models;

import jakarta.persistence.*;

@Entity
public class Entrenador {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_entrenador;
    private String nombre;
    private String especialidad;

    @ManyToOne
    @JoinColumn(name = "id_equipo")
    private Equipo equipo;

    public Entrenador() {
    }

    public Entrenador(int id_entrenador, String nombre, String especialidad, Equipo equipo) {
        this.id_entrenador = id_entrenador;
        this.nombre = nombre;
        this.especialidad = especialidad;
        this.equipo = equipo;
    }

    public int getId_entrenador() {
        return id_entrenador;
    }

    public void setId_entrenador(int id_entrenador) {
        this.id_entrenador = id_entrenador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public Equipo getEquipo() {
        return equipo;
    }

    public void setEquipo(Equipo equipo) {
        this.equipo = equipo;
    }

    @Override
    public String toString() {
        return "Entrenador{" +
                "id_entrenador=" + id_entrenador +
                ", nombre='" + nombre + '\'' +
                ", especialidad='" + especialidad + '\'' +
                ", equipo=" + equipo +
                '}';
    }
}
