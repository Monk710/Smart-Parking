package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.LocationEntity;
import com.grownited.repository.LocationRepository;

@Controller
public class LocationController {
	@Autowired
	LocationRepository repositoryLocation;

	@GetMapping("newlocation")
	public String newLocation() {
		return "NewLocation";
	}                 
	
	@PostMapping("savelocation")
	public String saveLocation(LocationEntity entityLocation){
		repositoryLocation.save(entityLocation);
		return "redirect:/listlocation";            // jsp name
	}
	
	@GetMapping("listlocation")
	public String listLocation(Model model) {
		List<LocationEntity> locationList = repositoryLocation.findAll();
		model.addAttribute("locationList", locationList);
						//dataName , dataValue 
		
		return "ListLocation";
	}
	
	@GetMapping("viewlocation")
	public String viewLocation(Integer locationId, Model model) {
		// ?
		System.out.println("id ===> " + locationId);
		Optional<LocationEntity> op = repositoryLocation.findById(locationId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			LocationEntity location = op.get();
			// send data to jsp ->
			model.addAttribute("location", location);
		}
		return "ViewLocation";
	}

	@GetMapping("deletelocation")
	public String deleteLocation(Integer locationId) {
		repositoryLocation.deleteById(locationId);
		return "redirect:/listlocation";
	}

}
