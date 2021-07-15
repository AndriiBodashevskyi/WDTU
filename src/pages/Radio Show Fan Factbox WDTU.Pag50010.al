page 50010 "Radio Show Fan Factbox WDTU"
{

    Caption = 'Radio Show Fan Factbox';
    PageType = ListPart;
    SourceTable = "Radio Show Fan WDTU";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
