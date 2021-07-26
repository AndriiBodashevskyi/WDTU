codeunit 50001 "Web Service WDTU"
{
    procedure OmportRating(RatingsXML: XmlPort "Ratings Import WDTU"): Text
    begin
        RatingsXML.Import();
        exit('<Root><Station Frequency>="91.5">WDTU<Station></Root>');
    end;
}
