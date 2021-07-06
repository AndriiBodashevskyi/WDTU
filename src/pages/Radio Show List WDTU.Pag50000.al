page 50000 "Radio Show List WDTU"
{

    ApplicationArea = All;
    Caption = 'Radio Show List';
    PageType = List;
    SourceTable = "Radio Show WDTU";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field';
                    ApplicationArea = Basic, Suite;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = Basic, Suite;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ToolTip = 'Specifies the value of the Run Time field';
                    ApplicationArea = Basic, Suite;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ToolTip = 'Specifies the value of the Host Code field';
                    ApplicationArea = Basic, Suite;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ToolTip = 'Specifies the value of the Host Name field';
                    ApplicationArea = Basic, Suite;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ToolTip = 'Specifies the value of the Average Listeners field';
                    ApplicationArea = Basic, Suite;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ToolTip = 'Specifies the value of the Audience Share field';
                    ApplicationArea = Basic, Suite;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ToolTip = 'Specifies the value of the Advertising Revenue field';
                    ApplicationArea = Basic, Suite;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ToolTip = 'Specifies the value of the Royalty Cost field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }

}
