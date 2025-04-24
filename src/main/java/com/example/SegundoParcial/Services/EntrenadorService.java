package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Entrenador;
import java.util.List;

public interface EntrenadorService {
    List<Entrenador> obtenerTodos();
    Entrenador obtenerPorId(int id_entrenador);
    Entrenador guardar(Entrenador entrenador);
    public void eliminar(int id_entrenador);
}
