package py.com.ci.repository.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import py.com.ci.entity.Patient;
import py.com.ci.repository.PatientRepository;

import java.util.List;

public class PatientRepositoryImpl implements PatientRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int save(Patient patient) {
        jdbcTemplate.update("INSERT INTO ")
        return 0;
    }

    @Override
    public List<Patient> getAll() {
        return null;
    }

    @Override
    public int update(Patient patient) {
        return 0;
    }

    @Override
    public int delete(Long id) {
        return 0;
    }

    @Override
    public Patient getById(Long id) {
        return null;
    }
}
