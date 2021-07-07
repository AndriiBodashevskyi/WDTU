page 50004 "Playlist Item Rates WDTU"
{

    ApplicationArea = Basic, Suite;
    Caption = 'Playlist Item Rates';
    PageType = List;
    SourceTable = "Playlist Item Rate WDTU";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Source Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Source Type field';
                    ApplicationArea = Basic, Suite;
                }
                field("Source No."; Rec."Source No.")
                {
                    ToolTip = 'Specifies the value of the Source No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Specifies the value of the Start Time field';
                    ApplicationArea = Basic, Suite;
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'Specifies the value of the End Time field';
                    ApplicationArea = Basic, Suite;
                }
                field("Rate Amount"; Rec."Rate Amount")
                {
                    ToolTip = 'Specifies the value of the Rate Amount field';
                    ApplicationArea = Basic, Suite;
                }
                field("Publishing Code"; Rec."Publishing Code")
                {
                    ToolTip = 'Specifies the value of the Publishing Code field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }

}
