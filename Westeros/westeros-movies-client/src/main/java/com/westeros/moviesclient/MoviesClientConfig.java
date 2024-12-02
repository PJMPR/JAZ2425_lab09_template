package com.westeros.moviesclient;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class MoviesClientConfig {

    @Bean
    @Scope("prototype")
    public MoviesClient moviesClient(IMoviesClientUriBuilderProvider uriBuilderProvider) {
        return new MoviesClient(uriBuilderProvider);
    }
}
