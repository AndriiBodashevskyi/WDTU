page 50011 "Radio Show Fans"
{
    
    ApplicationArea = Basic, Suite;
    Caption = 'Radio Show Fans';
    PageType = List;
    SourceTable = "Radio Show Fan WDTU";
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
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ToolTip = 'Specifies the value of the Radio Show No. field';
                    ApplicationArea = Basic, Suite;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = Basic, Suite;
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field';
                    ApplicationArea = Basic, Suite;
                }
                field("Last Contacted"; Rec."Last Contacted")
                {
                    ToolTip = 'Specifies the value of the Last Contacted field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }
    
}
