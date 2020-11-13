

class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

#TDD (Desenvolvimento guiado por testes)

describe AvengersHeadQuarter do
  it "Deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new

    hq.put("Ironman")
    expect(hq.list).to eql ["Ironman"]
  end
  it "Deve adicionar uma lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Homem-Formiga")
    hq.put("Ironman")

    res = hq.list.size > 0

    expect(hq.list.size).to be > 0
    expect(res).to be true
  end

  it "thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Homem-Formiga")
    hq.put("Ironman")

    expect(hq.list).to start_with("Thor")
  end

  it "Doctor strange deve ser o ultimo da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Homem-Formiga")
    hq.put("Ironman")
    hq.put("Doctor strange")

    expect(hq.list).to end_with("Doctor strange")
  end

  it 'Deve conter o sobrenome ' do
  avenger = 'Tony Stark'

  expect(avenger).to match(/Stark/)
  expect(avenger).to_not match(/Carvalho/)

  end
end
