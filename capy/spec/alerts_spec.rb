
describe ' Alertas do JS ', :alerts do 


      before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'

    end 

    it 'alerta' do 
    
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text 
        # puts msg
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 2
    end

    it 'sim confirma' do
        click_button 'Confirma'
        
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 3


    end

    
    it 'não confirma' do
        click_button 'Confirma'
        
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3
    end

    it 'accept prompt', :accept_prompt do
        accept_prompt(with: 'Gabriel') do

            click_button 'Prompt'
            sleep 3
        end

        expect(page).to have_content 'Olá, Gabriel'
        sleep 2
    
    end

    it 'dismiss prompt', :dismiss_prompt do 

        dismiss_prompt(with: 'null') do       # dismiss_prompt(with: '') ou dismiss_prompt() para mostrar que esta vazio
    
            click_button 'Prompt'
        end
 

        expect(page).to have_content 'Olá, null'
        sleep 4
    end


        






end