
describe 'Mouse Hover', :hovers do 


      before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
   end 

   it 'quando passo o mouse sobre blade' do

      card = find('img[alt=Blade]') #ou tambem ('img[alt*=Blade]') CONTÉM
      card.hover

       expect(page).to have_content 'Nome: Blade'

   end

    it 'quando passo o mouse sobre pantera negra' do

      card = find('img[alt="Pantera Negra"]') #ou tambem ('img[alt^=Pantera]') TERMINA
      card.hover

       expect(page).to have_content 'Nome: Pantera Negra'

   end

    it 'quando passo o mouse sobre homem aranha' do

      card = find('img[alt="Homem Aranha"]') #ou tambem ('img[alt$=Aranha]') COMEÇA
      card.hover

       expect(page).to have_content 'Nome: Homem Aranha'

   end
  
    after(:each) do
        sleep 0.5
    end


end


