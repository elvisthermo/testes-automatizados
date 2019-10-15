describe 'upload de arquivos', :upload do 
    before(:each)do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fatures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fatures/images.jpg'
    end
   
    it 'upload arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload imagens' do 
        attach_file('file-upload',@imagem)
        click_button 'Upload'

        sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/images.jpg'
    end

    after(:each) do
        sleep 3
    end

   
end