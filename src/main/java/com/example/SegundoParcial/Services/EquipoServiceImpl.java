package com.example.SegundoParcial.Services;

import com.example.SegundoParcial.Models.Equipo;
import com.example.SegundoParcial.Repositories.EquipoRepository;
import com.example.SegundoParcial.Services.EquipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipoServiceImpl implements EquipoService {

    @Autowired
    private EquipoRepository equipoRepository;

    @Override
    public List<Equipo> obtenerTodos() {
        return equipoRepository.findAll();
    }

    @Override
    public Equipo obtenerPorId(int id_equipo) {
        return equipoRepository.findById(id_equipo).orElse(null);
    }

    @Override
    public Equipo guardar(Equipo equipo) {
        return equipoRepository.save(equipo);
    }

    @Override
    public void eliminar(int id_equipo) {
        equipoRepository.deleteById(id_equipo);
    }
}
