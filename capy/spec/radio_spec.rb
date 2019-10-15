describe 'caixa de seleção', :radio do 
    before(:each)do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end
   
    it 'seleção por laço ID' do
        choose('cap')
    end

   it 'outra forma de seleção' do
        find('input[value=guardians]').click 
   end

    after(:each)do
        sleep 3
    end

   
end