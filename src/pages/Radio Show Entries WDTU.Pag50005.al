page 50005 "Radio Show Entries WDTU"
{

    ApplicationArea = Basic, Suite;
    Caption = 'Radio Show Entries';
    PageType = List;
    SourceTable = "Radio Show Entry WDTU";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ToolTip = 'Specifies the value of the Radio Show No. field';
                    ApplicationArea = Basic, Suite;
                }
                field(Type; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = Basic, Suite;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Data Format"; Rec."Data Format")
                {
                    ToolTip = 'Specifies the value of the Data Format field';
                    ApplicationArea = Basic, Suite;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = Basic, Suite;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field';
                    ApplicationArea = Basic, Suite;
                }
                field("Time"; Rec."Time")
                {
                    ToolTip = 'Specifies the value of the Time field';
                    ApplicationArea = Basic, Suite;
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field';
                    ApplicationArea = Basic, Suite;
                }
                field("Fee Amount"; Rec."Fee Amount")
                {
                    ToolTip = 'Specifies the value of the Fee Amount field';
                    ApplicationArea = Basic, Suite;
                }
                field("ASCAP ID"; Rec."ASCAP ID")
                {
                    ToolTip = 'Specifies the value of the ASCAP ID field';
                    ApplicationArea = Basic, Suite;
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ToolTip = 'Specifies the value of the Publisher Code field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }

}
