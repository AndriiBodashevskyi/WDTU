table 50003 "Playlist Line WDTU"
{
    Caption = 'Playlist Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(10; Type; Enum "Type WDTU")
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "Radio Show WDTU"."No."
            else
            if (Type = const(Item)) Item."No.";
        }
        field(30; "Data Format"; Enum "Data Format WDTU")
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(40; Publisher; Code[10])
        {
            Caption = 'Publisher';
            DataClassification = CustomerContent;
        }
        field(50; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(60; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(70; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if Duration <> 0 then
                    "End Time" := "Start Time" + Duration;
            end;
        }
        field(80; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "Start Time" <> 0T then
                    Duration := "End Time" - "Start Time";
            end;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}
