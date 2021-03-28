
 #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        # #{} faz a interpolação de strings (transforma a string em float nesse caso)
        # self - é um recurso para invocar um outro objeto dentro da minha propria classe, consegue invocar um método e atributo.
        # método new é uma propriedade do Ruby para instanciar as classes 

class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"
    end
end

c = Conta.new('Felipe')


c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
