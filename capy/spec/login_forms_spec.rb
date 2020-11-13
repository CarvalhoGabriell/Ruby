
describe "Forms" do
  it "Login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    # expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"

    
  end

  it 'senha incorreta', :temp do

    visit "https://training-wheels-protocol.herokuapp.com/login"
    
    fill_in "userId", with: "stark"
    fill_in "password", with: 'Rafdhl'

    click_button "Login"

    page.has_content?("Senha é inváldida!")
    

    
  end

  it 'usuário não cadastrado' do 

    visit "https://training-wheels-protocol.herokuapp.com/login"
    
    fill_in "userId", with: "Spider"
    fill_in "password", with: 'Rafdhl'

    click_button "Login"

    page.has_content?('O Usuário informado não está cadastrado!')

    
  end
end
