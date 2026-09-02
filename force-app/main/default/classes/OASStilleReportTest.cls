@isTest
private class OASStilleReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = stilleReport1;
        OASStilleReport stilleReport3 = new OASStilleReport();
        OASStilleReport stilleReport4 = stilleReport3;

        System.assert(stilleReport1.equals(stilleReport2));
        System.assert(stilleReport2.equals(stilleReport1));
        System.assert(stilleReport1.equals(stilleReport1));
        System.assert(stilleReport3.equals(stilleReport4));
        System.assert(stilleReport4.equals(stilleReport3));
        System.assert(stilleReport3.equals(stilleReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = OASStilleReport.getExample();
        OASStilleReport stilleReport3 = new OASStilleReport();
        OASStilleReport stilleReport4 = new OASStilleReport();

        System.assert(stilleReport1.equals(stilleReport2));
        System.assert(stilleReport2.equals(stilleReport1));
        System.assert(stilleReport3.equals(stilleReport4));
        System.assert(stilleReport4.equals(stilleReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = new OASStilleReport();

        System.assertEquals(false, stilleReport1.equals('foo'));
        System.assertEquals(false, stilleReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = new OASStilleReport();
        OASStilleReport stilleReport3;

        System.assertEquals(false, stilleReport1.equals(stilleReport3));
        System.assertEquals(false, stilleReport2.equals(stilleReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = new OASStilleReport();

        System.assertEquals(stilleReport1.hashCode(), stilleReport1.hashCode());
        System.assertEquals(stilleReport2.hashCode(), stilleReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStilleReport stilleReport1 = OASStilleReport.getExample();
        OASStilleReport stilleReport2 = OASStilleReport.getExample();
        OASStilleReport stilleReport3 = new OASStilleReport();
        OASStilleReport stilleReport4 = new OASStilleReport();

        System.assert(stilleReport1.equals(stilleReport2));
        System.assert(stilleReport3.equals(stilleReport4));
        System.assertEquals(stilleReport1.hashCode(), stilleReport2.hashCode());
        System.assertEquals(stilleReport3.hashCode(), stilleReport4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASStilleReport stilleReport = new OASStilleReport();
        System.assertEquals(new List<OASStillePartnerZeile>(), stilleReport.partners);
        System.assertEquals(null, stilleReport.jahresueberschuss);
        System.assertEquals(null, stilleReport.year);
    }
}
