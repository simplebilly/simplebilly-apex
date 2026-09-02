@isTest
private class OASEmployeeUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = employeeUpdate1;
        OASEmployeeUpdate employeeUpdate3 = new OASEmployeeUpdate();
        OASEmployeeUpdate employeeUpdate4 = employeeUpdate3;

        System.assert(employeeUpdate1.equals(employeeUpdate2));
        System.assert(employeeUpdate2.equals(employeeUpdate1));
        System.assert(employeeUpdate1.equals(employeeUpdate1));
        System.assert(employeeUpdate3.equals(employeeUpdate4));
        System.assert(employeeUpdate4.equals(employeeUpdate3));
        System.assert(employeeUpdate3.equals(employeeUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate3 = new OASEmployeeUpdate();
        OASEmployeeUpdate employeeUpdate4 = new OASEmployeeUpdate();

        System.assert(employeeUpdate1.equals(employeeUpdate2));
        System.assert(employeeUpdate2.equals(employeeUpdate1));
        System.assert(employeeUpdate3.equals(employeeUpdate4));
        System.assert(employeeUpdate4.equals(employeeUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = new OASEmployeeUpdate();

        System.assertEquals(false, employeeUpdate1.equals('foo'));
        System.assertEquals(false, employeeUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = new OASEmployeeUpdate();
        OASEmployeeUpdate employeeUpdate3;

        System.assertEquals(false, employeeUpdate1.equals(employeeUpdate3));
        System.assertEquals(false, employeeUpdate2.equals(employeeUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = new OASEmployeeUpdate();

        System.assertEquals(employeeUpdate1.hashCode(), employeeUpdate1.hashCode());
        System.assertEquals(employeeUpdate2.hashCode(), employeeUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmployeeUpdate employeeUpdate1 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate2 = OASEmployeeUpdate.getExample();
        OASEmployeeUpdate employeeUpdate3 = new OASEmployeeUpdate();
        OASEmployeeUpdate employeeUpdate4 = new OASEmployeeUpdate();

        System.assert(employeeUpdate1.equals(employeeUpdate2));
        System.assert(employeeUpdate3.equals(employeeUpdate4));
        System.assertEquals(employeeUpdate1.hashCode(), employeeUpdate2.hashCode());
        System.assertEquals(employeeUpdate3.hashCode(), employeeUpdate4.hashCode());
    }
}
