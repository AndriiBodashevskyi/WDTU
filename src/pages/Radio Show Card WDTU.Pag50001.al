page 50001 "Radio Show Card WDTU"
{

    ApplicationArea = All;
    Caption = 'Radio Show Card';
    PageType = Card;
    SourceTable = "Radio Show WDTU";
    UsageCategory = Documents;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ToolTip = 'Specifies the value of the Run Time field';
                    ApplicationArea = All;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ToolTip = 'Specifies the value of the Host Code field';
                    ApplicationArea = All;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ToolTip = 'Specifies the value of the Host Name field';
                    ApplicationArea = All;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ToolTip = 'Specifies the value of the Average Listeners field';
                    ApplicationArea = All;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ToolTip = 'Specifies the value of the Audience Share field';
                    ApplicationArea = All;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ToolTip = 'Specifies the value of the Advertising Revenue field';
                    ApplicationArea = All;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ToolTip = 'Specifies the value of the Royalty Cost field';
                    ApplicationArea = All;
                }
                                field(Frequency; Rec.Frequency)
                {
                    ToolTip = 'Specifies the value of the Frequency field';
                    ApplicationArea = Basic, Suite;
                }
                field("PSA Planned Quantity"; Rec."PSA Planned Quantity")
                {
                    ToolTip = 'Specifies the value of the PSA Planned Quantity field';
                    ApplicationArea = Basic, Suite;
                }
                field("Ads Planned Quantity"; Rec."Ads Planned Quantity")
                {
                    ToolTip = 'Specifies the value of the Ads Planned Quantity field';
                    ApplicationArea = Basic, Suite;
                }
                field("News Required"; Rec."News Required")
                {
                    ToolTip = 'Specifies the value of the News Required field';
                    ApplicationArea = Basic, Suite;
                }
                field("News Duration"; Rec."News Duration")
                {
                    ToolTip = 'Specifies the value of the News Duration field';
                    ApplicationArea = Basic, Suite;
                }
                field("Sports Required"; Rec."Sports Required")
                {
                    ToolTip = 'Specifies the value of the Sports Required field';
                    ApplicationArea = Basic, Suite;
                }
                field("Sports Duration"; Rec."Sports Duration")
                {
                    ToolTip = 'Specifies the value of the Sports Duration field';
                    ApplicationArea = Basic, Suite;
                }
                field("Weather Required"; Rec."Weather Required")
                {
                    ToolTip = 'Specifies the value of the Weather Required field';
                    ApplicationArea = Basic, Suite;
                }
                field("Weather Duration"; Rec."Weather Duration")
                {
                    ToolTip = 'Specifies the value of the Weather Duration field';
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }
    
}
