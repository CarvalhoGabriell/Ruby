require_relative "../../app/bank"

describe Contacorrente do
  describe "saque " do
    context "Quando o valor é positivo" do
      before(:all) do
        @conta = Contacorrente.new(1000.00)
        @conta.saca(200.00)
      end

      it "Então atualizar saldo " do
        expect(@conta.saldo).to eql 795.00
      end
    end
    context "Quando o saldo é zero" do
      before(:all) do
        @conta = Contacorrente.new(0.00)
        @conta.saca(100.00)
      end
      it "Então exibe a mensagem " do
        expect(@conta.mensagem).to eql "Saldo insuficiente para saque"
      end

      it "E saldo final é zero" do
        expect(@conta.saldo).to eql 0.00
      end
    end
    context "Quando o saldo é insuficiente" do
      before(:all) do
        @conta = Contacorrente.new(100.00)
        @conta.saca(120.00)
      end
      it "Então exibe mensagem " do
        expect(@conta.mensagem).to eql "Saldo insuficiente para saque"
      end

      it "E o saldo permanece conforme o valor inicial" do
        expect(@conta.saldo).to eql 100.00
      end
    end

    context "Quando supera o valor de saque" do
      before(:all) do
        @conta = Contacorrente.new(1000.00)
        @conta.saca(701.00)
      end

      it "exibir mensagem " do
        expect(@conta.mensagem).to eql "limite máximo por saque R$700"
      end

      it "E o saldo permanece conforme o valor inicial" do
        expect(@conta.saldo).to eql 1000.00
      end
    end
  end
end
