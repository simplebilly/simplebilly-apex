@isTest
private class OASComplianceTrainingCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = complianceTrainingCreate1;
        OASComplianceTrainingCreate complianceTrainingCreate3 = new OASComplianceTrainingCreate();
        OASComplianceTrainingCreate complianceTrainingCreate4 = complianceTrainingCreate3;

        System.assert(complianceTrainingCreate1.equals(complianceTrainingCreate2));
        System.assert(complianceTrainingCreate2.equals(complianceTrainingCreate1));
        System.assert(complianceTrainingCreate1.equals(complianceTrainingCreate1));
        System.assert(complianceTrainingCreate3.equals(complianceTrainingCreate4));
        System.assert(complianceTrainingCreate4.equals(complianceTrainingCreate3));
        System.assert(complianceTrainingCreate3.equals(complianceTrainingCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate3 = new OASComplianceTrainingCreate();
        OASComplianceTrainingCreate complianceTrainingCreate4 = new OASComplianceTrainingCreate();

        System.assert(complianceTrainingCreate1.equals(complianceTrainingCreate2));
        System.assert(complianceTrainingCreate2.equals(complianceTrainingCreate1));
        System.assert(complianceTrainingCreate3.equals(complianceTrainingCreate4));
        System.assert(complianceTrainingCreate4.equals(complianceTrainingCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = new OASComplianceTrainingCreate();

        System.assertEquals(false, complianceTrainingCreate1.equals('foo'));
        System.assertEquals(false, complianceTrainingCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = new OASComplianceTrainingCreate();
        OASComplianceTrainingCreate complianceTrainingCreate3;

        System.assertEquals(false, complianceTrainingCreate1.equals(complianceTrainingCreate3));
        System.assertEquals(false, complianceTrainingCreate2.equals(complianceTrainingCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = new OASComplianceTrainingCreate();

        System.assertEquals(complianceTrainingCreate1.hashCode(), complianceTrainingCreate1.hashCode());
        System.assertEquals(complianceTrainingCreate2.hashCode(), complianceTrainingCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComplianceTrainingCreate complianceTrainingCreate1 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate2 = OASComplianceTrainingCreate.getExample();
        OASComplianceTrainingCreate complianceTrainingCreate3 = new OASComplianceTrainingCreate();
        OASComplianceTrainingCreate complianceTrainingCreate4 = new OASComplianceTrainingCreate();

        System.assert(complianceTrainingCreate1.equals(complianceTrainingCreate2));
        System.assert(complianceTrainingCreate3.equals(complianceTrainingCreate4));
        System.assertEquals(complianceTrainingCreate1.hashCode(), complianceTrainingCreate2.hashCode());
        System.assertEquals(complianceTrainingCreate3.hashCode(), complianceTrainingCreate4.hashCode());
    }
}
