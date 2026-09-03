/*
Domínio: Faculdade

Superclasse: Pessoa
Subclasses: Aluno e Professor

Aluno tem como atributo próprio: matricula
Professor tem como atributo próprio: disciplina

Método abstrato: apresentarTrabalho()
Método sobrescrito: mostrarDados()

A IA foi utilizada para ajudar na organização e compreensão do código.
*/

abstract class Pessoa {
    protected String nome;
    protected int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public abstract void apresentarTrabalho();

    public void mostrarDados() {
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
    }
}

class Aluno extends Pessoa {
    private String matricula;

    public Aluno(String nome, int idade, String matricula) {
        super(nome, idade);
        this.matricula = matricula;
    }

    @Override
    public void apresentarTrabalho() {
        System.out.println("O aluno está apresentando o trabalho.");
    }

    @Override
    public void mostrarDados() {
        super.mostrarDados();
        System.out.println("Matrícula: " + matricula);
    }
}

class Professor extends Pessoa {
    private String disciplina;

    public Professor(String nome, int idade, String disciplina) {
        super(nome, idade);
        this.disciplina = disciplina;
    }

    @Override
    public void apresentarTrabalho() {
        System.out.println("O professor está avaliando a apresentação do trabalho.");
    }

    @Override
    public void mostrarDados() {
        super.mostrarDados();
        System.out.println("Disciplina: " + disciplina);
    }
}

public class Main {
    public static void main(String[] args) {

        Pessoa[] pessoas = {
            new Aluno("Laine", 18, "2026001"),
            new Professor("Carlos", 35, "Programação")
        };

        for (Pessoa pessoa : pessoas) {
            pessoa.apresentarTrabalho();
            pessoa.mostrarDados();
            System.out.println();
        }
    }
}

/*
AUTOAVALIAÇÃO

Critérios atingidos:
1. Superclasse e duas subclasses: atingido.
2. Método implementado pelas subclasses: atingido.
3. Construtores usando super: atingido.
4. Reaproveitamento de método herdado: atingido.
5. Coleção da superclasse com duas subclasses: atingido.
6. Um único laço com comportamentos diferentes: atingido.

O trecho que deu mais trabalho foi entender como usar
herança e polimorfismo no mesmo laço.

A IA ajudou na organização e compreensão do código.
*/
