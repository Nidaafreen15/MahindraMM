using MyService as service from '../../srv/service';
annotate service.PurchaseEnquiry with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'purchaseEnquiryID',
                Value : purchaseEnquiryID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vehicleCode',
                Value : vehicleCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerID',
                Value : customerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryLocation',
                Value : deliveryLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vehicleName',
                Value : vehicleName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vehicleColor',
                Value : vehicleColor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'quantity',
                Value : quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'vehicleCode',
            Value : vehicleCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerID',
            Value : customerID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'deliveryLocation',
            Value : deliveryLocation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vehicleName',
            Value : vehicleName,
        },
    ],
);

annotate service.PurchaseOrder with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : purchaseToQuotation.quototionToEnquiry.deliveryLocation,
            Label : 'deliveryLocation',
        },
        {
            $Type : 'UI.DataField',
            Value : purchaseToQuotation.quototionToEnquiry.purchaseEnquiryID,
            Label : 'purchaseEnquiryID',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'purchase',
            ID : 'purcha',
            Target : '@UI.FieldGroup#purcha',
        },
    ],
    UI.FieldGroup #purcha : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : deliveryLocation,
                Label : 'deliveryLocation',
            },
            {
                $Type : 'UI.DataField',
                Value : poID,
                Label : 'poID',
            },
            {
                $Type : 'UI.DataField',
                Value : quotationID,
                Label : 'quotationID',
            },
        ],
    },
);

