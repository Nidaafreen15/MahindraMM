using db from '../db/schema';

service MyService {
    @odata.draft.enabled
    entity Customer as projection on db.Customer;
     @odata.draft.enabled
    entity PurchaseEnquiry as projection on db.PurchaseEnquiry;
    entity Vehicle as projection on db.Vehicle;
     @odata.draft.enabled
    entity Quotation as projection on db.Quotation;
    @odata.draft.enabled
    entity PurchaseOrder as projection on db.PurchaseOrder;
     @odata.draft.enabled
    entity SalesOrder as projection on db.SalesOrder;
     @odata.draft.enabled
    entity Stocks as projection on db.Stocks;
     @odata.draft.enabled
    entity PaymentDetails as projection on db.PaymentDetails;
     @odata.draft.enabled
    entity Invoice as projection on db.Invoice;
}
