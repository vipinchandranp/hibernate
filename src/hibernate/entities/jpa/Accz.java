package hibernate.entities.jpa;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ACCZ database table.
 * 
 */
@Entity
@Table(name="ACCZ")
public class Accz implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ACC_ID")
	private Integer accId;

	@Column(name="ACCZ_VALUE")
	private String acczValue;

	//bi-directional one-to-one association to Acc
	@OneToOne
	@JoinColumn(name="ACC_ID")
	private Acc acc;

	public Accz() {
	}

	public Integer getAccId() {
		return this.accId;
	}

	public void setAccId(Integer accId) {
		this.accId = accId;
	}

	public String getAcczValue() {
		return this.acczValue;
	}

	public void setAcczValue(String acczValue) {
		this.acczValue = acczValue;
	}

	public Acc getAcc() {
		return this.acc;
	}

	public void setAcc(Acc acc) {
		this.acc = acc;
	}

}