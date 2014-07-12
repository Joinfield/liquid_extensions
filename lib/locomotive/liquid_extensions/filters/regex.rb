module Locomotive
  module LiquidExtensions
    module Filters
      module Regex

        def regex(input, r)
          my_match = /#{r}/.match(input)
          if my_match
            if my_match.captures.size>0
              return my_match.captures.first
            end
          end
          ""
        end

      end
    end
  end
end
