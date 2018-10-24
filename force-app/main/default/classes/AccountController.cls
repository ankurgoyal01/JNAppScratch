public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> findAll() {
	return [select name,location__latitude__s,location__longitude__s,id from account where location__latitude__s != null and location__longitude__s != null limit 50];
    }
}
