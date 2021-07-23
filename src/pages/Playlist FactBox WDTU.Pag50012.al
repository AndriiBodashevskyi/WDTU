page 50012 "Playlist FactBox WDTU"
{

    Caption = 'Playlist FactBox WDTU';
    PageType = CardPart;
    SourceTable = "Playlist Header WDTU";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field("PSA Required"; Rec."PSA Required")
                {
                    ToolTip = 'Specifies the value of the PSA Required field';
                    ApplicationArea = All;
                }
                field("PSA Count"; Rec."PSA Count")
                {
                    ToolTip = 'Specifies the value of the PSA Count field';
                    ApplicationArea = All;
                }
                field("Ads Required"; Rec."Ads Required")
                {
                    ToolTip = 'Specifies the value of the Ads Required field';
                    ApplicationArea = All;
                }
                field("Ads Count"; Rec."Ads Count")
                {
                    ToolTip = 'Specifies the value of the Ads Count field';
                    ApplicationArea = All;
                }
                field("News Required"; Rec."News Required")
                {
                    ToolTip = 'Specifies the value of the News Required field';
                    ApplicationArea = All;
                }
                field("Weather Required"; Rec."Weather Required")
                {
                    ToolTip = 'Specifies the value of the Weather Required field';
                    ApplicationArea = All;
                }
                field("Sports Required"; Rec."Sports Required")
                {
                    ToolTip = 'Specifies the value of the Sports Required field';
                    ApplicationArea = All;
                }
                field("News Count"; Rec.NWSRequired(1))
                {
                    Caption = 'News Count';
                    ToolTip = 'Specifies the value of the News Count field';
                    ApplicationArea = All;
                }
                field("Weather Count"; Rec.NWSRequired(2))
                {
                    Caption = 'Weather Count';
                    ToolTip = 'Specifies the value of the Weather Count field';
                    ApplicationArea = All;
                }
                field("Sports Count"; Rec.NWSRequired(3))
                {
                    Caption = 'Sports Count';
                    ToolTip = 'Specifies the value of the Sports Count field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
