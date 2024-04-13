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
		em.persist(landAcquisition); // Persist the part entity to the database
	    return landAcquisition; // The persisted part will now have a generated ID
	}

	@Override
	public LandAcquisition updateLandAcquisition(int id, LandAcquisition landAcquisition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteLandAcquisition(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
