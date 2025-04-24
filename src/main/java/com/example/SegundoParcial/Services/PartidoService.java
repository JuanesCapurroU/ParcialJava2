package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Partido;
import java.util.List;

public interface PartidoService {
    List<Partido> obtenerTodos();
    Partido obtenerPorId(int id_partido);
    Partido guardar(Partido partido);
    public void eliminar(int id_partido);
}
