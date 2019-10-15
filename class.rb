class Carro
    attr_accessor :nome

    def ligar
        puts "o carro está pronto para iniciar a partida"
    end
end
 
civic = Carro.new 
civic.nome = 'merda'


puts civic.nome
civic.ligar

