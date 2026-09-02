@isTest
private class OASShareholderUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = shareholderUpdate1;
        OASShareholderUpdate shareholderUpdate3 = new OASShareholderUpdate();
        OASShareholderUpdate shareholderUpdate4 = shareholderUpdate3;

        System.assert(shareholderUpdate1.equals(shareholderUpdate2));
        System.assert(shareholderUpdate2.equals(shareholderUpdate1));
        System.assert(shareholderUpdate1.equals(shareholderUpdate1));
        System.assert(shareholderUpdate3.equals(shareholderUpdate4));
        System.assert(shareholderUpdate4.equals(shareholderUpdate3));
        System.assert(shareholderUpdate3.equals(shareholderUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate3 = new OASShareholderUpdate();
        OASShareholderUpdate shareholderUpdate4 = new OASShareholderUpdate();

        System.assert(shareholderUpdate1.equals(shareholderUpdate2));
        System.assert(shareholderUpdate2.equals(shareholderUpdate1));
        System.assert(shareholderUpdate3.equals(shareholderUpdate4));
        System.assert(shareholderUpdate4.equals(shareholderUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = new OASShareholderUpdate();

        System.assertEquals(false, shareholderUpdate1.equals('foo'));
        System.assertEquals(false, shareholderUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = new OASShareholderUpdate();
        OASShareholderUpdate shareholderUpdate3;

        System.assertEquals(false, shareholderUpdate1.equals(shareholderUpdate3));
        System.assertEquals(false, shareholderUpdate2.equals(shareholderUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = new OASShareholderUpdate();

        System.assertEquals(shareholderUpdate1.hashCode(), shareholderUpdate1.hashCode());
        System.assertEquals(shareholderUpdate2.hashCode(), shareholderUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShareholderUpdate shareholderUpdate1 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate2 = OASShareholderUpdate.getExample();
        OASShareholderUpdate shareholderUpdate3 = new OASShareholderUpdate();
        OASShareholderUpdate shareholderUpdate4 = new OASShareholderUpdate();

        System.assert(shareholderUpdate1.equals(shareholderUpdate2));
        System.assert(shareholderUpdate3.equals(shareholderUpdate4));
        System.assertEquals(shareholderUpdate1.hashCode(), shareholderUpdate2.hashCode());
        System.assertEquals(shareholderUpdate3.hashCode(), shareholderUpdate4.hashCode());
    }
}
