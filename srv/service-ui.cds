// namespace app.service;

// using { app.db as db } from '../db/schema';

// // Service definition
// service ServiceUI {

//   entity MasterData as projection on db.MasterData;
//   entity Design as projection on db.Design;

//   annotate ServiceUI.MasterData with {
//     ID              @title: 'ID';
//     Material        @title: 'Material';
//     MaterialDesc    @title: 'Material Description';
//     CreatedOn       @title: 'Created On';
//     Revision        @title: 'Revision';
//   }

//   annotate ServiceUI.MasterData with @(UI: {
//       HeaderInfo: {
//         TypeName: 'MasterData',
//         TypeNamePlural: 'MasterData Records',
//         Title: {
//           $Type: 'UI.DataField',
//           Value: Material
//         },
//         Description: {
//           $Type: 'UI.DataField',
//           Value: MaterialDesc
//         }
//       },
//       SelectionFields: [ID],
//       LineItem: [
//         { Value: ID },
//         { Value: Material },
//         { Value: MaterialDesc },
//         { Value: CreatedOn },
//         { Value: Revision }
//       ],

//       Facets: [
//         { $Type: 'UI.ReferenceFacet', Label:'{@i18n>@GeneralInfoFacetLabel}', Target: '@UI.FieldGroup#GeneralInformation' },
//       ],
//       FieldGroup#GeneralData: {
//         Data: [
//           { Value: ID },
//           { Value: Material },
//           { Value: MaterialDesc },
//           { Value: CreatedOn },
//           { Value: Revision }
//         ]
//       },
//       FieldGroup#GeneralInformation: {
//         Data: [
//           { Value: ID },
//           { Value: Material },
//           { Value: MaterialDesc },
//           { Value: CreatedOn },
//           { Value: Revision }
//         ]
//       },
//     }
//   ){};


//   annotate ServiceUI.Design with {
//     ID                            @title: 'ID';
//     Serviceability                @title: 'Serviceability';
//     Length                        @title: 'Length';
//     Breadth                       @title: 'Breadth';
//     Height                        @title: 'Height';
//     Weight                        @title: 'Weight';
//     WeightUnit                    @title: 'Weight Unit';
//     BasicMaterial                 @title: 'Basic Material';
//     MaterialCode                  @title: 'Material Code';
//     InterchangeableParts          @title: 'Interchangeable Parts';
//     DimensionUnit                 @title: 'Dimension Unit';
//     LastServiceableDate           @title: 'Last Serviceable Date';
//     MaterialClassification        @title: 'Material Classification';
//     PartModelCode                 @title: 'Part Model Code';
//     CurrentTaggingDomestic        @title: 'Current Tagging Domestic';
//     CurrentTaggingInternational   @title: 'Current Tagging International';
//     DateNonCurrentDomestic        @title: 'Date Non-Current Domestic';
//     DateNonCurrentInternational   @title: 'Date Non-Current International';
//     Owner                         @title: 'Owner';
//     PartDeletionDomestic          @title: 'Part Deletion Domestic';
//     MaterialGrade                 @title: 'Material Grade';
//     MaterialQuality               @title: 'Material Quality';
//     HazardousMaterialCompliance   @title: 'Hazardous Material Compliance';
//     CAD                           @title: 'CAD';
//     PartIntroductionDateIntoModel @title: 'Part Introduction Date Into Model';
//     Division                      @title: 'Division';
//     phaseOut                      @title: 'Phase Out';
//   }
// }


namespace app.service;

using { app.db as db } from '../db/schema';

annotate db.MasterData with @(
    UI: {
        PresentationVariant: {
         
            GroupBy: [ Material ]
        },
        SelectionFields: [
            Material,
            MaterialDesc
        ],
        LineItem: [
            { Value: Material, Label: 'Material' },
            { Value: MaterialDesc, Label: 'Material Description' },
            { Value: CreatedOn, Label: 'Created On' },
            { Value: Revision, Label: 'Revision' }
        ]
    }
);

