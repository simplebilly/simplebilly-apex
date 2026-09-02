@isTest
private class OASServiceJobUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = serviceJobUpdate1;
        OASServiceJobUpdate serviceJobUpdate3 = new OASServiceJobUpdate();
        OASServiceJobUpdate serviceJobUpdate4 = serviceJobUpdate3;

        System.assert(serviceJobUpdate1.equals(serviceJobUpdate2));
        System.assert(serviceJobUpdate2.equals(serviceJobUpdate1));
        System.assert(serviceJobUpdate1.equals(serviceJobUpdate1));
        System.assert(serviceJobUpdate3.equals(serviceJobUpdate4));
        System.assert(serviceJobUpdate4.equals(serviceJobUpdate3));
        System.assert(serviceJobUpdate3.equals(serviceJobUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate3 = new OASServiceJobUpdate();
        OASServiceJobUpdate serviceJobUpdate4 = new OASServiceJobUpdate();

        System.assert(serviceJobUpdate1.equals(serviceJobUpdate2));
        System.assert(serviceJobUpdate2.equals(serviceJobUpdate1));
        System.assert(serviceJobUpdate3.equals(serviceJobUpdate4));
        System.assert(serviceJobUpdate4.equals(serviceJobUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = new OASServiceJobUpdate();

        System.assertEquals(false, serviceJobUpdate1.equals('foo'));
        System.assertEquals(false, serviceJobUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = new OASServiceJobUpdate();
        OASServiceJobUpdate serviceJobUpdate3;

        System.assertEquals(false, serviceJobUpdate1.equals(serviceJobUpdate3));
        System.assertEquals(false, serviceJobUpdate2.equals(serviceJobUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = new OASServiceJobUpdate();

        System.assertEquals(serviceJobUpdate1.hashCode(), serviceJobUpdate1.hashCode());
        System.assertEquals(serviceJobUpdate2.hashCode(), serviceJobUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceJobUpdate serviceJobUpdate1 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate2 = OASServiceJobUpdate.getExample();
        OASServiceJobUpdate serviceJobUpdate3 = new OASServiceJobUpdate();
        OASServiceJobUpdate serviceJobUpdate4 = new OASServiceJobUpdate();

        System.assert(serviceJobUpdate1.equals(serviceJobUpdate2));
        System.assert(serviceJobUpdate3.equals(serviceJobUpdate4));
        System.assertEquals(serviceJobUpdate1.hashCode(), serviceJobUpdate2.hashCode());
        System.assertEquals(serviceJobUpdate3.hashCode(), serviceJobUpdate4.hashCode());
    }
}
