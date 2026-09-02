@isTest
private class OASEmployeeCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = employeeCreate1;
        OASEmployeeCreate employeeCreate3 = new OASEmployeeCreate();
        OASEmployeeCreate employeeCreate4 = employeeCreate3;

        System.assert(employeeCreate1.equals(employeeCreate2));
        System.assert(employeeCreate2.equals(employeeCreate1));
        System.assert(employeeCreate1.equals(employeeCreate1));
        System.assert(employeeCreate3.equals(employeeCreate4));
        System.assert(employeeCreate4.equals(employeeCreate3));
        System.assert(employeeCreate3.equals(employeeCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate3 = new OASEmployeeCreate();
        OASEmployeeCreate employeeCreate4 = new OASEmployeeCreate();

        System.assert(employeeCreate1.equals(employeeCreate2));
        System.assert(employeeCreate2.equals(employeeCreate1));
        System.assert(employeeCreate3.equals(employeeCreate4));
        System.assert(employeeCreate4.equals(employeeCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = new OASEmployeeCreate();

        System.assertEquals(false, employeeCreate1.equals('foo'));
        System.assertEquals(false, employeeCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = new OASEmployeeCreate();
        OASEmployeeCreate employeeCreate3;

        System.assertEquals(false, employeeCreate1.equals(employeeCreate3));
        System.assertEquals(false, employeeCreate2.equals(employeeCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = new OASEmployeeCreate();

        System.assertEquals(employeeCreate1.hashCode(), employeeCreate1.hashCode());
        System.assertEquals(employeeCreate2.hashCode(), employeeCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmployeeCreate employeeCreate1 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate2 = OASEmployeeCreate.getExample();
        OASEmployeeCreate employeeCreate3 = new OASEmployeeCreate();
        OASEmployeeCreate employeeCreate4 = new OASEmployeeCreate();

        System.assert(employeeCreate1.equals(employeeCreate2));
        System.assert(employeeCreate3.equals(employeeCreate4));
        System.assertEquals(employeeCreate1.hashCode(), employeeCreate2.hashCode());
        System.assertEquals(employeeCreate3.hashCode(), employeeCreate4.hashCode());
    }
}
