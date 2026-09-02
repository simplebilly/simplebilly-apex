@isTest
private class OASServiceAssignmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = serviceAssignment1;
        OASServiceAssignment serviceAssignment3 = new OASServiceAssignment();
        OASServiceAssignment serviceAssignment4 = serviceAssignment3;

        System.assert(serviceAssignment1.equals(serviceAssignment2));
        System.assert(serviceAssignment2.equals(serviceAssignment1));
        System.assert(serviceAssignment1.equals(serviceAssignment1));
        System.assert(serviceAssignment3.equals(serviceAssignment4));
        System.assert(serviceAssignment4.equals(serviceAssignment3));
        System.assert(serviceAssignment3.equals(serviceAssignment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment3 = new OASServiceAssignment();
        OASServiceAssignment serviceAssignment4 = new OASServiceAssignment();

        System.assert(serviceAssignment1.equals(serviceAssignment2));
        System.assert(serviceAssignment2.equals(serviceAssignment1));
        System.assert(serviceAssignment3.equals(serviceAssignment4));
        System.assert(serviceAssignment4.equals(serviceAssignment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = new OASServiceAssignment();

        System.assertEquals(false, serviceAssignment1.equals('foo'));
        System.assertEquals(false, serviceAssignment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = new OASServiceAssignment();
        OASServiceAssignment serviceAssignment3;

        System.assertEquals(false, serviceAssignment1.equals(serviceAssignment3));
        System.assertEquals(false, serviceAssignment2.equals(serviceAssignment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = new OASServiceAssignment();

        System.assertEquals(serviceAssignment1.hashCode(), serviceAssignment1.hashCode());
        System.assertEquals(serviceAssignment2.hashCode(), serviceAssignment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceAssignment serviceAssignment1 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment2 = OASServiceAssignment.getExample();
        OASServiceAssignment serviceAssignment3 = new OASServiceAssignment();
        OASServiceAssignment serviceAssignment4 = new OASServiceAssignment();

        System.assert(serviceAssignment1.equals(serviceAssignment2));
        System.assert(serviceAssignment3.equals(serviceAssignment4));
        System.assertEquals(serviceAssignment1.hashCode(), serviceAssignment2.hashCode());
        System.assertEquals(serviceAssignment3.hashCode(), serviceAssignment4.hashCode());
    }
}
