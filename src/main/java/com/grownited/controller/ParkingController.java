package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ParkingEntity;
import com.grownited.repository.ParkingRepository;

@Controller
public class ParkingController {
	@Autowired
	ParkingRepository repositoryParking;

	@GetMapping("newparking")
	public String newParking() {
		return "NewParking";
	}                 
	
	@PostMapping("saveparking")
	public String saveParking(ParkingEntity entityParking){
		repositoryParking.save(entityParking);
		return "redirect:/listparking";            // jsp name
	}
	
	@GetMapping("listparking")
	public String listParking(Model model) {
		List<ParkingEntity> parkingList = repositoryParking.findAll();
		model.addAttribute("parkingList", parkingList);
						//dataName , dataValue 
		
		return "ListParking";
	}
	
	@GetMapping("viewparking")
	public String viewParking(Integer parkingId, Model model) {
		// ?
		System.out.println("id ===> " + parkingId);
		Optional<ParkingEntity> op = repositoryParking.findById(parkingId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			ParkingEntity parking = op.get();
			// send data to jsp ->
			model.addAttribute("parking", parking);
		}
		return "ViewParking";
	}

	@GetMapping("deleteparking")
	public String deleteParking(Integer parkingId) {
		repositoryParking.deleteById(parkingId);
		return "redirect:/listparking";
	}

}
