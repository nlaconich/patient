package py.com.ci.repository;

import py.com.ci.entity.PersonalData;

import java.util.List;

public interface PersonalDataRepository {

    public int save(PersonalData personalData);
    public int delete(Long id);
    public int update(PersonalData personalData);
    public PersonalData getById(Long id);
    public List<PersonalData> getAll();


}
