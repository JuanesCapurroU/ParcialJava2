package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Equipo;
import java.util.List;

public interface EquipoService {
    List<Equipo> obtenerTodos();
    Equipo obtenerPorId(int id_equipo);
    Equipo guardar(Equipo equipo);
    public void eliminar(int id_equipo);
}
