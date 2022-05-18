package gofly.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="bookings")
public class Booking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer BookingId;

	private String sourceCity; 
	
	private String destinationCity;
	
	@Temporal(TemporalType.DATE)
	private Date timeOfDeparture;
	
	private Integer cost;
	
	@ManyToOne
	private User user;

	public Integer getBookingId() {
		return BookingId;
	}

	public void setBookingId(Integer bookingId) {
		BookingId = bookingId;
	}

	public String getSourceCity() {
		return sourceCity;
	}

	public void setSourceCity(String sourceCity) {
		this.sourceCity = sourceCity;
	}

	public String getDestinationCity() {
		return destinationCity;
	}

	public void setDestinationCity(String destinationCity) {
		this.destinationCity = destinationCity;
	}

	public Date getTimeOfDeparture() {
		return timeOfDeparture;
	}

	public void setTimeOfDeparture(Date timeOfDeparture) {
		this.timeOfDeparture = timeOfDeparture;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Booking [BookingId=" + BookingId + ", sourceCity=" + sourceCity + ", destinationCity=" + destinationCity
				+ ", timeOfDeparture=" + timeOfDeparture + ", cost=" + cost + "]";
	}
	
}
