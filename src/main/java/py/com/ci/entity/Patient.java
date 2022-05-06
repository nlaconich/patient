package py.com.ci.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Patient {
    private Long idPatient;
    private Date entryDate;
    private String status;
    private Long idPersonalData;

}
