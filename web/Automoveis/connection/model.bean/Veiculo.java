package Automoveis.connection.model;
/**
 *
 * @author Marcus Vinicius
 */
public class Veiculo {
    
    private int id;
    private int ano;
    private int km;
    private String cor;
    private String cambio;
    private int finalPlaca;
    private int portas;
    private int carroceria;
    private String descricao;
    private float valor;
    private int novo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getKm() {
        return km;
    }

    public void setKm(int km) {
        this.km = km;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCambio() {
        return cambio;
    }

    public void setCambio(String cambio) {
        this.cambio = cambio;
    }

    public int getFinalPlaca() {
        return finalPlaca;
    }

    public void setFinalPlaca(int finalPlaca) {
        this.finalPlaca = finalPlaca;
    }

    public int getPortas() {
        return portas;
    }

    public void setPortas(int portas) {
        this.portas = portas;
    }

    public int getCarroceria() {
        return carroceria;
    }

    public void setCarroceria(int carroceria) {
        this.carroceria = carroceria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public int getNovo() {
        return novo;
    }

    public void setNovo(int novo) {
        this.novo = novo;
    }
    
}
