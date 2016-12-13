package com.robertsmieja.example.repository;

import com.robertsmieja.example.domain.Country;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends PagingAndSortingRepository<Country, Long> {

    Country findById(Long id);

}
