package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Jugador;
import java.util.List;

public interface JugadorService {
    List<Jugador> obtenerTodos();
    Jugador obtenerPorId(int id_jugador);
    Jugador guardar(Jugador jugador);
    public void eliminar(int id_jugador);
}
