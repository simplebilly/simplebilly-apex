@isTest
private class OASSmtpEncryptionTest {
    @isTest
    private static void allowableValues() {
        Set<OASSmtpEncryption> expected = new Set<OASSmtpEncryption>{
            OASSmtpEncryption.STARTTLS,
            OASSmtpEncryption.TLS
        };
        Set<OASSmtpEncryption> actual  = new Set<OASSmtpEncryption>(OASSmtpEncryption.values());
        System.assertEquals(expected, actual);
    }
}
