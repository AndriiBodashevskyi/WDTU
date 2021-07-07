page 50003 "Listenership entries"
{
    
    ApplicationArea = Basic,Suite;
    Caption = 'Listenership entries';
    PageType = List;
    SourceTable = "Listenership Entry WDTU";
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
                    ApplicationArea = Basic,Suite;
                }
                field("Ratings Source Entry No."; Rec."Ratings Source Entry No.")
                {
                    ToolTip = 'Specifies the value of the Ratings Source Entry No. field';
                    ApplicationArea = Basic,Suite;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field';
                    ApplicationArea = Basic,Suite;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Specifies the value of the Start Time field';
                    ApplicationArea = Basic,Suite;
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'Specifies the value of the End Time field';
                    ApplicationArea = Basic,Suite;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ToolTip = 'Specifies the value of the Radio Show No. field';
                    ApplicationArea = Basic,Suite;
                }
                field("Listener Count"; Rec."Listener Count")
                {
                    ToolTip = 'Specifies the value of the Listener Count field';
                    ApplicationArea = Basic,Suite;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ToolTip = 'Specifies the value of the Audience Share field';
                    ApplicationArea = Basic,Suite;
                }
                field("Age Demographic"; Rec."Age Demographic")
                {
                    ToolTip = 'Specifies the value of the Age Demographic field';
                    ApplicationArea = Basic,Suite;
                }
            }
        }
    }
    
}
