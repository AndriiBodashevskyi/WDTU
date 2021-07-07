table 50001 "Radio Show Type WDTU"
{
    Caption = 'Radio Show Type';
    DataClassification = CustomerContent;
    LookupPageId = "Radio Show Type WDTU";
    DrillDownPageId = "Radio Show Type WDTU";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

}
