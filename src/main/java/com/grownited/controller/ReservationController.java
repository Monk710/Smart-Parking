package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ReservationEntity;
import com.grownited.repository.ReservationRepository;

@Controller
public class ReservationController {
	@Autowired
	ReservationRepository repositoryReservation;

	@GetMapping("newreservation")
	public String newReservation() {
		return "NewReservation";
	}                 
	
	@PostMapping("savereservation")
	public String saveReservation(ReservationEntity entityReservation){
		repositoryReservation.save(entityReservation);
		return "redirect:/listreservation";            // jsp name
	}
	
	@GetMapping("listreservation")
	public String listReservation(Model model) {
		List<ReservationEntity> reservationList = repositoryReservation.findAll();
		model.addAttribute("reservationList", reservationList);
						//dataName , dataValue 
		
		return "ListReservation";
	}
	
	@GetMapping("viewreservation")
	public String viewReservation(Integer reservationId, Model model) {
		// ?
		System.out.println("id ===> " + reservationId);
		Optional<ReservationEntity> op = repositoryReservation.findById(reservationId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			ReservationEntity reservation = op.get();
			// send data to jsp ->
			model.addAttribute("reservation", reservation);
		}
		return "ViewReservation";
	}

	@GetMapping("deletereservation")
	public String deleteReservation(Integer reservationId) {
		repositoryReservation.deleteById(reservationId);
		return "redirect:/listreservation";
	}

}
