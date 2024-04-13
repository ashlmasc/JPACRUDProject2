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
	public String getPropertyDetail(@RequestParam("id") int id, Model model) {
		LandAcquisition land = landAcquisitionDAO.findById(id);
		if (land == null) {
			model.addAttribute("errorMessage", "No property found with ID: " + id);
			return "error";
		} else {
			model.addAttribute("land", land);
			return "land/show";
		}
	}

	@GetMapping("addProperty.do")
	public String addPropertyForm() {
		return "addProperty";
	}

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

	@GetMapping("updateProperty.do")
	public String updatePropertyForm(@RequestParam("id") int id, Model model) {
		try {
			LandAcquisition land = landAcquisitionDAO.findById(id);
			if (land == null) {
				throw new IllegalArgumentException("Property with ID " + id + " not found.");
			}
			model.addAttribute("land", land);
			return "updateProperty"; 
		} catch (IllegalArgumentException e) {
			model.addAttribute("errorMessage", e.getMessage());
			return "error";
		} catch (Exception e) {
			model.addAttribute("errorMessage",
					"An unexpected error has occurred while attempting to update the property.");
			return "error"; 
		}
	}

	@PostMapping("updateProperty.do")
	public String updateProperty(@RequestParam("id") int id, LandAcquisition landAcquisition, Model model) {
		try {
			LandAcquisition updatedLand = landAcquisitionDAO.updateLandAcquisition(id, landAcquisition);
			if (updatedLand == null) {
				throw new IllegalArgumentException("Property with ID " + id + " not found.");
			}
			model.addAttribute("land", updatedLand); 
			return "updateConfirmation"; 
		} catch (IllegalArgumentException e) {
			model.addAttribute("errorMessage", e.getMessage());
			return "error";
		} catch (Exception e) {
			model.addAttribute("errorMessage",
					"An unexpected error has occurred while attempting to update the property.");
			return "error";
		}
	}

	@PostMapping("deleteProperty.do")
	public String deleteLand(@RequestParam("id") int id, Model model) {
	    boolean isDeleted = landAcquisitionDAO.deleteLandAcquisition(id);
	    if (!isDeleted) {
	        model.addAttribute("errorMessage", "Property could not be deleted.");
	        return "error"; 
	    } else {
	        model.addAttribute("successMessage", "Property successfully deleted.");
	        return "deleteProperty"; 
	    }
	}

	@GetMapping("viewAllProperties.do")
	public String viewAllProperties(Model model) {
		List<LandAcquisition> land = landAcquisitionDAO.findAll();
		model.addAttribute("allProperties", land);
		return "listFormatPage"; 
	}

	@ExceptionHandler(Exception.class)
	public String handleException(Exception e, Model model) {
		e.printStackTrace();
		System.out.println("Error message: " + e.getMessage());
		model.addAttribute("errorMessage", e.getMessage());
		return "error";
	}

}
