package com.phoenixairline.models;

public class Ticket {

    private String bookingId;
    private String userId;
    private String fhacId;
    private String passportNumber;
    private String bookingDate;    
    private String classType;
    private int numberOfSeats;

    public Ticket(String bookingId, String userId, String fhacId, String passportNumber, String bookingDate, String classType, int numberOfSeats) {
        this.bookingId = bookingId;
        this.userId = userId;
        this.fhacId = fhacId;
        this.passportNumber = passportNumber;
        this.bookingDate = bookingDate;
        this.classType = classType;
        this.numberOfSeats = numberOfSeats;
    }
    
    public Ticket(String userId, String fhacId, String passportNumber, String bookingDate, String classType, int numberOfSeats) {
        this.userId = userId;
        this.fhacId = fhacId;
        this.passportNumber = passportNumber;
        this.bookingDate = bookingDate;
        this.classType = classType;
        this.numberOfSeats = numberOfSeats;
    }
public Ticket(String bookingId) {
        this.bookingId = bookingId;
    }
    
    /**
     * @return the bookingId
     */
    public String getBookingId() {
        return bookingId;
    }

    /**
     * @param bookingId the bookingId to set
     */
    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    /**
     * @return the userId
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * @return the fhacId
     */
    public String getFhacId() {
        return fhacId;
    }

    /**
     * @param fhacId the fhacId to set
     */
    public void setFhacId(String fhacId) {
        this.fhacId = fhacId;
    }

    /**
     * @return the passportNumber
     */
    public String getPassportNumber() {
        return passportNumber;
    }

    /**
     * @param passportNumber the passportNumber to set
     */
    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }

    /**
     * @return the bookingDate
     */
    public String getBookingDate() {
        return bookingDate;
    }

    /**
     * @param bookingDate the bookingDate to set
     */
    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    /**
     * @return the classType
     */
    public String getClassType() {
        return classType;
    }

    /**
     * @param classType the classType to set
     */
    public void setClassType(String classType) {
        this.classType = classType;
    }

    /**
     * @return the numberOfSeats
     */
    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    /**
     * @param numberOfSeats the numberOfSeats to set
     */
    public void setNumberOfSeats(int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }





}
