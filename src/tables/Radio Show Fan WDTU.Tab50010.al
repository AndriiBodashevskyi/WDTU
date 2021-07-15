table 50010 "Radio Show Fan WDTU"
{
    Caption = 'Radio Show Fan';
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
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(30; "E-Mail"; Text[250])
        {
            Caption = 'E-Mail';
            DataClassification = CustomerContent;
        }
        field(40; "Last Contacted"; Date)
        {
            Caption = 'Last Contacted';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}
