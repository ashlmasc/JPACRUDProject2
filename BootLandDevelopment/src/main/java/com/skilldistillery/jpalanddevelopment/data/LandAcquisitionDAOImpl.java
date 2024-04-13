package com.skilldistillery.jpalanddevelopment.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpalanddevelopment.entities.LandAcquisition;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LandAcquisitionDAOImpl implements LandAcquisitionDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public LandAcquisition findById(int landAcquisitionId) {
		LandAcquisition landAcquisition = em.find(LandAcquisition.class, landAcquisitionId);
		return landAcquisition;
	}


	@Override
	public List<LandAcquisition> findAll() {
		return em.createQuery("SELECT la FROM LandAcquisition la", LandAcquisition.class).getResultList();
	}

	@Override
	public LandAcquisition addLandAcquisition(LandAcquisition landAcquisition) {
		em.persist(landAcquisition); 
	    return landAcquisition; 
	    }

	@Override
	public LandAcquisition updateLandAcquisition(int id, LandAcquisition landAcquisition) {
		LandAcquisition existingLand = em.find(LandAcquisition.class, id);
		em.merge(existingLand);
		return existingLand;
	}

	@Override
	public boolean deleteLandAcquisition(int id) {
		LandAcquisition land = em.find(LandAcquisition.class, id); // Find the part by ID
	    if (land != null) {
	        em.remove(land); // Remove the part entity
	        return true;
	    }
	    return false;
	}

}
