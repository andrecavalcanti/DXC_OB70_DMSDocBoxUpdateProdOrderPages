pageextension 50079 "DXCPageExt50079" extends "Firm Planned Prod. Order" //99000829
{
    layout
    {
        // Add changes to page layout here
        addlast(Factboxes)
        {
            part(DXCDMSBox;"DMS - Doc. Box FactBox Async")
            {
                Visible = true;
                Editable = false;
                AccessByPermission =  Page "DMS - Doc. Box FactBox Async"=X;
            }
        }        
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}