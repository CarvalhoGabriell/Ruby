
describe 'Iframes ' do
   
    describe ' Bom ', :nice_iframe do 
        
        before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/nice_iframe'
      end 

      it 'Adicionar ao carrinho' do
        within_frame('burgerId') do

          produto = find('.menu-item-info-box-content', text:  'REFRIGERANTE')
          produto.find('a').click
          sleep 5
          expect(page).to have_content 'R$ 4,50'
          
        end
      end
   end
  
   
   
   describe ' ruim ', :bad_iframe do


    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/bad_iframe'
      end 

      it ' Carrinho deve estar vazio ' do

      
        script = '$(".box-iframe").attr("id" , "tempId");'
        page.execute_script(script)
        
        within_frame('tempId')
        expect(page).to have_content('Seu carrinho está vazio!')
      end 
   end

end




