@isTest
private class OASComplianceTrainingTest {
    @isTest
    private static void equalsSameInstance() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = complianceTraining1;
        OASComplianceTraining complianceTraining3 = new OASComplianceTraining();
        OASComplianceTraining complianceTraining4 = complianceTraining3;

        System.assert(complianceTraining1.equals(complianceTraining2));
        System.assert(complianceTraining2.equals(complianceTraining1));
        System.assert(complianceTraining1.equals(complianceTraining1));
        System.assert(complianceTraining3.equals(complianceTraining4));
        System.assert(complianceTraining4.equals(complianceTraining3));
        System.assert(complianceTraining3.equals(complianceTraining3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining3 = new OASComplianceTraining();
        OASComplianceTraining complianceTraining4 = new OASComplianceTraining();

        System.assert(complianceTraining1.equals(complianceTraining2));
        System.assert(complianceTraining2.equals(complianceTraining1));
        System.assert(complianceTraining3.equals(complianceTraining4));
        System.assert(complianceTraining4.equals(complianceTraining3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = new OASComplianceTraining();

        System.assertEquals(false, complianceTraining1.equals('foo'));
        System.assertEquals(false, complianceTraining2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = new OASComplianceTraining();
        OASComplianceTraining complianceTraining3;

        System.assertEquals(false, complianceTraining1.equals(complianceTraining3));
        System.assertEquals(false, complianceTraining2.equals(complianceTraining3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = new OASComplianceTraining();

        System.assertEquals(complianceTraining1.hashCode(), complianceTraining1.hashCode());
        System.assertEquals(complianceTraining2.hashCode(), complianceTraining2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComplianceTraining complianceTraining1 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining2 = OASComplianceTraining.getExample();
        OASComplianceTraining complianceTraining3 = new OASComplianceTraining();
        OASComplianceTraining complianceTraining4 = new OASComplianceTraining();

        System.assert(complianceTraining1.equals(complianceTraining2));
        System.assert(complianceTraining3.equals(complianceTraining4));
        System.assertEquals(complianceTraining1.hashCode(), complianceTraining2.hashCode());
        System.assertEquals(complianceTraining3.hashCode(), complianceTraining4.hashCode());
    }
}
