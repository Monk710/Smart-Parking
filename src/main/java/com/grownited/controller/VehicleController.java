package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VehicleEntity;
import com.grownited.repository.VehicleRepository;

@Controller
public class VehicleController {
	@Autowired
	VehicleRepository repositoryVehicle;

	@GetMapping("newvehicle")
	public String newVehicle() {
		return "NewVehicle";
	}                 
	
	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity entityVehicle){
		repositoryVehicle.save(entityVehicle);
		return "redirect:/listvehicle";            // jsp name
	}
	
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<VehicleEntity> vehicleList = repositoryVehicle.findAll();
		model.addAttribute("vehicleList", vehicleList);
						//dataName , dataValue 
		
		return "ListVehicle";
	}
	
	@GetMapping("viewvehicle")
	public String viewVehicle(Integer vehicleId, Model model) {
		// ?
		System.out.println("id ===> " + vehicleId);
		Optional<VehicleEntity> op = repositoryVehicle.findById(vehicleId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			VehicleEntity vehicle = op.get();
			// send data to jsp ->
			model.addAttribute("vehicle", vehicle);
		}
		return "ViewVehicle";
	}

	@GetMapping("deletevehicle")
	public String deleteVehicle(Integer vehicleId) {
		repositoryVehicle.deleteById(vehicleId);
		return "redirect:/listvehicle";
	}

}
