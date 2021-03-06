package com.kiwifootwear.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Shipping implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int HouseNo;
	private int StreetNo;
	private String LandMark;
	private String city;
	private String State;
	private int zipcode;
	private String username;
	
	public Shipping() {}
	
	public String getUserName() {
		return username;
	}
	
	public void setUserName(String username) {
		this.username = username;
	}
	
	public int getHouseNo() {
		return HouseNo;
	}
	
	public void setHouseNo(int houseNo) {
		HouseNo = houseNo;
	}
	
	public int getStreetNo() {
		return StreetNo;
	}
	
	public void setStreetNo(int streetNo) {
		StreetNo = streetNo;
	}
	
	public String getLandMark() {
		return LandMark;
	}
	
	public void setLandMark(String landMark) {
		LandMark = landMark;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return State;
	}
	
	public void setState(String state) {
		State = state;
	}
	
	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	
}
