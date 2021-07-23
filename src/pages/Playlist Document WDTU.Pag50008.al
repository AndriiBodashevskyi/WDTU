page 50008 "Playlist Document WDTU"
{

    Caption = 'Playlist Document';
    PageType = Document;
    SourceTable = "Playlist Header WDTU";
    ApplicationArea = Basic, Suite;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(Group)
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
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
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
            part(Lines; "Playlist Subform WDTU")
            {
                SubPageLink = "Document No." = field("No.");
                SubPageView = sorting("Document No.", "Line No.");
                ApplicationArea = Basic, Suite;
            }
        }
        area(FactBoxes)
        {
            part(FactBox; "Playlist FactBox WDTU")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }

}
