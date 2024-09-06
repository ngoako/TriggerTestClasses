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
                opp.CloseDate = Date.today();

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

    @IsTest
    public static void CreateAccountTest(){
        List<Opportunity> listOpportu = new List<Opportunity>();
        for(Integer x = 1; x <= 5; x++){
            Opportunity opp = new Opportunity();
            opp.Name = 'Test';
            opp.StageName = 'Closed Won';
            opp.Type = 'New Customer';
            opp.Amount = 120000;
            opp.CloseDate = Date.today();

            listOpportu.add(opp);
        }

        Test.startTest();
            insert listOpportu;
        Test.stopTest();

        //Retrieve the created Opportunity
       List<Opportunity> myList = [SELECT Id, Name, Type FROM Opportunity WHERE Id =: listOpportu[0].Id];

       //Compare the data
       System.assertEquals('New Customer', myList[0].Type);

    }
}