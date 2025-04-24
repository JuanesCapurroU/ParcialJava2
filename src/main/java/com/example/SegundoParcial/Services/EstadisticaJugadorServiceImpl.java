package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.EstadisticaJugador;
import com.example.SegundoParcial.Repositories.EstadisticaJugadorRepository;
import com.example.SegundoParcial.Services.EstadisticaJugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EstadisticaJugadorServiceImpl implements EstadisticaJugadorService {

    @Autowired
    private EstadisticaJugadorRepository estadisticaJugadorRepository;

    @Override
    public List<EstadisticaJugador> obtenerTodos() {
        return estadisticaJugadorRepository.findAll();
    }

    @Override
    public EstadisticaJugador obtenerPorId(int id_estadistica) {
        return estadisticaJugadorRepository.findById(id_estadistica).orElse(null);
    }

    @Override
    public EstadisticaJugador guardar(EstadisticaJugador estadistica) {
        return estadisticaJugadorRepository.save(estadistica);
    }

    @Override
    public void eliminar(int id_estadistica) {
        estadisticaJugadorRepository.deleteById(id_estadistica);
    }
}
