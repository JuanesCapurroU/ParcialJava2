package com.example.SegundoParcial.Controllers;

import com.example.SegundoParcial.Models.Equipo;
import com.example.SegundoParcial.Services.EquipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/equipos")
public class EquipoController {

    @Autowired
    private EquipoService equipoService;

    @GetMapping
    public List<Equipo> listarEquipos() {
        return equipoService.obtenerTodos();
    }

    @GetMapping("/{id_equipo}")
    public Equipo obtenerEquipo(@PathVariable int id_equipo) {
        return equipoService.obtenerPorId(id_equipo);
    }

    @PostMapping
    public Equipo crearEquipo(@RequestBody Equipo equipo) {
        return equipoService.guardar(equipo);
    }

    @DeleteMapping("/{id_equipo}")
    public void eliminarEquipo(@PathVariable int id_equipo) {
        equipoService.eliminar(id_equipo);
    }
    @PutMapping("/{id_equipo}")
    public Equipo actualizarEquipo(@PathVariable int id_equipo, @RequestBody Equipo equipoActualizado) {
        Equipo existente = equipoService.obtenerPorId(id_equipo);
        if (existente != null) {
            equipoActualizado.setId_equipo(id_equipo);
            return equipoService.guardar(equipoActualizado);
        } else {
            return null;
        }
    }

}
