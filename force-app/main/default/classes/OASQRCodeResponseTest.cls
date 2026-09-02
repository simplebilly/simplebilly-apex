@isTest
private class OASQRCodeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = qrCodeResponse1;
        OASQRCodeResponse qrCodeResponse3 = new OASQRCodeResponse();
        OASQRCodeResponse qrCodeResponse4 = qrCodeResponse3;

        System.assert(qrCodeResponse1.equals(qrCodeResponse2));
        System.assert(qrCodeResponse2.equals(qrCodeResponse1));
        System.assert(qrCodeResponse1.equals(qrCodeResponse1));
        System.assert(qrCodeResponse3.equals(qrCodeResponse4));
        System.assert(qrCodeResponse4.equals(qrCodeResponse3));
        System.assert(qrCodeResponse3.equals(qrCodeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse3 = new OASQRCodeResponse();
        OASQRCodeResponse qrCodeResponse4 = new OASQRCodeResponse();

        System.assert(qrCodeResponse1.equals(qrCodeResponse2));
        System.assert(qrCodeResponse2.equals(qrCodeResponse1));
        System.assert(qrCodeResponse3.equals(qrCodeResponse4));
        System.assert(qrCodeResponse4.equals(qrCodeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = new OASQRCodeResponse();

        System.assertEquals(false, qrCodeResponse1.equals('foo'));
        System.assertEquals(false, qrCodeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = new OASQRCodeResponse();
        OASQRCodeResponse qrCodeResponse3;

        System.assertEquals(false, qrCodeResponse1.equals(qrCodeResponse3));
        System.assertEquals(false, qrCodeResponse2.equals(qrCodeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = new OASQRCodeResponse();

        System.assertEquals(qrCodeResponse1.hashCode(), qrCodeResponse1.hashCode());
        System.assertEquals(qrCodeResponse2.hashCode(), qrCodeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeResponse qrCodeResponse1 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse2 = OASQRCodeResponse.getExample();
        OASQRCodeResponse qrCodeResponse3 = new OASQRCodeResponse();
        OASQRCodeResponse qrCodeResponse4 = new OASQRCodeResponse();

        System.assert(qrCodeResponse1.equals(qrCodeResponse2));
        System.assert(qrCodeResponse3.equals(qrCodeResponse4));
        System.assertEquals(qrCodeResponse1.hashCode(), qrCodeResponse2.hashCode());
        System.assertEquals(qrCodeResponse3.hashCode(), qrCodeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeResponse qrCodeResponse = new OASQRCodeResponse();
        Map<String, String> x-property-mappings = qrCodeResponse.getx-property-mappings();
        System.assertEquals('contentType', x-property-mappings.get('content_type'));
        System.assertEquals('qrCodeBase64', x-property-mappings.get('qr_code_base64'));
    }
}
