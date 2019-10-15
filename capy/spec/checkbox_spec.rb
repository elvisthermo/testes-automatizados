describe 'caixa de seleção', :checkbox do 
    before(:each)do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end
   
    it 'escolhendo opção' do
        check('thor')
    end

    it 'desmarcando'do
        uncheck('antman')
    end

    it 'marcando find set true'do
        find("input[value=cap]").set(true)
    end
    
    it'desmarcando set false'do 
        find("input[value=guardians]").set(false)
    end

    after(:each)do
        sleep 3
    end

   
end