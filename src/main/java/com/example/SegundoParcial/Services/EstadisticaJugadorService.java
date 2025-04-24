package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.EstadisticaJugador;
import java.util.List;

public interface EstadisticaJugadorService {
    List<EstadisticaJugador> obtenerTodos();
    EstadisticaJugador obtenerPorId(int id_estadistica);
    EstadisticaJugador guardar(EstadisticaJugador estadistica);
    public void eliminar(int id_estadistica);
}
