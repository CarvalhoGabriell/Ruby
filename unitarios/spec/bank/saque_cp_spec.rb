require_relative "../../app/bank"

describe Contapoupanca do
  describe "saque " do
    context "Quando o valor é positivo" do
      before(:all) do
        @contapoupanca = Contapoupanca.new(1000.00)
        @contapoupanca.saca(200.00)
      end

      it "Então atualizar saldo " do
        expect(@contapoupanca.saldo).to eql 798.00
      end
    end
    context "Quando o saldo é zero" do
      before(:all) do
        @contapoupanca = Contapoupanca.new(0.00)
        @contapoupanca.saca(100.00)
      end
      it " Então exibe a mensagem " do
        expect(@contapoupanca.mensagem).to eql "Saldo insuficiente para saque"
      end

      it "E saldo final é zero" do
        expect(@contapoupanca.saldo).to eql 0.00
      end
    end
    context "Quando o saldo é insuficiente" do
      before(:all) do
        @contapoupanca = Contapoupanca.new(100.00)
        @contapoupanca.saca(120.00)
      end
      it "Então exibe mensagem " do
        expect(@contapoupanca.mensagem).to eql "Saldo insuficiente para saque"
      end

      it "E o saldo permanece conforme o valor inicial" do
        expect(@contapoupanca.saldo).to eql 100.00
      end
    end

    context "Quando supera o valor de saque" do
      before(:all) do
        @contapoupanca = Contapoupanca.new(1000.00)
        @contapoupanca.saca(701.00)
      end

      it " exibir mensagem " do
        expect(@contapoupanca.mensagem).to eql "limite máximo por saque R$500"
      end

      it "E o saldo permanece conforme o valor inicial" do
        expect(@contapoupanca.saldo).to eql 1000.00
      end
    end
  end
end
