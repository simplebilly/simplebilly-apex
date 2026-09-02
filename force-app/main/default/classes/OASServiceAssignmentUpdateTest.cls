@isTest
private class OASServiceAssignmentUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = serviceAssignmentUpdate1;
        OASServiceAssignmentUpdate serviceAssignmentUpdate3 = new OASServiceAssignmentUpdate();
        OASServiceAssignmentUpdate serviceAssignmentUpdate4 = serviceAssignmentUpdate3;

        System.assert(serviceAssignmentUpdate1.equals(serviceAssignmentUpdate2));
        System.assert(serviceAssignmentUpdate2.equals(serviceAssignmentUpdate1));
        System.assert(serviceAssignmentUpdate1.equals(serviceAssignmentUpdate1));
        System.assert(serviceAssignmentUpdate3.equals(serviceAssignmentUpdate4));
        System.assert(serviceAssignmentUpdate4.equals(serviceAssignmentUpdate3));
        System.assert(serviceAssignmentUpdate3.equals(serviceAssignmentUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate3 = new OASServiceAssignmentUpdate();
        OASServiceAssignmentUpdate serviceAssignmentUpdate4 = new OASServiceAssignmentUpdate();

        System.assert(serviceAssignmentUpdate1.equals(serviceAssignmentUpdate2));
        System.assert(serviceAssignmentUpdate2.equals(serviceAssignmentUpdate1));
        System.assert(serviceAssignmentUpdate3.equals(serviceAssignmentUpdate4));
        System.assert(serviceAssignmentUpdate4.equals(serviceAssignmentUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = new OASServiceAssignmentUpdate();

        System.assertEquals(false, serviceAssignmentUpdate1.equals('foo'));
        System.assertEquals(false, serviceAssignmentUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = new OASServiceAssignmentUpdate();
        OASServiceAssignmentUpdate serviceAssignmentUpdate3;

        System.assertEquals(false, serviceAssignmentUpdate1.equals(serviceAssignmentUpdate3));
        System.assertEquals(false, serviceAssignmentUpdate2.equals(serviceAssignmentUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = new OASServiceAssignmentUpdate();

        System.assertEquals(serviceAssignmentUpdate1.hashCode(), serviceAssignmentUpdate1.hashCode());
        System.assertEquals(serviceAssignmentUpdate2.hashCode(), serviceAssignmentUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceAssignmentUpdate serviceAssignmentUpdate1 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate2 = OASServiceAssignmentUpdate.getExample();
        OASServiceAssignmentUpdate serviceAssignmentUpdate3 = new OASServiceAssignmentUpdate();
        OASServiceAssignmentUpdate serviceAssignmentUpdate4 = new OASServiceAssignmentUpdate();

        System.assert(serviceAssignmentUpdate1.equals(serviceAssignmentUpdate2));
        System.assert(serviceAssignmentUpdate3.equals(serviceAssignmentUpdate4));
        System.assertEquals(serviceAssignmentUpdate1.hashCode(), serviceAssignmentUpdate2.hashCode());
        System.assertEquals(serviceAssignmentUpdate3.hashCode(), serviceAssignmentUpdate4.hashCode());
    }
}
