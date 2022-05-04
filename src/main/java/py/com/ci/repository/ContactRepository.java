package py.com.ci.repository;

import py.com.ci.entity.Contact;

import java.util.List;

public interface ContactRepository {
    public int save(Contact contact);
    public List<Contact> getAll();
    public int update(Contact contact);
    public int delete(Long id);
    public Contact getById(Long id);
}
