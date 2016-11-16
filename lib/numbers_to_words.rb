class Fixnum
  define_method(:numbers_to_words) do

    final_word = []

    one_place_words = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine'
    }

    teen_words = {
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen'
    }

    tens_place_words = {
      2 => 'twenty',
      3 => 'thirty',
      4 => 'forty',
      5 => 'fifty',
      6 => 'sixty',
      7 => 'seventy',
      8 => 'eighty',
      9 => 'ninety'
    }

      digits = to_s().split('')

    if (digits.length.==1) && (digits.at(-1).=='0')
      final_word.unshift(one_place_words.fetch(digits.at(-1).to_i()))
    end

    if !(digits.at(-2).to_i().==1) && !(digits.at(-1).=='0')
      final_word.unshift(one_place_words.fetch(digits.at(-1).to_i()))
    end

    if digits.at(-2).to_i().==1
      final_word.unshift(teen_words.fetch(digits.at(-2).concat(digits.at(-1)).to_i()))
    elsif (digits.length.>1) && !(digits.at(-2).=="0")
        final_word.unshift(tens_place_words.fetch(digits.at(-2).to_i()))
    end

    if (digits.length.>2) && !(digits.at(-3).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-3).to_i()) + " hundred")
    end

    if (digits.length.>3) && ((digits.at(-4).to_i() + digits.at(-5).to_i() + digits.at(-6).to_i()).> 0)
      final_word.unshift("thousand")
    end

    if (digits.length.>3) && !(digits.at(-5).to_i().==1) && !(digits.at(-4).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-4).to_i()))
    end

    if (digits.length.>4) && (digits.at(-5).to_i().==1)
      final_word.unshift(teen_words.fetch(digits.at(-5).concat(digits.at(-4)).to_i()))
    elsif (digits.length.>4) && !(digits.at(-5).=="0")
        final_word.unshift(tens_place_words.fetch(digits.at(-5).to_i()))
    end

    if (digits.length.>5) && !(digits.at(-6).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-6).to_i()) + " hundred")
    end

    if (digits.length.>6) && ((digits.at(-7).to_i() + digits.at(-8).to_i() + digits.at(-9).to_i()).> 0)
      final_word.unshift("million")
    end

    if (digits.length.>6) && !(digits.at(-8).to_i().==1) && !(digits.at(-7).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-7).to_i()))
    end

    if (digits.length.>7) && (digits.at(-8).to_i().==1)
      final_word.unshift(teen_words.fetch(digits.at(-8).concat(digits.at(-7)).to_i()))
    elsif (digits.length.>7) && !(digits.at(-8).=="0")
        final_word.unshift(tens_place_words.fetch(digits.at(-8).to_i()))
    end

    if (digits.length.>8) && !(digits.at(-9).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-9).to_i()) + " hundred")
    end

    if (digits.length.>9) && ((digits.at(-10).to_i() + digits.at(-11).to_i() + digits.at(-12).to_i()).> 0)
      final_word.unshift("billion")
    end

    if (digits.length.>9) && !(digits.at(-11).to_i().==1) && !(digits.at(-10).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-10).to_i()))
    end

    if (digits.length.>10) && (digits.at(-11).to_i().==1)
      final_word.unshift(teen_words.fetch(digits.at(-11).concat(digits.at(-10)).to_i()))
    elsif (digits.length.>10) && !(digits.at(-11).=="0")
        final_word.unshift(tens_place_words.fetch(digits.at(-11).to_i()))
    end

    if (digits.length.>11) && !(digits.at(-12).=="0")
      final_word.unshift(one_place_words.fetch(digits.at(-12).to_i()) + " hundred")
    end

    if (digits.length.>12)
      final_word.unshift("trillion")
      final_word.unshift(one_place_words.fetch(digits.at(-13).to_i()))
    end

    final_word.join(' ')

  end
end
