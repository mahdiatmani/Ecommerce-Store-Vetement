package entities;

public class Card {
    String nomholder;
    String cardnum;
    String exdate;
    String code;

    public Card(String nomholder, String cardnum, String exdate, String code) {
        this.nomholder = nomholder;
        this.cardnum = cardnum;
        this.exdate = exdate;
        this.code = code;
    }

    public Card() {
    }

    public String getNomholder() {
        return nomholder;
    }

    public void setNomholder(String nomholder) {
        this.nomholder = nomholder;
    }

    public String getCardnum() {
        return cardnum;
    }

    public void setCardnum(String cardnum) {
        this.cardnum = cardnum;
    }

    public String getExdate() {
        return exdate;
    }

    public void setExdate(String exdate) {
        this.exdate = exdate;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
