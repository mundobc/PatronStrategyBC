table 50200 "Context"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; consumptionStrategyEnum; Enum "Strategy implementation")
        {
            DataClassification = ToBeClassified;

        }
    }

    procedure executeStrategy(): Text
    begin
        consumptionStrategy := consumptionStrategyEnum;
        exit(consumptionStrategy.CalculateConsumption())
    end;


    var
        consumptionStrategy: Interface ConsumptionStrategy;
}