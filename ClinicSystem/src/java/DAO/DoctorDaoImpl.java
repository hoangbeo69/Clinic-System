/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Account;
import entity.Doctor;
import java.util.List;
import mapper.DoctorMapper;
import org.apache.commons.lang3.ObjectUtils;
import util.CollectionsUtil;

/**
 *
 * @author nguye
 */
public class DoctorDaoImpl extends AbstractDAO implements DoctorDao {

    private AccountDao accountDao;

    public DoctorDaoImpl() {
        this.accountDao = new AccountDaoImpl();
    }

    @Override
    public Doctor getDoctorById(long id) {
        Account account = accountDao.findById(id);
        if (ObjectUtils.isEmpty(account)) {
            return null;
        }
        Doctor doctor = new Doctor();
        doctor.setAccountInfo(account);
        doctor.setDoctorInfor(getDoctorOnlyById(id));
        return doctor;

    }

    private Doctor getDoctorOnlyById(long id) {
        String sql = "SELECT * FROM Doctor WHERE Id = ?";
        List<Doctor> doctors = query(sql, new DoctorMapper(), id);
        return CollectionsUtil.isEmpty(doctors) ? null : doctors.get(0);
    }

}
