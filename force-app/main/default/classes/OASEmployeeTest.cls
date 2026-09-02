@isTest
private class OASEmployeeTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = employee1;
        OASEmployee employee3 = new OASEmployee();
        OASEmployee employee4 = employee3;

        System.assert(employee1.equals(employee2));
        System.assert(employee2.equals(employee1));
        System.assert(employee1.equals(employee1));
        System.assert(employee3.equals(employee4));
        System.assert(employee4.equals(employee3));
        System.assert(employee3.equals(employee3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = OASEmployee.getExample();
        OASEmployee employee3 = new OASEmployee();
        OASEmployee employee4 = new OASEmployee();

        System.assert(employee1.equals(employee2));
        System.assert(employee2.equals(employee1));
        System.assert(employee3.equals(employee4));
        System.assert(employee4.equals(employee3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = new OASEmployee();

        System.assertEquals(false, employee1.equals('foo'));
        System.assertEquals(false, employee2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = new OASEmployee();
        OASEmployee employee3;

        System.assertEquals(false, employee1.equals(employee3));
        System.assertEquals(false, employee2.equals(employee3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = new OASEmployee();

        System.assertEquals(employee1.hashCode(), employee1.hashCode());
        System.assertEquals(employee2.hashCode(), employee2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmployee employee1 = OASEmployee.getExample();
        OASEmployee employee2 = OASEmployee.getExample();
        OASEmployee employee3 = new OASEmployee();
        OASEmployee employee4 = new OASEmployee();

        System.assert(employee1.equals(employee2));
        System.assert(employee3.equals(employee4));
        System.assertEquals(employee1.hashCode(), employee2.hashCode());
        System.assertEquals(employee3.hashCode(), employee4.hashCode());
    }
}
