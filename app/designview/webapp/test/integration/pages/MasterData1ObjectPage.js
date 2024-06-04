sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'lrop.designview',
            componentId: 'MasterData1ObjectPage',
            contextPath: '/MasterData1'
        },
        CustomPageDefinitions
    );
});