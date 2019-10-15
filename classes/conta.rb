class Conta
    attr_accessor:nome
    
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    attr_accessor:saldo

    def deposita(valor)
        self.saldo += valor
        puts "#{nome} depositando a quantia de #{valor} reais."
    end

end

c = Conta.new("nump")
c.deposita(100.00)

puts c.saldo

c.deposita(150.00)

puts c.saldo