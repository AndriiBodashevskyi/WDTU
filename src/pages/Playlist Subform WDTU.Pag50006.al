page 50006 "Playlist Subform WDTU"
{

    Caption = 'Playlist Subform';
    PageType = ListPart;
    SourceTable = "Playlist Line WDTU";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        Res: Record Resource;
                        Item: Record Item;
                        RadioShow: Record "Radio Show WDTU";
                    begin
                        case Rec.Type of
                            Rec.Type::Resource:
                                begin
                                    Res.Get(Rec."No.");
                                    Rec.Description := Res.Name;
                                end;
                            Rec.Type::Item:
                                begin
                                    Item.Get(Rec."No.");
                                    Rec.Description := Item.Description;
                                    Rec."Data Format" := Item."Data Format WDTU";
                                    Rec.Duration := Item."Duration WDTU";
                                end;
                            Rec.Type::Show:
                                begin
                                    RadioShow.Get(Rec."No.");
                                    Rec.Description := RadioShow.Name;
                                end;
                        end
                    end;
                }
                field("Data Format"; Rec."Data Format")
                {
                    ToolTip = 'Specifies the value of the Data Format field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field';
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Specifies the value of the Start Time field';
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'Specifies the value of the End Time field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
