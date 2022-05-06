package py.com.ci.repository.jdbc;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import py.com.ci.entity.PersonalData;
import py.com.ci.repository.PersonalDataRepository;

import java.util.List;

@Repository
public class PersonalDataRepositoryImpl implements PersonalDataRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int save(PersonalData personalData) {
        return jdbcTemplate.update(" INSERT INTO personal_data(name,lastname,document_number,birth_date,weight) values(?,?,?,?,?) ",
                personalData.getName(), personalData.getLastName(), personalData.getDocumentNumber(), personalData.getBirthDate(), personalData.getWeight());
    }

    @Override
    public int delete(Long id) {
        return jdbcTemplate.update(" DELETE FROM personal_data WHERE id_personal_data = ? " + id);
    }

    @Override
    public int update(PersonalData personalData) {
        return jdbcTemplate.update("UPDATE personal_data SET name=?, lastname=?, document_number=?, birth_date=?, weight=? WHERE id_personal_data = ?",
                personalData.getName(), personalData.getLastName(), personalData.getDocumentNumber(), personalData.getBirthDate(),
                personalData.getWeight(), personalData.getIdPersonalData());
    }

    @Override
    public PersonalData getById(Long id) {
        return (PersonalData) jdbcTemplate.query("SELECT * FROM personal_data WHERE id_personal_data=?", (rs, rowNum)
                -> new PersonalData(rs.getLong("id_client"),
                rs.getString("name"),
                rs.getString("lastname"),
                rs.getString("document_number"),
                rs.getDate("birth_date"),
                rs.getDouble("wight")), id);
    }

    @Override
    public List<PersonalData> getAll() {
        List<PersonalData> personalDataList = jdbcTemplate.query("SELECT * FROM personal_data", (rs, rowNum)
                -> new PersonalData(rs.getLong("id_client"),
                rs.getString("name"),
                rs.getString("lastname"),
                rs.getString("document_number"),
                rs.getDate("birth_date"),
                rs.getDouble("wight")));
        return personalDataList;
    }
}
