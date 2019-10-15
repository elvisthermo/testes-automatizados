class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome,marca,modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "ligar"
    end

    def buzinar
        puts "buzinar"
    end

end

class Carro <Veiculo
    def dirigir
        puts "dirigir"
    end

end

class Moto <Veiculo
    def pilotar
        puts "pilotar"
    end

end


civic = Carro.new('civic','hom','ss')
civic.ligar
civic.buzinar
civic.dirigir

biz = Moto.new('biz','hom','ss')
biz.ligar
biz.buzinar
biz.pilotar
