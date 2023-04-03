public with sharing class AccountList {

    public AccountList() {
        //Empty Constructor
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> AccountList(){
        //Similair way of creating an account list but the non commmented version is more effieicnt resource wise.
        // List<Account> accountList = [SELECT Id, AccountName, Email FROM Account];
        // return accountList;
        return [SELECT Id, AccountName, Email FROM Account];
    }

}