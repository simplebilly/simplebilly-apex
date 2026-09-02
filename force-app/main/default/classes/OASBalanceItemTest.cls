@isTest
private class OASBalanceItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = balanceItem1;
        OASBalanceItem balanceItem3 = new OASBalanceItem();
        OASBalanceItem balanceItem4 = balanceItem3;

        System.assert(balanceItem1.equals(balanceItem2));
        System.assert(balanceItem2.equals(balanceItem1));
        System.assert(balanceItem1.equals(balanceItem1));
        System.assert(balanceItem3.equals(balanceItem4));
        System.assert(balanceItem4.equals(balanceItem3));
        System.assert(balanceItem3.equals(balanceItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem3 = new OASBalanceItem();
        OASBalanceItem balanceItem4 = new OASBalanceItem();

        System.assert(balanceItem1.equals(balanceItem2));
        System.assert(balanceItem2.equals(balanceItem1));
        System.assert(balanceItem3.equals(balanceItem4));
        System.assert(balanceItem4.equals(balanceItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = new OASBalanceItem();

        System.assertEquals(false, balanceItem1.equals('foo'));
        System.assertEquals(false, balanceItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = new OASBalanceItem();
        OASBalanceItem balanceItem3;

        System.assertEquals(false, balanceItem1.equals(balanceItem3));
        System.assertEquals(false, balanceItem2.equals(balanceItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = new OASBalanceItem();

        System.assertEquals(balanceItem1.hashCode(), balanceItem1.hashCode());
        System.assertEquals(balanceItem2.hashCode(), balanceItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBalanceItem balanceItem1 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem2 = OASBalanceItem.getExample();
        OASBalanceItem balanceItem3 = new OASBalanceItem();
        OASBalanceItem balanceItem4 = new OASBalanceItem();

        System.assert(balanceItem1.equals(balanceItem2));
        System.assert(balanceItem3.equals(balanceItem4));
        System.assertEquals(balanceItem1.hashCode(), balanceItem2.hashCode());
        System.assertEquals(balanceItem3.hashCode(), balanceItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBalanceItem balanceItem = new OASBalanceItem();
        Map<String, String> x-property-mappings = balanceItem.getx-property-mappings();
        System.assertEquals('accountName', x-property-mappings.get('account_name'));
    }
}
