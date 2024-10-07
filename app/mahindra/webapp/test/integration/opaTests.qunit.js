sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mahindra/test/integration/FirstJourney',
		'mahindra/test/integration/pages/PurchaseEnquiryList',
		'mahindra/test/integration/pages/PurchaseEnquiryObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseEnquiryList, PurchaseEnquiryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mahindra') + '/index.html'
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