package com.example.SegundoParcial.Models;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
public class Partido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_partido;
    private LocalDate fecha;
    private String estadio;

    @ManyToOne
    @JoinColumn(name = "equipo_local")
    private Equipo equipoLocal;

    @ManyToOne
    @JoinColumn(name = "equipo_visita")
    private Equipo equipoVisita;

    private int golesLocal;
    private int golesVisita;
}
