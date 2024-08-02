package com.kevinvidal.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.Noticia;
import com.kevinvidal.repositorios.RepositorioNoticia;

import java.util.Optional;
import java.util.Set;

@Service
public class ServicioNoticia{
    @Autowired
    private RepositorioNoticia repositorioNoticia;
    
    public ServicioNoticia(RepositorioNoticia repositorioNoticia) {
		super();
		this.repositorioNoticia = repositorioNoticia;
	}

	public Iterable<Noticia> obtenerTodas() {
        return repositorioNoticia.findAll();
    }

    public Optional<Noticia> obtenerPorId(Long id) {
        return repositorioNoticia.findById(id);
    }

    public Noticia publicaNoticia(Noticia noticia) {
        return repositorioNoticia.save(noticia);
    }
}
