package com.robertsmieja.example.domain;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Country {

    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false, length = 100)
    private String name;

    @OneToMany
    private Collection<City> cities;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<City> getCities() {
        return cities;
    }

    public void setCities(Collection<City> cities) {
        this.cities = cities;
    }
}
