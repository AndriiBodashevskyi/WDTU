xmlport 50000 "Ratings Import WDTU"
{
    Caption = 'Ratings Import';
    UseDefaultNamespace = true;
    FormatEvaluate = Xml;
    DefaultNamespace = 'urn:Microsoft-dynamicsnav/xmlports/RatingsImport';
    Direction = Both;

    schema
    {
        textelement(Root)
        {
            MaxOccurs = Once;
            tableelement(ListenershipEntries; "Listenership Entry WDTU")
            {
                MinOccurs = Zero;
                XmlName = 'RatingData';
                fieldelement(EntryNo; ListenershipEntries."Entry No.")
                {

                }
                fieldelement(Date; ListenershipEntries.Date)
                {

                }
                fieldelement(StartTime; ListenershipEntries."Start Time")
                {

                }
                fieldelement(EndTime; ListenershipEntries."End Time")
                {

                }
                fieldelement(RadioShowID; ListenershipEntries."Radio Show No.")
                {

                }
                fieldelement(Listeners; ListenershipEntries."Listener Count")
                {

                }
                fieldelement(Audience; ListenershipEntries."Audience Share")
                {

                }
                fieldelement(Age; ListenershipEntries."Age Demographic")
                {

                }
            }
        }
    }

}
