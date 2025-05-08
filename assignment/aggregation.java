
class Doctor {
    String d_name;
    String specialization;
    int experience;

    Doctor(String d_name, String specialization, int experience) {
        this.d_name = d_name;
        this.specialization = specialization;
        this.experience = experience;
    }

    public void treat(Patient p) {
        System.out.println("Doctor Name " + d_name);
        System.out.println("Specialization " + specialization);
        System.out.println("Experience " + experience + " years");
        System.out.println("Patient Name " + p.name);
        System.out.println("Age " + p.age);
        System.out.println("Disease " + p.disease);
    }
}
class Patient {
    String name;
    int age;
    String disease;

    Patient(String name, int age, String disease) {
        this.name = name;
        this.age = age;
        this.disease = disease;
    }
}

public class aggregation {
    public static void main(String[] args) {
        Patient p = new Patient("Dharshini", 21, "Flu");
        Doctor d = new Doctor("Dr.Vadivel", "General Medicine", 15);
        d.treat(p); 
    }
}
