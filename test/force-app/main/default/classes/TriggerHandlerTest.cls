@isTest
public with sharing class TriggerHandlerTest {
    @isTest
    public static void UpdateDescriptionTest(){

            List<Opportunity> listOpportu = new List<Opportunity>();
            for(Integer x = 1; x <= 5; x++){
                Opportunity opp = new Opportunity();
                opp.Name = 'Test';
                opp.StageName = 'Closed Lost';
                opp.Type = 'Existing Customer - Upgrade';
                opp.Amount = 120000;

                listOpportu.add(opp);

        }
        //Add data
        Test.startTest();
        insert listOpportu;
        Test.stopTest();

        //Retrieve data
        List<Opportunity> myList = [SELECT Id, StageName from Opportunity WHERE iD =: listOpportu[0].id];

        //Check Data
        System.assertEquals('Closed Lost', myList[0].StageName);
    }
}