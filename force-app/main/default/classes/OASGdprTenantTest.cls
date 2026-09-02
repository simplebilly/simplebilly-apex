@isTest
private class OASGdprTenantTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = gdprTenant1;
        OASGdprTenant gdprTenant3 = new OASGdprTenant();
        OASGdprTenant gdprTenant4 = gdprTenant3;

        System.assert(gdprTenant1.equals(gdprTenant2));
        System.assert(gdprTenant2.equals(gdprTenant1));
        System.assert(gdprTenant1.equals(gdprTenant1));
        System.assert(gdprTenant3.equals(gdprTenant4));
        System.assert(gdprTenant4.equals(gdprTenant3));
        System.assert(gdprTenant3.equals(gdprTenant3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant3 = new OASGdprTenant();
        OASGdprTenant gdprTenant4 = new OASGdprTenant();

        System.assert(gdprTenant1.equals(gdprTenant2));
        System.assert(gdprTenant2.equals(gdprTenant1));
        System.assert(gdprTenant3.equals(gdprTenant4));
        System.assert(gdprTenant4.equals(gdprTenant3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = new OASGdprTenant();

        System.assertEquals(false, gdprTenant1.equals('foo'));
        System.assertEquals(false, gdprTenant2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = new OASGdprTenant();
        OASGdprTenant gdprTenant3;

        System.assertEquals(false, gdprTenant1.equals(gdprTenant3));
        System.assertEquals(false, gdprTenant2.equals(gdprTenant3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = new OASGdprTenant();

        System.assertEquals(gdprTenant1.hashCode(), gdprTenant1.hashCode());
        System.assertEquals(gdprTenant2.hashCode(), gdprTenant2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprTenant gdprTenant1 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant2 = OASGdprTenant.getExample();
        OASGdprTenant gdprTenant3 = new OASGdprTenant();
        OASGdprTenant gdprTenant4 = new OASGdprTenant();

        System.assert(gdprTenant1.equals(gdprTenant2));
        System.assert(gdprTenant3.equals(gdprTenant4));
        System.assertEquals(gdprTenant1.hashCode(), gdprTenant2.hashCode());
        System.assertEquals(gdprTenant3.hashCode(), gdprTenant4.hashCode());
    }
}
