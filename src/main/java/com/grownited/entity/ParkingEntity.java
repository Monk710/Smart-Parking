package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "parking")
public class ParkingEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer parkingId;   //	PK	
	private String title; 		
	private String address;		
	private Integer locationId;	//FK	
	private Integer ownerId;   //FK : USER	
	private Integer totalCapacityTwoWheeler;	
	private String otherInformation;	
	private Integer totalCapacityFourWheeler;		
	private String active;		
	private Integer hourlyChargeTwoWheeler;		
	private Integer hourlyChargeFourWheeler;	
	private String parkingType;	  // Road,Ground,Building
	
	public Integer getParkingId() {
		return parkingId;
	}
	public void setParkingId(Integer parkingId) {
		this.parkingId = parkingId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getLocationId() {
		return locationId;
	}
	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}
	public Integer getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
	}
	public Integer getTotalCapacityTwoWheeler() {
		return totalCapacityTwoWheeler;
	}
	public void setTotalCapacityTwoWheeler(Integer totalCapacityTwoWheeler) {
		this.totalCapacityTwoWheeler = totalCapacityTwoWheeler;
	}
	public String getOtherInformation() {
		return otherInformation;
	}
	public void setOtherInformation(String otherInformation) {
		this.otherInformation = otherInformation;
	}
	public Integer getTotalCapacityFourWheeler() {
		return totalCapacityFourWheeler;
	}
	public void setTotalCapacityFourWheeler(Integer totalCapacityFourWheeler) {
		this.totalCapacityFourWheeler = totalCapacityFourWheeler;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public Integer getHourlyChargeTwoWheeler() {
		return hourlyChargeTwoWheeler;
	}
	public void setHourlyChargeTwoWheeler(Integer hourlyChargeTwoWheeler) {
		this.hourlyChargeTwoWheeler = hourlyChargeTwoWheeler;
	}
	public Integer getHourlyChargeFourWheeler() {
		return hourlyChargeFourWheeler;
	}
	public void setHourlyChargeFourWheeler(Integer hourlyChargeFourWheeler) {
		this.hourlyChargeFourWheeler = hourlyChargeFourWheeler;
	}
	public String getParkingType() {
		return parkingType;
	}
	public void setParkingType(String parkingType) {
		this.parkingType = parkingType;
	}
			
}
