package com.skilldistillery.jpalanddevelopment.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class LandAcquisitionTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private LandAcquisition landAcquisition;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("LandDevelopment");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		landAcquisition = em.find(LandAcquisition.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		landAcquisition = null;
		em.close();
	}

	@Test
	void test() {
		assertNotNull(landAcquisition);
		assertEquals("1001", landAcquisition.getParcelId());
		assertEquals("123 Greenway Blvd", landAcquisition.getStreetAddress());
		assertEquals("Santa Fe", landAcquisition.getCity());
		assertEquals("NM", landAcquisition.getState());
		assertEquals("87501", landAcquisition.getZipcode());
		assertEquals(null, landAcquisition.getLatitude());
		assertEquals(null, landAcquisition.getLongitude());
		assertEquals(10.50, landAcquisition.getSize());
		assertEquals(500000.00, landAcquisition.getAskingPrice());
		assertEquals(500000.00, landAcquisition.getPurchasePrice());
		assertEquals("None", landAcquisition.getUtilitiesStatus());
		assertEquals(null, landAcquisition.getContractDate());
		assertEquals(null, landAcquisition.getClosingDate());
	}
}
