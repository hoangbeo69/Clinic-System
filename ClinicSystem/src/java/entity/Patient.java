/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;
import javax.xml.registry.infomodel.User;
import org.apache.commons.lang3.ObjectUtils;

/**
 *
 * @author Long
 */
public class Patient extends Account {
    
    private String insuranceCode;
    private String identityCard;
    
    public Patient(String insuranceCode, String identityCard, Long id, String username, String password, String fullName, String phoneNumber, String email, Date dob) {
        super(id, username, password, fullName, phoneNumber, email, dob);
        this.insuranceCode = insuranceCode;
        this.identityCard = identityCard;
    }
    
    public Patient(String insuranceCode, String identityCard) {
        super();
        this.insuranceCode = insuranceCode;
        this.identityCard = identityCard;
    }
    
    public void setPatientInfo(Patient patient) {
        if (ObjectUtils.isNotEmpty(patient)) {
            this.insuranceCode = patient.getInsuranceCode();
            this.identityCard = patient.getIdentityCard();
        }
    }
    
    public Patient(Account account) {
        
    }
    
    public Patient() {
        super();
    }
    
    public void setInsuranceCode(String insuranceCode) {
        this.insuranceCode = insuranceCode;
    }
    
    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard;
    }
    
    public String getInsuranceCode() {
        return insuranceCode;
    }
    
    public String getIdentityCard() {
        return identityCard;
    }
    
}
