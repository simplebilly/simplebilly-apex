@isTest
private class OASComplianceEntryTest {
    @isTest
    private static void equalsSameInstance() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = complianceEntry1;
        OASComplianceEntry complianceEntry3 = new OASComplianceEntry();
        OASComplianceEntry complianceEntry4 = complianceEntry3;

        System.assert(complianceEntry1.equals(complianceEntry2));
        System.assert(complianceEntry2.equals(complianceEntry1));
        System.assert(complianceEntry1.equals(complianceEntry1));
        System.assert(complianceEntry3.equals(complianceEntry4));
        System.assert(complianceEntry4.equals(complianceEntry3));
        System.assert(complianceEntry3.equals(complianceEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry3 = new OASComplianceEntry();
        OASComplianceEntry complianceEntry4 = new OASComplianceEntry();

        System.assert(complianceEntry1.equals(complianceEntry2));
        System.assert(complianceEntry2.equals(complianceEntry1));
        System.assert(complianceEntry3.equals(complianceEntry4));
        System.assert(complianceEntry4.equals(complianceEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = new OASComplianceEntry();

        System.assertEquals(false, complianceEntry1.equals('foo'));
        System.assertEquals(false, complianceEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = new OASComplianceEntry();
        OASComplianceEntry complianceEntry3;

        System.assertEquals(false, complianceEntry1.equals(complianceEntry3));
        System.assertEquals(false, complianceEntry2.equals(complianceEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = new OASComplianceEntry();

        System.assertEquals(complianceEntry1.hashCode(), complianceEntry1.hashCode());
        System.assertEquals(complianceEntry2.hashCode(), complianceEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComplianceEntry complianceEntry1 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry2 = OASComplianceEntry.getExample();
        OASComplianceEntry complianceEntry3 = new OASComplianceEntry();
        OASComplianceEntry complianceEntry4 = new OASComplianceEntry();

        System.assert(complianceEntry1.equals(complianceEntry2));
        System.assert(complianceEntry3.equals(complianceEntry4));
        System.assertEquals(complianceEntry1.hashCode(), complianceEntry2.hashCode());
        System.assertEquals(complianceEntry3.hashCode(), complianceEntry4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASComplianceEntry complianceEntry = new OASComplianceEntry();
        System.assertEquals(new List<String>(), complianceEntry.regulations);
        System.assertEquals(null, complianceEntry.description);
        System.assertEquals(null, complianceEntry.module);
    }
}
