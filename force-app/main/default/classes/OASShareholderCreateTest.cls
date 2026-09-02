@isTest
private class OASShareholderCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = shareholderCreate1;
        OASShareholderCreate shareholderCreate3 = new OASShareholderCreate();
        OASShareholderCreate shareholderCreate4 = shareholderCreate3;

        System.assert(shareholderCreate1.equals(shareholderCreate2));
        System.assert(shareholderCreate2.equals(shareholderCreate1));
        System.assert(shareholderCreate1.equals(shareholderCreate1));
        System.assert(shareholderCreate3.equals(shareholderCreate4));
        System.assert(shareholderCreate4.equals(shareholderCreate3));
        System.assert(shareholderCreate3.equals(shareholderCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate3 = new OASShareholderCreate();
        OASShareholderCreate shareholderCreate4 = new OASShareholderCreate();

        System.assert(shareholderCreate1.equals(shareholderCreate2));
        System.assert(shareholderCreate2.equals(shareholderCreate1));
        System.assert(shareholderCreate3.equals(shareholderCreate4));
        System.assert(shareholderCreate4.equals(shareholderCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = new OASShareholderCreate();

        System.assertEquals(false, shareholderCreate1.equals('foo'));
        System.assertEquals(false, shareholderCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = new OASShareholderCreate();
        OASShareholderCreate shareholderCreate3;

        System.assertEquals(false, shareholderCreate1.equals(shareholderCreate3));
        System.assertEquals(false, shareholderCreate2.equals(shareholderCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = new OASShareholderCreate();

        System.assertEquals(shareholderCreate1.hashCode(), shareholderCreate1.hashCode());
        System.assertEquals(shareholderCreate2.hashCode(), shareholderCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShareholderCreate shareholderCreate1 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate2 = OASShareholderCreate.getExample();
        OASShareholderCreate shareholderCreate3 = new OASShareholderCreate();
        OASShareholderCreate shareholderCreate4 = new OASShareholderCreate();

        System.assert(shareholderCreate1.equals(shareholderCreate2));
        System.assert(shareholderCreate3.equals(shareholderCreate4));
        System.assertEquals(shareholderCreate1.hashCode(), shareholderCreate2.hashCode());
        System.assertEquals(shareholderCreate3.hashCode(), shareholderCreate4.hashCode());
    }
}
