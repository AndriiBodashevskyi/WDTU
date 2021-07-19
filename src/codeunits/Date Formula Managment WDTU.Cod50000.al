codeunit 50000 "Date Formula Managment WDTU"
{
    procedure CalculateNewDate(DateFormulaToTest: DateFormula; ReferenceForDateCalc: Date): Date
    begin
        exit(CalcDate(DateFormulaToTest, ReferenceForDateCalc))
    end;
}
