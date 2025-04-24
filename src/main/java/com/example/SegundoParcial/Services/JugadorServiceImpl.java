package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Jugador;
import com.example.SegundoParcial.Repositories.JugadorRepository;
import com.example.SegundoParcial.Services.JugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JugadorServiceImpl implements JugadorService {

    @Autowired
    private JugadorRepository jugadorRepository;

    @Override
    public List<Jugador> obtenerTodos() {
        return jugadorRepository.findAll();
    }

    @Override
    public Jugador obtenerPorId(int id_jugador) {
        return jugadorRepository.findById(id_jugador).orElse(null);
    }

    @Override
    public Jugador guardar(Jugador jugador) {
        return jugadorRepository.save(jugador);
    }

    @Override
    public void eliminar(int id_jugador) {
        jugadorRepository.deleteById(id_jugador);
    }
}
