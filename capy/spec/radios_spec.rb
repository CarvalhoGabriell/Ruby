describe 'Botões de Radio', :radio do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleção de ID' do

        choose('thor')
    end

    it 'seleção por find e css selector' do


        find('input[value=guardians]').click
    end
end

    
