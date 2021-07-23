report 50002 "Fan Promotion List WDTU"
{
    ApplicationArea = Basic, Suite;
    Caption = 'Fan Promotion List';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = './src/reports/FanPromotionList.docx';

    dataset
    {
        dataitem(RadioShowFan; "Radio Show Fan WDTU")
        {
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Address2; "Address 2")
            {
            }
            column(City; City)
            {
            }
            column(Post_Code; "Post Code")
            {
            }
            column(Country_Region_Code; "Country/Region Code")
            {
            }
            column(Country_Name; CountryName)
            {
            }

            trigger OnAfterGetRecord()
            begin
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                FanAge := Round(((WorkDate() - "Birth Date") / 365), 1.0, '<');

                SelectThisFan := false;
                if Age12orLess and (FanAge <= 12) then
                    SelectThisFan := true;
                if Age13to18 and (FanAge > 12) and (FanAge < 19) then
                    SelectThisFan := true;
                if Age19to34 and (FanAge > 18) and (FanAge < 35) then
                    SelectThisFan := true;
                if Age35to50 and (FanAge > 34) and (FanAge < 51) then
                    SelectThisFan := true;
                if AgeOver50 and (FanAge > 50) then
                    SelectThisFan := true;
                if Male and (Gender = Gender::Male) then
                    SelectThisFan := true;
                if Female and (Gender = Gender::Female) then
                    SelectThisFan := true;

                if SelectThisFan <> true then
                    CurrReport.Skip();
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Age 12 or Less"; Age12orLess)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Age 12 or less';
                        ToolTip = 'Specifies the value of the Age12orLess field';
                    }
                    field("Age 13 to 18"; Age13to18)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Age 13 to 18';
                        ToolTip = 'Specifies the value of the Age13to18 field';
                    }
                    field("Age 19 to 34"; Age19to34)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Age 19 to 34';
                        ToolTip = 'Specifies the value of the Age19to34 field';
                    }
                    field("Age 35 to 50"; Age35to50)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Age 35 to 50';
                        ToolTip = 'Specifies the value of the Age35to50 field';
                    }
                    field("Age Over 50"; AgeOver50)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Age over 50';
                        ToolTip = 'Specifies the value of the AgeOver50 field';
                    }
                    field(isMale; Male)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Male';
                        ToolTip = 'Specifies the value of the Male field';
                    }
                    field(isFemale; Female)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Female';
                        ToolTip = 'Specifies the value of the Female field';
                    }
                }
            }
        }
    }
    var
        CountryRegion: Record "Country/Region";
        CountryName: Text;
        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;
        Male: Boolean;
        Female: Boolean;
        SelectThisFan: Boolean;
        FanAge: Integer;
}
