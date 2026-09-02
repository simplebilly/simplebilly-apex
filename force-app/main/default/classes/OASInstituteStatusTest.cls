@isTest
private class OASInstituteStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = instituteStatus1;
        OASInstituteStatus instituteStatus3 = new OASInstituteStatus();
        OASInstituteStatus instituteStatus4 = instituteStatus3;

        System.assert(instituteStatus1.equals(instituteStatus2));
        System.assert(instituteStatus2.equals(instituteStatus1));
        System.assert(instituteStatus1.equals(instituteStatus1));
        System.assert(instituteStatus3.equals(instituteStatus4));
        System.assert(instituteStatus4.equals(instituteStatus3));
        System.assert(instituteStatus3.equals(instituteStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus3 = new OASInstituteStatus();
        OASInstituteStatus instituteStatus4 = new OASInstituteStatus();

        System.assert(instituteStatus1.equals(instituteStatus2));
        System.assert(instituteStatus2.equals(instituteStatus1));
        System.assert(instituteStatus3.equals(instituteStatus4));
        System.assert(instituteStatus4.equals(instituteStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = new OASInstituteStatus();

        System.assertEquals(false, instituteStatus1.equals('foo'));
        System.assertEquals(false, instituteStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = new OASInstituteStatus();
        OASInstituteStatus instituteStatus3;

        System.assertEquals(false, instituteStatus1.equals(instituteStatus3));
        System.assertEquals(false, instituteStatus2.equals(instituteStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = new OASInstituteStatus();

        System.assertEquals(instituteStatus1.hashCode(), instituteStatus1.hashCode());
        System.assertEquals(instituteStatus2.hashCode(), instituteStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInstituteStatus instituteStatus1 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus2 = OASInstituteStatus.getExample();
        OASInstituteStatus instituteStatus3 = new OASInstituteStatus();
        OASInstituteStatus instituteStatus4 = new OASInstituteStatus();

        System.assert(instituteStatus1.equals(instituteStatus2));
        System.assert(instituteStatus3.equals(instituteStatus4));
        System.assertEquals(instituteStatus1.hashCode(), instituteStatus2.hashCode());
        System.assertEquals(instituteStatus3.hashCode(), instituteStatus4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInstituteStatus instituteStatus = new OASInstituteStatus();
        System.assertEquals(new List<OASInstituteCheckItem>(), instituteStatus.checklist);
        System.assertEquals(null, instituteStatus.deadlines);
        System.assertEquals(null, instituteStatus.instituteType);
        System.assertEquals(null, instituteStatus.kapitalmarktorientiert);
    }
}
