package com.example.SegundoParcial.Controllers;

import com.example.SegundoParcial.Models.Partido;
import com.example.SegundoParcial.Services.PartidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/partidos")
public class PartidoController {

    @Autowired
    private PartidoService partidoService;

    @GetMapping
    public List<Partido> listarPartidos() {
        return partidoService.obtenerTodos();
    }

    @GetMapping("/{id_partido}")
    public Partido obtenerPartido(@PathVariable int id_partido) {
        return partidoService.obtenerPorId(id_partido);
    }

    @PostMapping
    public Partido crearPartido(@RequestBody Partido partido) {
        return partidoService.guardar(partido);
    }

    @DeleteMapping("/{id_partido}")
    public void eliminarPartido(@PathVariable int id_partido) {
        partidoService.eliminar(id_partido);
    }
    @PutMapping("/{id_partido}")
    public Partido actualizarPartido(@PathVariable int id_partido, @RequestBody Partido partidoActualizado) {
        Partido existente = partidoService.obtenerPorId(id_partido);
        if (existente != null) {
            partidoActualizado.setId_partido(id_partido);
            return partidoService.guardar(partidoActualizado);
        } else {
            return null;
        }
    }

}
