package com.nagarro.controllers;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.models.Flight;
import com.nagarro.services.FlightService;

@RestController
public class FlightController {
	
	@Autowired
	private FlightService flightService;
	
	// api for going to home page 
	@RequestMapping(value= {"/flight-home","/"})
	public ModelAndView flightSearchPage() {
		return new ModelAndView ("home");
	}
	
	
	// api for going to results page 
	@PostMapping("/search")
	public ModelAndView search(String departureLocation, String arrivalLocation, String dateOfJourney, String flightClass,String sortingType) throws ParseException {
	
		ModelAndView mv=new ModelAndView("flightresults");
		List<Flight> flights=flightService.searchFlights(departureLocation,arrivalLocation,dateOfJourney,flightClass,sortingType);
		mv.addObject("flights", flights);
		return mv;
	}
}
