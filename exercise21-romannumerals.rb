# Write a method roman_numeral which takes in an input number, and converts the input number into roman numerals as a string.

def roman_numeral(input)
    roman_string=""
    while input >= 1000 
        roman_string += "M"
        input -= 1000      
    end
    while input >= 500
        roman_string += "D"
        input -= 500
    end
    while input >= 100
        roman_string += "C"
        input -= 100
    end
    while input >= 50
        roman_string += "L";
        input -= 50;
    end
    while input >= 10 
        roman_string += "X";
        input -= 10;
    end
    while input >= 5
        roman_string += "V";
        input -= 5;
    end
    while input >= 1
        roman_string += "I";
        input -= 1;
    end
    return roman_string;
end

p roman_numeral(2978)