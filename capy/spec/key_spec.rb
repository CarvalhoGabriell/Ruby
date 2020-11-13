
describe ' Teclado ', :key do 


    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end 

    it ' enviando teclas ' do
        teclas = %i[tab space  enter control shift escape  add up down left right]
        
        teclas.each do |t|
            
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end
    end



    it ' enviando letras ' do 
        letras = %w[q a f u l l s t e c k r u b y]

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1

        end
    end
end
 
    