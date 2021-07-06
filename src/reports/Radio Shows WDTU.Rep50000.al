report 50000 "Radio Shows WDTU"
{
    ApplicationArea = Basic, Suite;
    Caption = 'Radio Shows';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = './src/reports/RadioShows.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(DataItemName; "Radio Show WDTU")
        {
            column(No; "No.")
            {
            }
            column(RadioShowType; "Radio Show Type")
            {
            }
            column(Name; Name)
            {
            }
            column(RunTime; "Run Time")
            {
            }
            column(HostCode; "Host Code")
            {
            }
            column(HostName; "Host Name")
            {
            }
            column(AverageListeners; "Average Listeners")
            {
            }
            column(AudienceShare; "Audience Share")
            {
            }
            column(AdvertisingRevenue; "Advertising Revenue")
            {
            }
            column(RoyaltyCost; "Royalty Cost")
            {
            }
        }
    }

}
