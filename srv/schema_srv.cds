using { app.db } from '../db/schema';

service VihaanManagementService  {

    @odata.draft.enabled
    entity MasterData as projection on  db.MasterData;

    
    @odata.draft.enabled
    entity Design as projection on db.Design;
}
