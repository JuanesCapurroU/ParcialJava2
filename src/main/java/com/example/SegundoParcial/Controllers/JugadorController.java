package com.example.SegundoParcial.Controllers;

import com.example.SegundoParcial.Models.Jugador;
import com.example.SegundoParcial.Services.JugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/jugadores")
public class JugadorController {

    @Autowired
    private JugadorService jugadorService;

    @GetMapping
    public List<Jugador> listarJugadores() {
        return jugadorService.obtenerTodos();
    }

    @GetMapping("/{id_jugador}")
    public Jugador obtenerJugador(@PathVariable int id_jugador) {
        return jugadorService.obtenerPorId(id_jugador);
    }

    @PostMapping
    public Jugador crearJugador(@RequestBody Jugador jugador) {
        return jugadorService.guardar(jugador);
    }

    @DeleteMapping("/{id_jugador}")
    public void eliminarJugador(@PathVariable int id_jugador) {
        jugadorService.eliminar(id_jugador);
    }
    @PutMapping("/{id_jugador}")
    public Jugador actualizarJugador(@PathVariable int id_jugador, @RequestBody Jugador jugadorActualizado) {
        Jugador existente = jugadorService.obtenerPorId(id_jugador);
        if (existente != null) {
            jugadorActualizado.setId_jugador(id_jugador);
            return jugadorService.guardar(jugadorActualizado);
        } else {
            return null;
        }
    }

}
