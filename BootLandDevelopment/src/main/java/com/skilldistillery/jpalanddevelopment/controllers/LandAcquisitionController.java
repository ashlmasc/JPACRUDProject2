package com.skilldistillery.jpalanddevelopment.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

	// Create a new property
	@GetMapping("addProperty.do")
	public String addPropertyForm() {
		return "addProperty";
	}

	// addProperty without adding photo
	@PostMapping("addProperty.do")
	public String createProperty(LandAcquisition land, Model model) {
		try {
			land = landAcquisitionDAO.addLandAcquisition(land);
			model.addAttribute("land", land);
			return "land/show";
		} catch (Exception e) {
			model.addAttribute("errorMessage", "Error creating property: " + e.getMessage());
			return "error";
		}
	}
	
	@GetMapping("viewAllProperties.do")
	public String viewAllProperties(Model model) {
		List<LandAcquisition> land = landAcquisitionDAO.findAll();
		model.addAttribute("allProperties", land);
		return "listFormatPage"; // JSP page that displays the list
	}
	
	@ExceptionHandler(Exception.class)
	public String handleException(Exception e, Model model) {
		e.printStackTrace();
	    model.addAttribute("errorMessage", e.getMessage());
	    return "error"; 
	}

}
