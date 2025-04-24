package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Entrenador;
import com.example.SegundoParcial.Repositories.EntrenadorRepository;
import com.example.SegundoParcial.Services.EntrenadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EntrenadorServiceImpl implements EntrenadorService {

    @Autowired
    private EntrenadorRepository entrenadorRepository;

    @Override
    public List<Entrenador> obtenerTodos() {
        return entrenadorRepository.findAll();
    }

    @Override
    public Entrenador obtenerPorId(int id_entrenador) {
        return entrenadorRepository.findById(id_entrenador).orElse(null);
    }

    @Override
    public Entrenador guardar(Entrenador entrenador) {
        return entrenadorRepository.save(entrenador);
    }

    @Override
    public void eliminar(int id_entrenador) {
        entrenadorRepository.deleteById(id_entrenador);
    }
}
