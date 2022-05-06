package py.com.ci.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Contact {
    private Long idContact;
    private String type;
    private String value;
    private Long idPersonalData;
}
