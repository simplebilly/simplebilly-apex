@isTest
private class OASComplianceTrainingUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = complianceTrainingUpdate1;
        OASComplianceTrainingUpdate complianceTrainingUpdate3 = new OASComplianceTrainingUpdate();
        OASComplianceTrainingUpdate complianceTrainingUpdate4 = complianceTrainingUpdate3;

        System.assert(complianceTrainingUpdate1.equals(complianceTrainingUpdate2));
        System.assert(complianceTrainingUpdate2.equals(complianceTrainingUpdate1));
        System.assert(complianceTrainingUpdate1.equals(complianceTrainingUpdate1));
        System.assert(complianceTrainingUpdate3.equals(complianceTrainingUpdate4));
        System.assert(complianceTrainingUpdate4.equals(complianceTrainingUpdate3));
        System.assert(complianceTrainingUpdate3.equals(complianceTrainingUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate3 = new OASComplianceTrainingUpdate();
        OASComplianceTrainingUpdate complianceTrainingUpdate4 = new OASComplianceTrainingUpdate();

        System.assert(complianceTrainingUpdate1.equals(complianceTrainingUpdate2));
        System.assert(complianceTrainingUpdate2.equals(complianceTrainingUpdate1));
        System.assert(complianceTrainingUpdate3.equals(complianceTrainingUpdate4));
        System.assert(complianceTrainingUpdate4.equals(complianceTrainingUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = new OASComplianceTrainingUpdate();

        System.assertEquals(false, complianceTrainingUpdate1.equals('foo'));
        System.assertEquals(false, complianceTrainingUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = new OASComplianceTrainingUpdate();
        OASComplianceTrainingUpdate complianceTrainingUpdate3;

        System.assertEquals(false, complianceTrainingUpdate1.equals(complianceTrainingUpdate3));
        System.assertEquals(false, complianceTrainingUpdate2.equals(complianceTrainingUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = new OASComplianceTrainingUpdate();

        System.assertEquals(complianceTrainingUpdate1.hashCode(), complianceTrainingUpdate1.hashCode());
        System.assertEquals(complianceTrainingUpdate2.hashCode(), complianceTrainingUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComplianceTrainingUpdate complianceTrainingUpdate1 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate2 = OASComplianceTrainingUpdate.getExample();
        OASComplianceTrainingUpdate complianceTrainingUpdate3 = new OASComplianceTrainingUpdate();
        OASComplianceTrainingUpdate complianceTrainingUpdate4 = new OASComplianceTrainingUpdate();

        System.assert(complianceTrainingUpdate1.equals(complianceTrainingUpdate2));
        System.assert(complianceTrainingUpdate3.equals(complianceTrainingUpdate4));
        System.assertEquals(complianceTrainingUpdate1.hashCode(), complianceTrainingUpdate2.hashCode());
        System.assertEquals(complianceTrainingUpdate3.hashCode(), complianceTrainingUpdate4.hashCode());
    }
}
