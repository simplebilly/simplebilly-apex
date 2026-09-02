@isTest
private class OASServiceJobCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = serviceJobCreate1;
        OASServiceJobCreate serviceJobCreate3 = new OASServiceJobCreate();
        OASServiceJobCreate serviceJobCreate4 = serviceJobCreate3;

        System.assert(serviceJobCreate1.equals(serviceJobCreate2));
        System.assert(serviceJobCreate2.equals(serviceJobCreate1));
        System.assert(serviceJobCreate1.equals(serviceJobCreate1));
        System.assert(serviceJobCreate3.equals(serviceJobCreate4));
        System.assert(serviceJobCreate4.equals(serviceJobCreate3));
        System.assert(serviceJobCreate3.equals(serviceJobCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate3 = new OASServiceJobCreate();
        OASServiceJobCreate serviceJobCreate4 = new OASServiceJobCreate();

        System.assert(serviceJobCreate1.equals(serviceJobCreate2));
        System.assert(serviceJobCreate2.equals(serviceJobCreate1));
        System.assert(serviceJobCreate3.equals(serviceJobCreate4));
        System.assert(serviceJobCreate4.equals(serviceJobCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = new OASServiceJobCreate();

        System.assertEquals(false, serviceJobCreate1.equals('foo'));
        System.assertEquals(false, serviceJobCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = new OASServiceJobCreate();
        OASServiceJobCreate serviceJobCreate3;

        System.assertEquals(false, serviceJobCreate1.equals(serviceJobCreate3));
        System.assertEquals(false, serviceJobCreate2.equals(serviceJobCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = new OASServiceJobCreate();

        System.assertEquals(serviceJobCreate1.hashCode(), serviceJobCreate1.hashCode());
        System.assertEquals(serviceJobCreate2.hashCode(), serviceJobCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceJobCreate serviceJobCreate1 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate2 = OASServiceJobCreate.getExample();
        OASServiceJobCreate serviceJobCreate3 = new OASServiceJobCreate();
        OASServiceJobCreate serviceJobCreate4 = new OASServiceJobCreate();

        System.assert(serviceJobCreate1.equals(serviceJobCreate2));
        System.assert(serviceJobCreate3.equals(serviceJobCreate4));
        System.assertEquals(serviceJobCreate1.hashCode(), serviceJobCreate2.hashCode());
        System.assertEquals(serviceJobCreate3.hashCode(), serviceJobCreate4.hashCode());
    }
}
