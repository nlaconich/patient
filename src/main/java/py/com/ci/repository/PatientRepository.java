package py.com.ci.repository;

import py.com.ci.entity.Patient;

import java.util.List;

public interface PatientRepository {
    public int save(Patient patient);
    public List<Patient> getAll();
    public int update(Patient patient);
    public int delete(Long id);
    public Patient getById(Long id);

}
