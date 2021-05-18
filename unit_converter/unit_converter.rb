require_relative "quantity"

class UnitConverter
    def initialize(initial_quantity, target_unit, conversion_database)
        @initial_quantity = initial_quantity
        @target_unit = target_unit
        @conversion_database = conversion_database
    end

    def convert
        Quantity.new(
            @initial_quantity.amount * conversion_factor(from: @initial_quantity.unit, to: @target_unit), @target_unit
        )
    end

    private

    attr_reader :conversion_database, :initial_quantity, :target_unit

    def conversion_factor
       conversion_database.conversion_ratio(
           from: initial_quantity.unit,
           to: target_unit
       )
    end
end
