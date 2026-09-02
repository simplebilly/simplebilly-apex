@isTest
private class OASServiceAssignmentCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = serviceAssignmentCreate1;
        OASServiceAssignmentCreate serviceAssignmentCreate3 = new OASServiceAssignmentCreate();
        OASServiceAssignmentCreate serviceAssignmentCreate4 = serviceAssignmentCreate3;

        System.assert(serviceAssignmentCreate1.equals(serviceAssignmentCreate2));
        System.assert(serviceAssignmentCreate2.equals(serviceAssignmentCreate1));
        System.assert(serviceAssignmentCreate1.equals(serviceAssignmentCreate1));
        System.assert(serviceAssignmentCreate3.equals(serviceAssignmentCreate4));
        System.assert(serviceAssignmentCreate4.equals(serviceAssignmentCreate3));
        System.assert(serviceAssignmentCreate3.equals(serviceAssignmentCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate3 = new OASServiceAssignmentCreate();
        OASServiceAssignmentCreate serviceAssignmentCreate4 = new OASServiceAssignmentCreate();

        System.assert(serviceAssignmentCreate1.equals(serviceAssignmentCreate2));
        System.assert(serviceAssignmentCreate2.equals(serviceAssignmentCreate1));
        System.assert(serviceAssignmentCreate3.equals(serviceAssignmentCreate4));
        System.assert(serviceAssignmentCreate4.equals(serviceAssignmentCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = new OASServiceAssignmentCreate();

        System.assertEquals(false, serviceAssignmentCreate1.equals('foo'));
        System.assertEquals(false, serviceAssignmentCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = new OASServiceAssignmentCreate();
        OASServiceAssignmentCreate serviceAssignmentCreate3;

        System.assertEquals(false, serviceAssignmentCreate1.equals(serviceAssignmentCreate3));
        System.assertEquals(false, serviceAssignmentCreate2.equals(serviceAssignmentCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = new OASServiceAssignmentCreate();

        System.assertEquals(serviceAssignmentCreate1.hashCode(), serviceAssignmentCreate1.hashCode());
        System.assertEquals(serviceAssignmentCreate2.hashCode(), serviceAssignmentCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceAssignmentCreate serviceAssignmentCreate1 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate2 = OASServiceAssignmentCreate.getExample();
        OASServiceAssignmentCreate serviceAssignmentCreate3 = new OASServiceAssignmentCreate();
        OASServiceAssignmentCreate serviceAssignmentCreate4 = new OASServiceAssignmentCreate();

        System.assert(serviceAssignmentCreate1.equals(serviceAssignmentCreate2));
        System.assert(serviceAssignmentCreate3.equals(serviceAssignmentCreate4));
        System.assertEquals(serviceAssignmentCreate1.hashCode(), serviceAssignmentCreate2.hashCode());
        System.assertEquals(serviceAssignmentCreate3.hashCode(), serviceAssignmentCreate4.hashCode());
    }
}
