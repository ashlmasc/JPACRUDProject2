package com.skilldistillery.jpalanddevelopment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpalanddevelopment.data.LandAcquisitionDAO;
import com.skilldistillery.jpalanddevelopment.entities.LandAcquisition;

@Controller
public class LandAcquisitionController {
	
	private LandAcquisitionDAO landAcquisitionDAO;

	public LandAcquisitionController(LandAcquisitionDAO landAcquisitionDAO) {
		this.landAcquisitionDAO = landAcquisitionDAO;
	}
	
	@GetMapping({ "/", "home.do" })
	public String index() {
		return "home";
	}
	
	@GetMapping("getPropertyDetail.do")
	public String getPropertyDetail(@RequestParam("landAcquisitionId") int id, Model model) {
		LandAcquisition land = landAcquisitionDAO.findById(id);
	    if (land == null) {
	        model.addAttribute("errorMessage", "No property found with ID: " + id);
	        return "error";
	    } else {
	        model.addAttribute("land", land);
	        return "land/show"; 
	    }
	}

}
