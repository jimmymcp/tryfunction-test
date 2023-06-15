codeunit 50100 "Sales-Post with Try Function"
{
    TableNo = "Sales Header";

    trigger OnRun()
    begin
        if not TryPost(Rec) then
            Message('%1: %2', Rec."No.", GetLastErrorText());
    end;

    [TryFunction]
    local procedure TryPost(var SalesHeader: Record "Sales Header")
    var
        SalesPost: Codeunit "Sales-Post";
    begin
        SalesPost.Run(SalesHeader);
    end;
}