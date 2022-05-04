package py.com.ci.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PersonalData {

    private Long idPersonalData;
    private String name;
    private String lastName;
    private String documentNumber;
    private Date birthDate;
    private double weight;

}
