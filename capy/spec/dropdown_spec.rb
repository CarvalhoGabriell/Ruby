
describe "Caixa de opções", :dropdown do
 
   it "item especifico simples" do
     visit "https://training-wheels-protocol.herokuapp.com/dropdown"
     select("Scott Lang", from: "dropdown")   #quando a opção possui um ID
     sleep 3
   end
    
  

   it "item especifico com o find" do
      visit "https://training-wheels-protocol.herokuapp.com/dropdown"
     drop = find(".avenger-list")
     drop.find("option", text: "Bucky").select_option
     sleep 3
   end
   


   it 'qualquer item', :sample  do
     visit "https://training-wheels-protocol.herokuapp.com/dropdown"
     drop = find(".avenger-list")
     drop.all('option').sample.select_option
     end
     
    
end

