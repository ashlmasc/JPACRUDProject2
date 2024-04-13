package com.skilldistillery.jpalanddevelopment.data;

import java.util.List;

import com.skilldistillery.jpalanddevelopment.entities.LandAcquisition;

public interface LandAcquisitionDAO {

	LandAcquisition findById(int LandAcquisitionId);

	List<LandAcquisition> findAll();

	LandAcquisition addLandAcquisition(LandAcquisition landAcquisition);

	LandAcquisition updateLandAcquisition(int id, LandAcquisition landAcquisition);

	boolean deleteLandAcquisition(int id);

}
