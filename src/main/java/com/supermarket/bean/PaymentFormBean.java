package com.supermarket.bean;

public class PaymentFormBean {

	private  String firstname;
	private  String email;

	private  String address;

	private  String city;
	private  String state;
	private  int zip;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	@Override
	public String toString() {
		return "PaymentFormBean [firstname=" + firstname + ", email=" + email + ", address=" + address + ", city="
				+ city + ", state=" + state + ", zip=" + zip + "]";
	}
	


}
