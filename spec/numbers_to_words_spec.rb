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
  it("returns word for any eight digit number under 20 million") do
    expect(14000000.numbers_to_words).to(eq("fourteen million"))
  end
  it("returns word for any eight digit number above 20 million") do
    expect(21010101.numbers_to_words).to(eq("twenty one million ten thousand one hundred one"))
  end
  it("returns word for any nine digit number") do
    expect(854028305.numbers_to_words).to(eq("eight hundred fifty four million twenty eight thousand three hundred five"))
  end
  it("returns word for any ten digit number") do
    expect(7893400120.numbers_to_words).to(eq("seven billion eight hundred ninety three million four hundred thousand one hundred twenty"))
  end
  it("returns word for any 11 digit number under 20 billion") do
    expect(14000000000.numbers_to_words).to(eq("fourteen billion"))
  end
  it("returns word for any 11 digit number above 20 billion") do
    expect(35021010101.numbers_to_words).to(eq("thirty five billion twenty one million ten thousand one hundred one"))
  end
  it("returns word for any 12 digit number") do
    expect(500000000000.numbers_to_words).to(eq("five hundred billion"))
  end
  it("returns word for any 13 digit number") do
    expect(9090909090909.numbers_to_words).to(eq("nine trillion ninety billion nine hundred nine million ninety thousand nine hundred nine"))
  end
end
