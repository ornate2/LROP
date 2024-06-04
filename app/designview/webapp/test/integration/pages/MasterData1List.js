sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'lrop.designview',
            componentId: 'MasterData1List',
            contextPath: '/MasterData1'
        },
        CustomPageDefinitions
    );
});