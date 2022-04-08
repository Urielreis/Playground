import UIKit


// variavel // nome da variavel // = // resultado
var idade = 29

// variavel // nome da variavel // = // resultado
var nome = "Uriel"

// let é uma variavel que não muda // nome da variavel // = // resultado
let pi = 3.14

// imprimir o valor no console  // nome da variavel ou o que quiser imprimir
//imprimir // idade
print(idade)

//variaveis podem ser tipos (Int, String, Double e etc)
// variavel // nome da variavel // : // tipo Inteiro (numero sem virgula) // = // resultado
var altura : Int = 170

//variavel // nome da variavel // : // tipo String (somente palavras) // = // resultado
var sobrenome : String = "Reis"

//variavel // nome da variavel //: // Tipo Double (numeros com virgula) // = // resultado
var total : Double = 1.9

//imprimir //nome da variavel // + // String ( estou convertendo "altura do tipo Int para String") //nome da variavel
print(sobrenome + String(altura) )

// operador de interpolação (mostra conteudo da variavel) --- \()
//imprimir //" " é o que quero escrever // \(nome) estou puxando a variavel
print("O meu nome é \(nome) \(sobrenome) tenho \(idade) anos e tenho \(altura) de altura")

// Operadores

//variavel // nome da variavel //: // tipo Inteiro (numero sem virgula) //= //2 (valor 1) // + // 4 (valor 2)
var soma : Int = 2 + 4

//somar // += (atribui a soma + 10) // valor
soma += 10
//somar // =  // variavel //+ // valor (mesma coisa que a de cima)
soma = soma + 10

//somar //== (comparação) //variavel
soma == altura

//somar //!= (diferente) // variavel
soma != altura


// Operadores de Condições
//if (operador de condição) //somar //< (menor) //variavel //{ (abre chave)
if soma < altura {
    //imprimir
    print("soma é menor que altura")
    //} (fechar chave)
}

// operador && é AND
//if (operador de condição) //somar //< (menor) // && (and) //somar //> (maior) //valor //{ (abre chave)
if (soma < altura && soma > 10) {
    //imprimir
    print("soma é menor que altura")
    // } (fecha chave)
}

// operador || é OR
//if (operador de condição) //somar //(maior) //valor //somar //< (menor) //valor //{ (abre chave)
if (soma > 1 || soma < 100){
    //imprimir
    print("exemplo de operador OR")
    //} (fecha chave)
}
//se if for falso cai para else if //somar //< (maior) //variavel //&& (AND) //somar //< (maior) //valor //{ (abrir chave)
else if (soma < altura && soma < 10){
    //imprimir
    print("soma é menor que altura e menor que 10")
   //} (fecha chave)
}

//caso if for falso cai para o else //{ (abre chave)
else {
    //imprimir
    print("soma é maior que altura")
    //} (fechar chave)
}

// SWITCH CASE

switch altura {
case 200...300:
    print("possui 2m de altura")
case 170:
    print("possui de 1,7 m")
default:
    print("default")
}


// Arrays

//declaração implicita
//variavel //nome da variavel //= //[ (abre) //valores //] (fecha)
var v = [10, 20, 30, 40, 50, 60, 70, 80]
//imprimir //variavel
print(v)
//imprimir //variavel //local
print(v[1])

//declaração de array vazio
//variavel //nome da variavel //= //[ (abre) // tipo Inteiro //] (fecha) //()  (vazio)
var arrayVazio = [Int]()
//imprimir //variavel
print(arrayVazio)

// append adiciona no final
//variavel //inserir no final //valor
arrayVazio.append(100)
//imprimir //variavel
print(arrayVazio)

//variavel //inserir no final //valor
arrayVazio.append(50)
//imprimir //variavel
print(arrayVazio)

//variavel //+= (inserir no final) //valor            //mesma coisa que a de cima usando .append
arrayVazio += [30]
//imprimir //variavel
print(arrayVazio)

//variavel //.remove (remover) //at (unico elemento) //valor da array (no caso o 50)
arrayVazio.remove(at: 1)
//imprimir //variavel
print(arrayVazio)

//Dicionario - mapeia uma chave e um valor (este valor pode ser qualquer coisa)
//variavel //dicionario é usado para mapear uma chave //valores do dicionario
var dicionario = [ "chave" : 177, "chave2": 128 ]
//imprimir
print(dicionario)

//imprimir  //dicionario na chave1 //! esta forçando dizendo que tem um valor ali
print(dicionario["chave1"]!)

//remover
dicionario.removeValue(forKey: "chave1")


// Estrutura de Repetição - FOR e WHILE

//FOR in
//variavel //nome da variavel //começa com o valor 1 e vai ate 7
for semana in 1...7 {
    print(semana)
}

var contador : Int = 0

while (contador < altura) {
    print(contador)
    //+= vai ir acrescentando mais 1 até o valor chegar na altura
    contador += 1
}


// Função

// assinatura é conjuto nome da função + parâmetros
//função //nome da variavel //-> retornar o valor tipo INT
func somar(num1:Int, num2:Int) -> Int {
    
    let a = num1 + num2
    print("somar = \(a)")
    return a
}
var s = somar(num1: 2, num2: 3)
print("s possui o valor de \(s)")

let array = [1,2,3,4,5,6,7,8,9,10]
print(array)

func somarLista(lista : [Int]) -> Int {
let som = 0

for c in array {
    soma += c
}
    return som
}
let somaListaFinal : Int = somarLista(lista: array)
print("soma total : \(soma)")


//Herança

class Celular {
    
    var cor : String?
    var fabricante : String?
    var tamanhoTela: Double?
    var camera: Int?
    
    func ligar(){
        print("ligar \(fabricante!)")
    }
    func tirarFoto(){
        print("tirar foto")
    }
}

var iphone = Celular()
iphone.cor = "vermelho"
iphone.fabricante = "Apple"
iphone.tamanhoTela = 6.1
iphone.camera = 2
iphone.ligar()

print(iphone.cor!)
print(iphone.fabricante!)
print(iphone.tamanhoTela!)
print(iphone.camera!)

var xiaomi = Celular()
xiaomi.cor = "Preto"
xiaomi.fabricante = "Xiaomi"
xiaomi.tamanhoTela = 6.7
xiaomi.camera = 3
xiaomi.tirarFoto()

class Mamifero {
    var idade : Int?
    
    func andar(){
        print("Mamifero anda")
    }
}

class Pessoa : Mamifero{
    var nome : String?
    var cpf : String?
    var salario : Double?
    
    //sobreescrevendo a classe pai
    override func andar(){
        print("Mamifero anda")
    }
}

//nome da class //: //nome da classe Pai (aonde vai herdar)
class Gerente : Pessoa{
    
}

class Diretor : Pessoa{
    var bonus : Double?
}

class GerenteExecutivo : Gerente{
    var quantidadeFuncionarios: Int?
}

//variavel //= //classe
var diretor1 = Diretor()
diretor1.nome = "Uriel"
print(diretor1.nome!)
diretor1.andar()

var diretor2 = Diretor()
diretor2.nome = "Barbara"
print(diretor2.nome!)



    







