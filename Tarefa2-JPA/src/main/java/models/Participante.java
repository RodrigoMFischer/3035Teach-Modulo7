package models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="participante")
public class Participante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String nome;
    private String email;

    @OneToMany(mappedBy = "participante")
    private List<Inscricao> listaInscricao;

}
