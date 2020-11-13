describe ' ID dinamicos', :id_dinamico do 


    before(:each) do 

        visit 'https://training-wheels-protocol.herokuapp.com/access'

    end

    it 'cadastro' do

        find('input[id$=UsernameInput]').set 'gabriel'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 4

    end
end