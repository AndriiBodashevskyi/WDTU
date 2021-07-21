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
        field(60; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(70; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = CustomerContent;
        }
        field(80; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(90; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = CustomerContent;
        }
        field(95; County; Text[30])
        {
            Caption = 'County';
            DataClassification = CustomerContent;
        }
        field(100; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                PostCode: Record "Post Code";
            begin
                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and guiallowed);
            end;
        }
        field(110; Gender; Enum "Gender WDTU")
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
        }
        field(120; "Birth Date"; Date)
        {
            Caption = 'Birth Date';
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
