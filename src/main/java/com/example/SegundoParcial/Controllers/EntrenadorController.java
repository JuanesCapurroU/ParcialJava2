package com.example.SegundoParcial.Controllers;

import com.example.SegundoParcial.Models.Entrenador;
import com.example.SegundoParcial.Services.EntrenadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/entrenadores")
public class EntrenadorController {

    @Autowired
    private EntrenadorService entrenadorService;

    @GetMapping
    public List<Entrenador> listarEntrenadores() {
        return entrenadorService.obtenerTodos();
    }

    @GetMapping("/{id_entrenador}")
    public Entrenador obtenerEntrenador(@PathVariable int id_entrenador) {
        return entrenadorService.obtenerPorId(id_entrenador);
    }

    @PostMapping
    public Entrenador crearEntrenador(@RequestBody Entrenador entrenador) {
        return entrenadorService.guardar(entrenador);
    }

    @DeleteMapping("/{id_entrenador}")
    public void eliminarEntrenador(@PathVariable int id_entrenador) {
        entrenadorService.eliminar(id_entrenador);
    }
    @PutMapping("/{id_entrenador}")
    public Entrenador actualizarEntrenador(@PathVariable int id_entrenador, @RequestBody Entrenador entrenadorActualizado) {
        Entrenador existente = entrenadorService.obtenerPorId(id_entrenador);
        if (existente != null) {
            entrenadorActualizado.setId_entrenador(id_entrenador);
            return entrenadorService.guardar(entrenadorActualizado);
        } else {
            return null;
        }
    }

}
