page 50007 Publishers
{
    
    ApplicationArea = Basic,Suite;
    Caption = 'Publishers';
    PageType = List;
    SourceTable = "Publisher WDTU";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field';
                    ApplicationArea = Basic,Suite;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = Basic,Suite;
                }
            }
        }
    }
    
}
