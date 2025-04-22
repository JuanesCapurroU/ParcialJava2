package com.example.SegundoParcial.Models;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;


@Entity
public class Equipo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_equipo;
    private String nombre;
    private String ciudad;
    private LocalDate fundacion;

    @OneToMany(mappedBy = "equipo", cascade = CascadeType.ALL)
    private List<Jugador> jugadores;

    @OneToMany(mappedBy = "equipo", cascade = CascadeType.ALL)
    private List<Entrenador> entrenadores;




}
