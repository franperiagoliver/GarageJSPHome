package com.everis.alicante.becajava.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the booking database table.
 * 
 */
@Entity
@Table(name = "booking")
@NamedQueries({ @NamedQuery(name = "Booking.findAll", query = "SELECT b FROM Booking b"),
		@NamedQuery(name = "Booking.findByDate", query = "SELECT b FROM Booking b where b.bookingdate between :fechaInicio and :fechaFin") })
public class Booking implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(unique = true, nullable = false)
	private int idbooking;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date bookingdate;

	// bi-directional many-to-one association to Client
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "idClient", nullable = false)
	private Client client;

	// bi-directional many-to-one association to Parkingplace
	@ManyToOne(cascade = { CascadeType.PERSIST })
	@JoinColumn(name = "idParkingPlace", nullable = false)
	private Parkingplace parkingplace;

	// bi-directional many-to-one association to Vehicle
	@ManyToOne
	@JoinColumn(name = "idVehicle", nullable = false)
	private Vehicle vehicle;

	public Booking() {
	}

	public int getIdbooking() {
		return this.idbooking;
	}

	public void setIdbooking(int idbooking) {
		this.idbooking = idbooking;
	}

	public Date getBookingdate() {
		return this.bookingdate;
	}

	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}

	public Client getClient() {
		return this.client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Parkingplace getParkingplace() {
		return this.parkingplace;
	}

	public void setParkingplace(Parkingplace parkingplace) {
		this.parkingplace = parkingplace;
	}

	public Vehicle getVehicle() {
		return this.vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	@Override
	public String toString() {
		return "Nº plaza: " + parkingplace.getParkingnumber() + " .Fecha: " + bookingdate;
	}

}