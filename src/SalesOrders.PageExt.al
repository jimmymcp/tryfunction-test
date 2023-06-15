pageextension 50100 "Sales Orders" extends "Sales Order List"
{
    actions
    {
        addlast("F&unctions")
        {
            action(PostWithTryFunction)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                var
                    SalesPostwithTryFunction: Codeunit "Sales-Post with Try Function";
                begin
                    SalesPostwithTryFunction.Run(Rec);
                end;
            }
        }
    }
}