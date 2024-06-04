namespace app.db;

using {  managed } from '@sap/cds/common';

entity MasterData : managed {
    key ID : UUID;
    Material    : String;
    MaterialDesc : String;
    CreatedOn : Date;
    Revision: String
};

entity Design : managed {
    key ID : UUID;
    Serviceability : String;
    Length: Integer;
    Breadth: Integer;
    Height: Integer;
    Weight : Integer;
    WeightUnit : Integer;
    BasicMaterial : String;
    MaterialCode : String;
    InterchangeableParts: String;
    DimensionUnit: Integer;
    LastServiceableDate : Date;
    MaterialClassification: String;
    PartModelCode : String;
    CurrentTaggingDomestic : String;
    CurrentTaggingInternational: String;
    DateNonCurrentDomestic: Date;
    DateNonCurrentInternational: Date;
    Owner: String;
    PartDeletionDomestic : Date;
    MaterialGrade : String;
    MaterialQuality : String;
    HazardousMaterialCompliance : String;
    CAD: Integer;
    PartIntroductionDateIntoModel : Date;
    Division: String;
    phaseOut: Date;
}