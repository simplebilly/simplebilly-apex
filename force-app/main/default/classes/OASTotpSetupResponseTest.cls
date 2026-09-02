@isTest
private class OASTotpSetupResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = totpSetupResponse1;
        OASTotpSetupResponse totpSetupResponse3 = new OASTotpSetupResponse();
        OASTotpSetupResponse totpSetupResponse4 = totpSetupResponse3;

        System.assert(totpSetupResponse1.equals(totpSetupResponse2));
        System.assert(totpSetupResponse2.equals(totpSetupResponse1));
        System.assert(totpSetupResponse1.equals(totpSetupResponse1));
        System.assert(totpSetupResponse3.equals(totpSetupResponse4));
        System.assert(totpSetupResponse4.equals(totpSetupResponse3));
        System.assert(totpSetupResponse3.equals(totpSetupResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse3 = new OASTotpSetupResponse();
        OASTotpSetupResponse totpSetupResponse4 = new OASTotpSetupResponse();

        System.assert(totpSetupResponse1.equals(totpSetupResponse2));
        System.assert(totpSetupResponse2.equals(totpSetupResponse1));
        System.assert(totpSetupResponse3.equals(totpSetupResponse4));
        System.assert(totpSetupResponse4.equals(totpSetupResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = new OASTotpSetupResponse();

        System.assertEquals(false, totpSetupResponse1.equals('foo'));
        System.assertEquals(false, totpSetupResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = new OASTotpSetupResponse();
        OASTotpSetupResponse totpSetupResponse3;

        System.assertEquals(false, totpSetupResponse1.equals(totpSetupResponse3));
        System.assertEquals(false, totpSetupResponse2.equals(totpSetupResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = new OASTotpSetupResponse();

        System.assertEquals(totpSetupResponse1.hashCode(), totpSetupResponse1.hashCode());
        System.assertEquals(totpSetupResponse2.hashCode(), totpSetupResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTotpSetupResponse totpSetupResponse1 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse2 = OASTotpSetupResponse.getExample();
        OASTotpSetupResponse totpSetupResponse3 = new OASTotpSetupResponse();
        OASTotpSetupResponse totpSetupResponse4 = new OASTotpSetupResponse();

        System.assert(totpSetupResponse1.equals(totpSetupResponse2));
        System.assert(totpSetupResponse3.equals(totpSetupResponse4));
        System.assertEquals(totpSetupResponse1.hashCode(), totpSetupResponse2.hashCode());
        System.assertEquals(totpSetupResponse3.hashCode(), totpSetupResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTotpSetupResponse totpSetupResponse = new OASTotpSetupResponse();
        Map<String, String> x-property-mappings = totpSetupResponse.getx-property-mappings();
        System.assertEquals('backupCodes', x-property-mappings.get('backup_codes'));
        System.assertEquals('qrCodeUrl', x-property-mappings.get('qr_code_url'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTotpSetupResponse totpSetupResponse = new OASTotpSetupResponse();
        System.assertEquals(new List<String>(), totpSetupResponse.backupCodes);
        System.assertEquals(null, totpSetupResponse.qrCodeUrl);
        System.assertEquals(null, totpSetupResponse.secret);
    }
}
