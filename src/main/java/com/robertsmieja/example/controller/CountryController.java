package com.robertsmieja.example.controller;

import com.robertsmieja.example.domain.Country;
import com.robertsmieja.example.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/country")
public class CountryController {
    @Autowired
    private CountryRepository countryRepository;

    @RequestMapping(method = RequestMethod.GET, value = {"", "index"})
    public String index(Model model){
        model.addAttribute("countries", countryRepository.findAll());
        return "country/index";
    }

    @RequestMapping("edit/{id}")
    public String edit(@PathVariable Long id, Model model){
        model.addAttribute("country", countryRepository.findById(id));
        return "country/edit";
    }

    @RequestMapping("create")
    public String create(){
        return "country/create";
    }

    @RequestMapping("save")
    public String save(Country country){
        countryRepository.save(country);
        return "redirect:index";
    }
}
