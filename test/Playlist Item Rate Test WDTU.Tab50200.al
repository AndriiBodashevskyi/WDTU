table 50200 "Playlist Item Rate Test WDTU"
{
    Caption = 'Playlist Item Rate';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Source Type"; Enum "Source Type WDTU")
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = CustomerContent;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
        }
        field(50; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
        field(60; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = CustomerContent;
        }
        field(70; "Publishing Code"; Code[10])
        {
            Caption = 'Publishing Code';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Item No.")
        {
            Clustered = true;
        }
    }

}
