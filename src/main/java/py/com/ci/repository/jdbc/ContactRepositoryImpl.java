package py.com.ci.repository.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import py.com.ci.entity.Contact;
import py.com.ci.repository.ContactRepository;

import java.util.List;

public class ContactRepositoryImpl implements ContactRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int save(Contact contact) {
        return jdbcTemplate.update(" INSERT INTO contact(type,value,id_personal_data) VALUES(?,?,?) ", contact.getType(), contact.getValue(), contact.getIdPersonalData());
    }

    @Override
    public List<Contact> getAll() {
        List<Contact> contactList = jdbcTemplate.query("SELECT * FROM contact ",(rs, row)->
                new Contact(rs.getLong("id_contact"),
                        rs.getString("type"),
                        rs.getString("value"),
                        rs.getLong("id_personal_data")));
        return contactList;
    }

    @Override
    public int update(Contact contact) {
        return jdbcTemplate.update(" UPDATE contact SET type = ?,value = ?,id_personal_data = ? WHERE id_contact = ? ", contact.getType(), contact.getValue(), contact.getIdPersonalData(), contact.getIdContact());

    }

    @Override
    public int delete(Long id) {
        return jdbcTemplate.update(" DELETE FROM contact WHERE id_contact = ? ", id);

    }

    @Override
    public Contact getById(Long id) {
        return (Contact) jdbcTemplate.query("SELECT * FROM contact WHERE id_contact = ? ",(rs, row)->
                new Contact(rs.getLong("id_contact"),
                        rs.getString("type"),
                        rs.getString("value"),
                rs.getLong("id_personal_data")),id);
    }
}
