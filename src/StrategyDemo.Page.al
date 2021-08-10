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
                    ToolTip = 'Select the strategy method implementation to calculate consumption.';
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
                Image = Calculate;
                ToolTip = 'Calculate the consumption based on the method selected.';

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