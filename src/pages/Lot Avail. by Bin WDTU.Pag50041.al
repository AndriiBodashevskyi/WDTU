page 50041 "Lot Avail. by Bin WDTU"
{

    ApplicationArea = Basic, Suite;
    Caption = 'Lot Avail. by Bin';
    PageType = List;
    SourceTable = "Warehouse Entry";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ToolTip = 'Specifies the value of the Location Code field';
                    ApplicationArea = Basic, Suite;
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ToolTip = 'Specifies the value of the Bin Code field';
                    ApplicationArea = Basic, Suite;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ToolTip = 'Specifies the value of the Serial No. field';
                    ApplicationArea = Basic, Suite;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin WDTU";
    begin
        LotAvail.Open();
        while LotAvail.Read() do begin
            Rec.Init();
            Rec."Item No." := LotAvail.Item_No;
            Rec."Location Code" := LotAvail.Location_Code;
            Rec."Bin Code" := LotAvail.Bin_Code;
            Rec.Quantity := LotAvail.Sum_Quantity;
            Rec.Insert();
        end;
    end;
}
