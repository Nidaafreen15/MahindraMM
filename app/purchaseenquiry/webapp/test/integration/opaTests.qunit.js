sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'purchaseenquiry/test/integration/FirstJourney',
		'purchaseenquiry/test/integration/pages/PurchaseEnquiryList',
		'purchaseenquiry/test/integration/pages/PurchaseEnquiryObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseEnquiryList, PurchaseEnquiryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('purchaseenquiry') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePurchaseEnquiryList: PurchaseEnquiryList,
					onThePurchaseEnquiryObjectPage: PurchaseEnquiryObjectPage
                }
            },
            opaJourney.run
        );
    }
);