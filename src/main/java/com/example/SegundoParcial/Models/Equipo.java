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

    public Equipo() {
    }

    public Equipo(int id_equipo, String nombre, String ciudad, LocalDate fundacion, List<Jugador> jugadores, List<Entrenador> entrenadores) {
        this.id_equipo = id_equipo;
        this.nombre = nombre;
        this.ciudad = ciudad;
        this.fundacion = fundacion;
        this.jugadores = jugadores;
        this.entrenadores = entrenadores;
    }

    public int getId_equipo() {
        return id_equipo;
    }

    public void setId_equipo(int id_equipo) {
        this.id_equipo = id_equipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public LocalDate getFundacion() {
        return fundacion;
    }

    public void setFundacion(LocalDate fundacion) {
        this.fundacion = fundacion;
    }

    public List<Jugador> getJugadores() {
        return jugadores;
    }

    public void setJugadores(List<Jugador> jugadores) {
        this.jugadores = jugadores;
    }

    public List<Entrenador> getEntrenadores() {
        return entrenadores;
    }

    public void setEntrenadores(List<Entrenador> entrenadores) {
        this.entrenadores = entrenadores;
    }

    @Override
    public String toString() {
        return "Equipo{" +
                "id_equipo=" + id_equipo +
                ", nombre='" + nombre + '\'' +
                ", ciudad='" + ciudad + '\'' +
                ", fundacion=" + fundacion +
                ", jugadores=" + jugadores +
                ", entrenadores=" + entrenadores +
                '}';
    }
}
