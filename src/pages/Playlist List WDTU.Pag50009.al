page 50009 "Playlist List WDTU"
{

    ApplicationArea = Basic, Suite;
    Caption = 'Playlist List';
    PageType = List;
    SourceTable = "Playlist Header WDTU";
    UsageCategory = Lists;
    CardPageId = "Playlist Card WDTU";

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
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = Basic, Suite;
                }
                field("Broadcast Date"; Rec."Broadcast Date")
                {
                    ToolTip = 'Specifies the value of the Broadcast Date field';
                    ApplicationArea = Basic, Suite;
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field';
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
            }
        }
    }

}
