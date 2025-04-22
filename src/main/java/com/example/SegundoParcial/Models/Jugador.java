package com.example.SegundoParcial.Models;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
public class Jugador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_jugador;
    private String nombre;
    private String posicion;
    private int dorsal;
    private LocalDate fecha_nac;
    private String nacionalidad;

    @ManyToOne
    @JoinColumn(name = "id_equipo")
    private Equipo equipo;

}
