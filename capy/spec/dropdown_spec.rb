
describe 'caixa de opções', :dropdown do 
    it 'item especifico 'do 
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki',from:'dropdown')
        sleep 3
    end

    it 'item especifico com find'do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option',text:'Scott Lang').select_option
        sleep 3
    end

    it 'item teste', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end

end
