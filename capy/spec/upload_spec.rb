

describe 'Upload', :upload do
   
    
    before(:each) do 
         visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagen.jpg'
        
    end

     it 'upload de arquivo texto' do
       attach_file('file-upload', @arquivo)
       click_button 'Upload'

        div_arquivo = find('#uploaded-file')
       expect(div_arquivo.text).to eql 'arquivo.txt'

     end

     it 'upload de imagem ', :upload_imagem do
       attach_file('file-upload', @imagem)
       click_button 'Upload'

      #  puts Capybara.default_max_wait_time, que no caso é 2 segundos então configure o spec_helper na parte do capybara
      # e assim tirar o sleep que nao funcionaria dependendo do tempo de cada plug-in

      
       img = find('#new-image')
       expect(img[:src]).to include '/uploads/imagen.jpg'
     end
        
    

    after(:each) do

        sleep 2
    end
end