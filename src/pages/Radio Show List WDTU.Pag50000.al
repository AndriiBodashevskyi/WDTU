page 50000 "Radio Show List WDTU"
{

    ApplicationArea = Basic, Suite;
    Caption = 'Radio Show List';
    PageType = List;
    SourceTable = "Radio Show WDTU";
    UsageCategory = Lists;
    CardPageId = "Radio Show Card WDTU";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = Basic, Suite;
                }
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ToolTip = 'Specifies the value of the Radio Show Type field';
                    ApplicationArea = Basic, Suite;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = Basic, Suite;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ToolTip = 'Specifies the value of the Run Time field';
                    ApplicationArea = Basic, Suite;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ToolTip = 'Specifies the value of the Host Code field';
                    ApplicationArea = Basic, Suite;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ToolTip = 'Specifies the value of the Host Name field';
                    ApplicationArea = Basic, Suite;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ToolTip = 'Specifies the value of the Average Listeners field';
                    ApplicationArea = Basic, Suite;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ToolTip = 'Specifies the value of the Audience Share field';
                    ApplicationArea = Basic, Suite;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ToolTip = 'Specifies the value of the Advertising Revenue field';
                    ApplicationArea = Basic, Suite;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ToolTip = 'Specifies the value of the Royalty Cost field';
                    ApplicationArea = Basic, Suite;
                }
                field(Frequency; Rec.Frequency)
                {
                    ToolTip = 'Specifies the value of the Frequency field';
                    ApplicationArea = Basic, Suite;
                }
                field("PSA Required"; Rec."PSA Required")
                {
                    ToolTip = 'Specifies the value of the PSA Planned Quantity field';
                    ApplicationArea = Basic, Suite;
                }
                field("PSA Count"; Rec."PSA Count")
                {
                    ToolTip = 'Specifies the value of the PSA Count field';
                    ApplicationArea = Basic, Suite;
                }
                field("Ads Required"; Rec."Ads Required")
                {
                    ToolTip = 'Specifies the value of the Ads Planned Quantity field';
                    ApplicationArea = Basic, Suite;
                }
                field("Ads Count"; Rec."Ads Count")
                {
                    ToolTip = 'Specifies the value of the Ads Count field';
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
        area(FactBoxes)
        {
            part(Fans; "Radio Show Fan Factbox WDTU")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Radio Show No." = field("No.");
            }
        }
    }

}
