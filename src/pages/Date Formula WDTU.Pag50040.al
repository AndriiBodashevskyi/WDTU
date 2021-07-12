page 50040 "Date Formula WDTU"
{
    
    ApplicationArea = All;
    Caption = 'Date Formula';
    PageType = List;
    SourceTable = "Date Formula WDTU";
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(GroupName)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field';
                    ApplicationArea = All;
                }
                field("Reference for Data Calculation"; Rec."Reference for Data Calculation")
                {
                    ToolTip = 'Specifies the value of the Reference for Data Calculation field';
                    ApplicationArea = All;
                }
                field("Date Fomula to Test"; Rec."Date Fomula to Test")
                {
                    ToolTip = 'Specifies the value of the Date Fomula to Test field';
                    ApplicationArea = All;
                }
                field("Date Result"; Rec."Date Result")
                {
                    ToolTip = 'Specifies the value of the Date Result field';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
