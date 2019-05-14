pageextension 50081 "DXCPageExt50081" extends "Finished Production Order" //99000867
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