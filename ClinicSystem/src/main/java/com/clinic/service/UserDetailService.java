/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.model.UserDetail;

/**
 *
 * @author nguye
 */
public interface UserDetailService {

    UserDetail login(String username, String password);
    
}
