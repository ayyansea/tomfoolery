module Tomfoolery
    module Str
        extend self

        # Example: "hello how are you" -> "hElLo HoW aRe YoU"
        def up_n_down(input : String) : String
            length : Int32 = input.size - 1
            counter = 0
            output = ""
            loop do
                if counter % 2 == 0
                    output += input[counter].downcase
                else
                    output += input[counter].upcase
                end
                    
                counter += 1
                break if counter > length
            end
            return output
        end

        def up_n_down(input : Array(String)) : Array(String)
            output = input.map { |eachstr| up_n_down(eachstr) }
            return output
        end

        # Example: "what" -> "WHAT!!!"
        def angry(input : String) : String
            exclamations : Int32 = Random.new.rand(2..8)
            appendix : String = "!" * exclamations
            angry_output = input.upcase + appendix
            return angry_output
        end

        def angry(input : Array(String)) : Array(String)
            output = input.map { |eachstr| angry(eachstr) }
            return output
        end
    end
end