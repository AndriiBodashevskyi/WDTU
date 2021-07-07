page 50002 "Radio Show Type WDTU"
{
    
    ApplicationArea = Basic, Suite;
    Caption = 'Radio Show Type';
    PageType = List;
    SourceTable = "Radio Show Type WDTU";
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field';
                    ApplicationArea = Basic, Suite;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }
    
}
