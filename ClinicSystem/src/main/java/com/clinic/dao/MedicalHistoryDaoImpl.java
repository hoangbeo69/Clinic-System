package com.clinic.dao;

import com.clinic.entity.MedicalHistory;
import com.clinic.mapper.MedicalHistoryMapper;
import com.clinic.util.CollectionsUtil;
import java.util.List;

public class MedicalHistoryDaoImpl extends AbstractDAO implements MedicalHistoryDao {

  @Override
  public MedicalHistory findById(Long id) {
    String sql = "SELECT * FROM MedicalHistory WHERE ID = ? ";
    List<MedicalHistory> medicalHistories = query(sql, new MedicalHistoryMapper(), id);
    return CollectionsUtil.isEmpty(medicalHistories) ? null : medicalHistories.get(0);
  }

  @Override
  public Long save(MedicalHistory medicalHistory) {
    StringBuilder sql = new StringBuilder("INSERT INTO MedicalHistory ");
    sql.append("(CreatedBy,CreateDate,EditedBy,EditedDate,MedicalJson,PatientId) Values");
    sql.append("(?,?,?,?,?,?)");
    return insert(sql.toString(), medicalHistory.getCreatedBy(), medicalHistory.getCreatedDate(),
        medicalHistory.getUpdateBy(), medicalHistory.getUpdatedDate(),
        medicalHistory.getMedicalJson(), medicalHistory.getPatientId());
  }

  @Override
  public Long update(MedicalHistory medicalHistory) {
    StringBuilder sql = new StringBuilder("UPDATE MedicalHistory ");
    sql.append(
        " CreatedBy = ? ,CreateDate = ? ,EditedBy = ? ,EditedDate = ? ,MedicalJson = ?,PatientId = ?  WHERE ID = ? ");
    boolean result = update(sql.toString(), medicalHistory.getCreatedBy(),
        medicalHistory.getCreatedDate(), medicalHistory.getUpdateBy(),
        medicalHistory.getUpdatedDate(), medicalHistory.getMedicalJson(),
        medicalHistory.getPatientId(), medicalHistory.getId());
    return result ? medicalHistory.getId() : null;
  }

  @Override
  public boolean delete(Long id) {
    String sql = "DELETE MedicalHistory WHERE ID = ?";
    return delete(sql, id);
  }

  @Override
  public List<MedicalHistory> findAll() {
    String sql = "SELECT * FROM MedicalHistory";
    return query(sql, new MedicalHistoryMapper());
  }
}
