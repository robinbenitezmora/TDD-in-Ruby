class Solver
    def factorial(n)
        n.negative? ? (raise ArgumentError, "n must be positive") : (1..n).reduce(:*) || 1
    end

    def reverse(word)
        if word.is_a? String
            word.reverse
        else
            raise ArgumentError, "word must be a string"
        end
    end

    def fizzbuzz(n)
        if n.is_a? Integer
            if n % 15 == 0
                "FizzBuzz"
            elsif n % 3 == 0
                "Fizz"
            elsif n % 5 == 0
                "Buzz"
            else
                n.to_s
            end
        end
    end
end
