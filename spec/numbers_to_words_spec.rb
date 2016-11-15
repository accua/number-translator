require("numbers_to_words")
require("rspec")

describe("Fixnum#numbers_to_words") do
  it("returns 'one' when 1 is entered") do
    expect(1.numbers_to_words).to(eq("one"))
  end
  it("returns word for one's place") do
    expect(3.numbers_to_words).to(eq("three"))
  end
  it("returns word for a two digit number from ten to nineteen") do
    expect(10.numbers_to_words).to(eq("ten"))
  end
  it("returns word for any two digit number") do
    expect(57.numbers_to_words).to(eq("fifty seven"))
  end
  it("returns word for any three digit number") do
    expect(357.numbers_to_words).to(eq("three hundred fifty seven"))
  end
  it("returns word for any four digit number") do
    expect(1357.numbers_to_words).to(eq("one thousand three hundred fifty seven"))
  end
  it("returns word for any five digit number up to 19999") do
    expect(17563.numbers_to_words).to(eq("seventeen thousand five hundred sixty three"))
  end
  it("returns word for any five digit number above 19999") do
    expect(45598.numbers_to_words).to(eq("forty five thousand five hundred ninety eight"))
  end
  it("returns word for any six digit number") do
    expect(643235.numbers_to_words).to(eq("six hundred forty three thousand two hundred thirty five"))
  end
  it("returns word for any seven digit number") do
    expect(7983401.numbers_to_words).to(eq("seven million nine hundred eighty three thousand four hundred one"))
  end
end
