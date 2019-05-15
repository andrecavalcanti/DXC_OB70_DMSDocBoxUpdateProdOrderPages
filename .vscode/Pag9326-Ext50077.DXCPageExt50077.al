pageextension 50077 "DXCPageExt50077" extends "Released Production Orders" //9326
{
    layout
    {
        // Add changes to page layout here
        addlast(Factboxes)
        {
            part(DXCDMSBox;"DMS - Doc. Box FactBox Async")
            {
                Visible = DocumentBoxVisible;
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
         "--- CCDMS Vars. ---" : Integer;
        DocumentBoxVisible : Boolean;

    trigger OnAfterGetCurrRecord();
    begin        

        // >> CCDMS
        UpdateDocumentBox;
        //<< CCDMS
       
    end;

    local procedure "--- CCDMS Fcts. ---"();
    begin
    end;

    procedure UpdateDocumentBox();
    var
        ChangeLog : Codeunit "Change Log Management";
        RecRef : RecordRef;
    begin
        // >> CCDMS
        DocumentBoxVisible := ChangeLog.CheckLicensePermission('CCDMS');
        if DocumentBoxVisible then begin
          RecRef.GETTABLE(Rec);
          if CurrPage.DXCDMSBox.PAGE.SetRecordRef(RecRef) then
            CurrPage.DXCDMSBox.PAGE.UpdateDocumentBox;
        end;
        // << CCDMS
    end;
}