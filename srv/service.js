module.exports = cds.service.impl(async function () {
this.before('CREATE', 'PurchaseEnquiry', async (req) => {
    debugger
    var data =
    
        
    {
        "definitionId": "us10.25820971trial.mahindra1.mahindrapro1",
        "context": {
            "companyname": "Mahindra Automotives",
            "contactperson": "John Doe",
            "phonenumber": "+1-234-567-890",
            "emailaddress": "johndoe@mahindra.com",
            "van": "Ford Transit",
            "address": "123 Industrial Road, Detroit, MI",
            "documenttype": "Purchase Order",
            "salesorg": "001",
            "distributionchannel": "Direct Sales",
            "division": "Automotive",
            "purchaseenquiryid": "ENQ123456789",
            "deliverylocation": "Warehouse 5, Industrial Area",
            "vehiclename": "Mahindra XUV700",
            "vehiclecode": "XUV700-2023",
            "vehiclecolor": "Metallic Silver"
        }
    
        
    }
    console.log(data);

    var Destination = await cds.connect.to("destination1");
    debugger
    var result = await Destination.post('/workflow/rest/v1/workflow-instances', data);
    console.log(result);
    debugger

})
});
