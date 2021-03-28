# Verificadores rspec


class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        puts self.list.class
        self.list.push(avenger)    
    end
end


# TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

       
        hq.put('Spiderman')
        # expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
       
        # res é uma váriavel que significa resultado

        res = hq.list.size > 0

         # size trás o total de itens na lista, só funciona para listas
        expect(hq.list.size).to be > 0
        expect(res).to be true
        expect(hq.list).to include 'Hulk'
        expect(hq.list).to include 'Thor'
        expect(hq.list).to include 'Spiderman'
    end

    it 'Thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')
end

   it 'Ironman deve ser o último da lista'do
hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    hq.put('Ironman')

    expect(hq.list).to end_with('Ironman')
end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Parker'

    # Expressão regular = / /  Uma expressão regular é uma forma simples de especificar um padrão de caracteres que será casado com uma string.
    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match (/Felipe/)


end

end


# attr_accessor define um atributo a uma classe.
# ARRAYS  ---- conjunto somatorio de string ou numeros identificado por []
 # expect = uma verificação 
