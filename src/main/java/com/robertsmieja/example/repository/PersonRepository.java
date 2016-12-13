package com.robertsmieja.example.repository;

import com.robertsmieja.example.domain.City;
import com.robertsmieja.example.domain.Person;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends PagingAndSortingRepository<Person, Long> {
}
