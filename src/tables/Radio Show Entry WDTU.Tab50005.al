table 50005 "Radio Show Entry WDTU"
{
    Caption = 'Radio Show Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = CustomerContent;
        }
        field(20; Type; Enum "Type WDTU")
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(40; "Data Format"; Enum "Data Format WDTU")
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(60; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(70; "Time"; Time)
        {
            Caption = 'Time';
            DataClassification = CustomerContent;
        }
        field(80; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(90; "Fee Amount"; Decimal)
        {
            Caption = 'Fee Amount';
            DataClassification = CustomerContent;
        }
        field(100; "ASCAP ID"; Integer)
        {
            Caption = 'ASCAP ID';
            DataClassification = CustomerContent;
        }
        field(120; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Reporting2; Type, "No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
    }

}
