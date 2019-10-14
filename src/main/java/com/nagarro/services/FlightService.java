package com.nagarro.services;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.models.Flight;
import com.nagarro.repositores.FlightRepository;

@Service
public class FlightService {
	
	@Autowired
	private FlightRepository flightRepository;

	// method to search all the flights
	public List<Flight> searchFlights(String departureLocation, String arrivalLocation, String dateOfJourney,
			String flightClass, String sortingType) throws ParseException {
		
		Date tempDate = new SimpleDateFormat("yyyy-MM-dd").parse(dateOfJourney);
		if(sortingType.equals("FareAndDuration"))
			sortingType="flightDur";
		return flightRepository.searchFlights(departureLocation,arrivalLocation,flightClass,tempDate,sortingType);
		
		
	}

}
