using VihaanManagementService as service from '../../srv/schema_srv';
annotate service.MasterData1 with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Material',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialDesc',
                Value : MaterialDesc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedOn',
                Value : CreatedOn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Revision',
                Value : Revision,
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
            Label : 'Material',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialDesc',
            Value : MaterialDesc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedOn',
            Value : CreatedOn,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Revision',
            Value : Revision,
        },
    ],
);

