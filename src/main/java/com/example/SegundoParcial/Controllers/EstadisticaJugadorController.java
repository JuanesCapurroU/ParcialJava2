package com.example.SegundoParcial.Controllers;

import com.example.SegundoParcial.Models.EstadisticaJugador;
import com.example.SegundoParcial.Services.EstadisticaJugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/estadisticas")
public class EstadisticaJugadorController {

    @Autowired
    private EstadisticaJugadorService estadisticaJugadorService;

    @GetMapping
    public List<EstadisticaJugador> listarEstadisticas() {
        return estadisticaJugadorService.obtenerTodos();
    }

    @GetMapping("/{id_estadistica}")
    public EstadisticaJugador obtenerEstadistica(@PathVariable int id_estadistica) {
        return estadisticaJugadorService.obtenerPorId(id_estadistica);
    }

    @PostMapping
    public EstadisticaJugador crearEstadistica(@RequestBody EstadisticaJugador estadistica) {
        return estadisticaJugadorService.guardar(estadistica);
    }

    @DeleteMapping("/{id_estadistica}")
    public void eliminarEstadistica(@PathVariable int id_estadistica) {
        estadisticaJugadorService.eliminar(id_estadistica);
    }
    @PutMapping("/{id_estadistica}")
    public EstadisticaJugador actualizarEstadistica(@PathVariable int id_estadistica, @RequestBody EstadisticaJugador estadisticaActualizada) {
        EstadisticaJugador existente = estadisticaJugadorService.obtenerPorId(id_estadistica);
        if (existente != null) {
            estadisticaActualizada.setId_estadistica(id_estadistica);
            return estadisticaJugadorService.guardar(estadisticaActualizada);
        } else {
            return null;
        }
    }

}
