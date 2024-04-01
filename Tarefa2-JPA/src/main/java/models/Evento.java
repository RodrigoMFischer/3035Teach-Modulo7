package models;


import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name="evento")
public class Evento {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private Date data;
    private String local;

    @OneToMany(mappedBy = "evento")
    private List<Inscricao> listaDeInscricoes;

}
