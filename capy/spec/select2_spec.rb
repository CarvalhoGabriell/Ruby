
describe 'Select2', :select do

    describe('single', :single) do 


        before(:each) do

            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona ator por nome ' do 

            find('.select2-selection--single').click
            sleep 1

            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 4
        end

        it 'Busca por ator e clica' do 


            find('.select2-selection--single').click
            sleep 1

            find('.select2-search__field').set 'Chris Rock'
            sleep 1
           
            find('.select2-results__option').click
            sleep 4
            
        end

    end


    describe('multiplo', :mult) do
        
        before(:each) do

            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def selecione(ator)

            find('.select2-selection--multiple').click
            sleep 1
            find('.select2-search__field').set ator
            sleep 2
            find('.select2-results__options').click

        end


        it 'seleciona atores' do

           atores = ['Kevin James', 'Owen Wilson', 'Jim Carrey', 'Adam Sandler']

           atores.each do |a|
            selecione(a)
           end
            sleep 3
        end


    end
end