annotate db.Design with @(
    UI: {
        PresentationVariant: {
           
            GroupBy: [ Serviceability ]
        },
        SelectionFields: [
            Serviceability,
            MaterialCode
        ],
        LineItem: [
            { Value: Serviceability, Label: 'Serviceability' },
            { Value: Length, Label: 'Length' },
            { Value: Breadth, Label: 'Breadth' },
            { Value: Height, Label: 'Height' },
            { Value: Weight, Label: 'Weight' },
            { Value: BasicMaterial, Label: 'Basic Material' },
            { Value: MaterialCode, Label: 'Material Code' },
            { Value: MaterialClassification, Label: 'Material Classification' },
            { Value: Owner, Label: 'Owner' },
            { Value: Division, Label: 'Division' }
        ]
    }
);

annotate db.MasterData with @(
    UI: {
        HeaderInfo: {
            TypeName: 'Master Data',
            TypeNamePlural: 'Master Data',
            Title: { Value: MaterialDesc },
            Description: { Value: Material }
        },
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'General Information',
                Target: '@UI.FieldGroup#GeneralInformation'
            }
        ],
        FieldGroup#GeneralInformation: {
            Data: [
                { Value: Material, Label: 'Material' },
                { Value: MaterialDesc, Label: 'Material Description' },
                { Value: CreatedOn, Label: 'Created On' },
                { Value: Revision, Label: 'Revision' }
            ]
        }
    }
);


// annotate db.Design with @(
//     UI: {
//         HeaderInfo: {
//             TypeName: 'Design',
//             TypeNamePlural: 'Designs',
//             Title: { Value: MaterialCode },
//             Description: { Value: Serviceability }
//         },
//         Facets: [
//             {
//                 $Type: 'UI.ReferenceFacet',
//                 Label: 'General Information',
//                 Target: '@UI.FieldGroup#GeneralInformation'
//             },
//             {
//                 $Type: 'UI.ReferenceFacet',
//                 Label: 'Dimensions',
//                 Target: '@UI.FieldGroup#Dimensions'
//             },
//             {
//                 $Type: 'UI.ReferenceFacet',
//                 Label: 'Material Details',
//                 Target: '@UI.FieldGroup#MaterialDetails'
//             }
//         ],
//         FieldGroup#GeneralInformation: {
            // Data: [
            //     { Value: Serviceability, Label: 'Serviceability' },
            //     { Value: BasicMaterial, Label: 'Basic Material' },
            //     { Value: MaterialCode, Label: 'Material Code' },
            //     { Value: MaterialClassification, Label: 'Material Classification' },
            //     { Value: Owner, Label: 'Owner' },
            //     { Value: Division, Label: 'Division' }
            // ]
//         },
//         FieldGroup#Dimensions: {
            // Data: [
            //     { Value: Length, Label: 'Length' },
            //     { Value: Breadth, Label: 'Breadth' },
            //     { Value: Height, Label: 'Height' },
            //     { Value: Weight, Label: 'Weight' },
            //     { Value: WeightUnit, Label: 'Weight Unit' },
            //     { Value: DimensionUnit, Label: 'Dimension Unit' }
            // ]
//         },
//         FieldGroup#MaterialDetails: {
            // Data: [
            //     { Value: CurrentTaggingDomestic, Label: 'Current Tagging Domestic' },
            //     { Value: CurrentTaggingInternational, Label: 'Current Tagging International' },
            //     { Value: HazardousMaterialCompliance, Label: 'Hazardous Material Compliance' },
            //     { Value: CAD, Label: 'CAD' },
            //     { Value: PartIntroductionDateIntoModel, Label: 'Part Introduction Date Into Model' },
            //     { Value: phaseOut, Label: 'Phase Out' }
            // ]
//         }
//     }
// );
