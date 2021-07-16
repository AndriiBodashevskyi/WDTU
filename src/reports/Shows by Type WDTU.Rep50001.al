report 50001 "Shows by Type WDTU"
{
    ApplicationArea = Basic, Suite;
    Caption = 'Shows by Type';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = './src/reports/ShowsbyType.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(RadioShowType; "Radio Show Type WDTU")
        {
            column(UserComment; "User Comment")
            {

            }
            column(Code_RadioShowType; Code)
            {
                IncludeCaption = true;
            }
            column(Description_RadioShowType; Description)
            {
                IncludeCaption = true;
            }
            dataitem(RadioShow; "Radio Show WDTU")
            {
                DataItemLink = "Radio Show Type" = field(Code);
                DataItemTableView = sorting("Radio Show Type");
                PrintOnlyIfDetail = true;
                column(No_RadioShow; "No.")
                {
                    IncludeCaption = true;
                }
                column(Name_RadioShow; Name)
                {
                    IncludeCaption = true;
                }
                column(RunTime_RadioShow; "Run Time")
                {
                    IncludeCaption = true;
                }
                dataitem(PlaylistHeader; "Playlist Header WDTU")
                {
                    DataItemLink = "Radio Show No." = field("No.");
                    DataItemTableView = sorting("No.");
                    column(Postingdate_PlaylistHeader; "Broadcast Date")
                    {
                        IncludeCaption = true;
                    }
                    column(StartTime_PlaylistHeader; "Start Time")
                    {
                        IncludeCaption = true;
                    }
                }
            }
        }
    }
    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }
}
