package com.skilldistillery.jpalanddevelopment.entities;

import java.time.LocalDate;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "land_acquisition")
public class LandAcquisition {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "parcel_id")
	 private String parcelId;
	
	@Column(name = "street_address")
	 private String streetAddress;  
	 
	 private String city;
	 
	 private String county;   
	 
	 private String state; 
	 
	 private String zipcode;        
	 private Double latitude;        
	 private Double longitude;       
	 
	 @Column(name = "zoning_status")
	 private String zoningStatus;  
	 
	 private Double size;
	 
	 @Column(name = "land_status")
	 private String landStatus;
	 
	 @Column(name = "asking_price")
	 private Double askingPrice;
	 
	 @Column(name = "purchase_price")
	 private Double purchasePrice;
	 
	 @Column(name = "utilities_status")
	 private String utilitiesStatus;
	 
	 @Column(name = "contract_date")
	 private LocalDate contractDate;    
	 
	 @Column(name = "closing_date")
	 private LocalDate closingDate;

	public LandAcquisition() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getParcelId() {
		return parcelId;
	}

	public void setParcelId(String parcelId) {
		this.parcelId = parcelId;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getZoningStatus() {
		return zoningStatus;
	}

	public void setZoningStatus(String zoningStatus) {
		this.zoningStatus = zoningStatus;
	}

	public Double getSize() {
		return size;
	}

	public void setSize(Double size) {
		this.size = size;
	}

	public String getLandStatus() {
		return landStatus;
	}

	public void setLandStatus(String landStatus) {
		this.landStatus = landStatus;
	}

	public Double getAskingPrice() {
		return askingPrice;
	}

	public void setAskingPrice(Double askingPrice) {
		this.askingPrice = askingPrice;
	}

	public Double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public String getUtilitiesStatus() {
		return utilitiesStatus;
	}

	public void setUtilitiesStatus(String utilitiesStatus) {
		this.utilitiesStatus = utilitiesStatus;
	}

	public LocalDate getContractDate() {
		return contractDate;
	}

	public void setContractDate(LocalDate contractDate) {
		this.contractDate = contractDate;
	}

	public LocalDate getClosingDate() {
		return closingDate;
	}

	public void setClosingDate(LocalDate closingDate) {
		this.closingDate = closingDate;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LandAcquisition other = (LandAcquisition) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "LandAcquisition [id=" + id + ", parcelId=" + parcelId + ", streetAddress=" + streetAddress + ", city="
				+ city + ", county=" + county + ", state=" + state + ", zipcode=" + zipcode + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", zoningStatus=" + zoningStatus + ", size=" + size + ", landStatus="
				+ landStatus + ", askingPrice=" + askingPrice + ", purchasePrice=" + purchasePrice
				+ ", utilitiesStatus=" + utilitiesStatus + ", contractDate=" + contractDate + ", closingDate="
				+ closingDate + "]";
	}
}
