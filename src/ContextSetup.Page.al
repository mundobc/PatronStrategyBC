page 50200 "Strategy Demo"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Strategy Implementation"; Context.consumptionStrategyEnum)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Calculate consumption")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MESSAGE(Context.executeStrategy());
                end;
            }
        }
    }

    var
        Context: Record Context;

}