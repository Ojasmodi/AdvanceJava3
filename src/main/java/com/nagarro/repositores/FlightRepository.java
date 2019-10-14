package com.nagarro.repositores;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nagarro.models.Flight;

@Repository
public interface FlightRepository extends JpaRepository<Flight, String> {

	@Query("select f from Flight f where f.depLoc=?1 and f.arrLoc=?2  and flightClass like %?3% and f.validTill>=?4 order by ?5 ASC")
	List<Flight> searchFlights(String departureLocation, String arrivalLocation, String flightClass, Date date,
			String sortingType);
}
