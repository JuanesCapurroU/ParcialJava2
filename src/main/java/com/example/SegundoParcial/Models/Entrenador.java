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

}
