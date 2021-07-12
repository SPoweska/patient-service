package restController;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pl.wsiz.iid6.patient.dto.Pacjent;
import pl.wsiz.iid6.patient.service.PatientService;

@RestController
@RequestMapping(value="/api/patient")
public class patientControllerJSON {
    @Autowired
    private PatientService patientService;

    @GetMapping(path="name/{lname}", produces = "application/json")
    public String patientName(@PathVariable String lname){
        return (patientService.findByLastName(lname)).toString();
    }

    @GetMapping(path="/all", produces = "application/json")
    public String patientAll(){
        return (patientService.findAll()).toString();
    }

    @GetMapping(path="pesel/{pesel}", produces = "application/json")
    public String patientPesel(@PathVariable String pesel){
        return (patientService.findByPesel(pesel)).toString();
    }
}
