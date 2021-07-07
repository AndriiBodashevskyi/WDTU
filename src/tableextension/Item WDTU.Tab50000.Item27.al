tableextension 50000 "Item WDTU" extends Item //27
{
    fields
    {
        field(50000; "Publisher Code WDTU"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
        field(50001; "ASCAP ID WDTU"; Integer)
        {
            Caption = 'ASCAP ID';
            DataClassification = CustomerContent;
        }
        field(50002; "Duration WDTU"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(50003; "Data Format WDTU"; Enum "Data Format WDTU")
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(50004; "MP3 Location WDTU"; Text[250])
        {
            Caption = 'MP3 Location';
            DataClassification = CustomerContent;
        }
    }

}
