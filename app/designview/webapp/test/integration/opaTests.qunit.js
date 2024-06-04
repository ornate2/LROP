sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'lrop/designview/test/integration/FirstJourney',
		'lrop/designview/test/integration/pages/MasterData1List',
		'lrop/designview/test/integration/pages/MasterData1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, MasterData1List, MasterData1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('lrop/designview') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMasterData1List: MasterData1List,
					onTheMasterData1ObjectPage: MasterData1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);