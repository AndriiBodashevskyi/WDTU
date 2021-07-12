table 50040 "Date Formula WDTU"
{
    Caption = 'Date Formula';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(10; "Reference for Data Calculation"; Date)
        {
            Caption = 'Reference for Data Calculation';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(20; "Date Fomula to Test"; DateFormula)
        {
            Caption = 'Date Fomula to Test';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(30; "Date Result"; Date)
        {
            Caption = 'Date Result';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Fomula to Test", "Reference for Data Calculation");
    end;
}
