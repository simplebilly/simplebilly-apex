@isTest
private class OASTaxRateCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = taxRateCreate1;
        OASTaxRateCreate taxRateCreate3 = new OASTaxRateCreate();
        OASTaxRateCreate taxRateCreate4 = taxRateCreate3;

        System.assert(taxRateCreate1.equals(taxRateCreate2));
        System.assert(taxRateCreate2.equals(taxRateCreate1));
        System.assert(taxRateCreate1.equals(taxRateCreate1));
        System.assert(taxRateCreate3.equals(taxRateCreate4));
        System.assert(taxRateCreate4.equals(taxRateCreate3));
        System.assert(taxRateCreate3.equals(taxRateCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate3 = new OASTaxRateCreate();
        OASTaxRateCreate taxRateCreate4 = new OASTaxRateCreate();

        System.assert(taxRateCreate1.equals(taxRateCreate2));
        System.assert(taxRateCreate2.equals(taxRateCreate1));
        System.assert(taxRateCreate3.equals(taxRateCreate4));
        System.assert(taxRateCreate4.equals(taxRateCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = new OASTaxRateCreate();

        System.assertEquals(false, taxRateCreate1.equals('foo'));
        System.assertEquals(false, taxRateCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = new OASTaxRateCreate();
        OASTaxRateCreate taxRateCreate3;

        System.assertEquals(false, taxRateCreate1.equals(taxRateCreate3));
        System.assertEquals(false, taxRateCreate2.equals(taxRateCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = new OASTaxRateCreate();

        System.assertEquals(taxRateCreate1.hashCode(), taxRateCreate1.hashCode());
        System.assertEquals(taxRateCreate2.hashCode(), taxRateCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTaxRateCreate taxRateCreate1 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate2 = OASTaxRateCreate.getExample();
        OASTaxRateCreate taxRateCreate3 = new OASTaxRateCreate();
        OASTaxRateCreate taxRateCreate4 = new OASTaxRateCreate();

        System.assert(taxRateCreate1.equals(taxRateCreate2));
        System.assert(taxRateCreate3.equals(taxRateCreate4));
        System.assertEquals(taxRateCreate1.hashCode(), taxRateCreate2.hashCode());
        System.assertEquals(taxRateCreate3.hashCode(), taxRateCreate4.hashCode());
    }
}
