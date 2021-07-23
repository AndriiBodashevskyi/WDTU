table 50002 "Playlist Header WDTU"
{
    Caption = 'Playlist Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show WDTU";
            begin
                if RadioShow.Get("Radio Show No.") then begin
                    "PSA Required" := RadioShow."PSA Required";
                    "Ads Required" := RadioShow."Ads Required";
                    "News Required" := RadioShow."News Required";
                    "Sports Required" := RadioShow."Sports Required";
                    "Weather Required" := RadioShow."Weather Required";
                end else begin
                    "PSA Required" := false;
                    "Ads Required" := false;
                    "News Required" := false;
                    "Sports Required" := false;
                    "Weather Required" := false;
                end;
            end;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Radio Show WDTU".Name);
        }
        field(30; "Broadcast Date"; Date)
        {
            Caption = 'Broadcast Date';
            DataClassification = CustomerContent;
        }
        field(40; "Duration"; Duration)
        {
            Caption = 'Duration';
            FieldClass = FlowField;
            CalcFormula = lookup("Radio Show WDTU"."Run Time");
        }
        field(50; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show WDTU";
            begin
                RadioShow.Get("Radio Show No.");
                "End Time" := "Start Time" + RadioShow."Run Time";
            end;
        }
        field(60; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
        field(1010; "PSA Required"; Boolean)
        {
            Caption = 'PSA Required';
            DataClassification = CustomerContent;
        }
        field(1011; "PSA Count"; Integer)
        {
            Caption = 'PSA Count';
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line WDTU" where
                ("No." = field("No."), Type = const(Item), "Data Format" = const(PSA)));
            Editable = false;
        }
        field(1020; "Ads Required"; Boolean)
        {
            Caption = 'Ads Required';
            DataClassification = CustomerContent;
        }
        field(1021; "Ads Count"; Integer)
        {
            Caption = 'Ads Count';
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line WDTU" where
                ("No." = field("No."), Type = const(Item), "Data Format" = const(Advertisement)));
            Editable = false;
        }
        field(1030; "News Required"; Boolean)
        {
            Caption = 'News Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1050; "Sports Required"; Boolean)
        {
            Caption = 'Sports Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1070; "Weather Required"; Boolean)
        {
            Caption = 'Weather Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    procedure NWSRequired(Category: Option ,News,Weather,Sports): Integer
    var
        PlaylistLine: Record "Playlist Line WDTU";
        RadioShow: Record "Radio Show WDTU";
        RadioShowType: Record "Radio Show Type WDTU";
        Cnt: Integer;
    begin
        PlaylistLine.SetRange("Document No.", "No.");
        PlaylistLine.SetRange(Type, "Type WDTU"::Show);
        if PlaylistLine.FindSet() then
            repeat
                RadioShow.Get(PlaylistLine."No.");
                RadioShowType.Get(RadioShow."Radio Show Type");
                case Category of
                    Category::News:
                        if RadioShowType.Code = 'News' then
                            Cnt += 1;
                    Category::Weather:
                        if RadioShowType.Code = 'Weather' then
                            Cnt += 1;
                    Category::Sports:
                        if RadioShowType.Code = 'Sports' then
                            Cnt += 1;
                end
            until PlaylistLine.Next() = 0;
    end;
}
