package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Partido;
import com.example.SegundoParcial.Repositories.PartidoRepository;
import com.example.SegundoParcial.Services.PartidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PartidoServiceImpl implements PartidoService {

    @Autowired
    private PartidoRepository partidoRepository;

    @Override
    public List<Partido> obtenerTodos() {
        return partidoRepository.findAll();
    }

    @Override
    public Partido obtenerPorId(int id_partido) {
        return partidoRepository.findById(id_partido).orElse(null);
    }

    @Override
    public Partido guardar(Partido partido) {
        return partidoRepository.save(partido);
    }

    @Override
    public void eliminar(int id_partido) {
        partidoRepository.deleteById(id_partido);
    }
}
