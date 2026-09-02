@isTest
private class OASOcrTextRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = ocrTextRequest1;
        OASOcrTextRequest ocrTextRequest3 = new OASOcrTextRequest();
        OASOcrTextRequest ocrTextRequest4 = ocrTextRequest3;

        System.assert(ocrTextRequest1.equals(ocrTextRequest2));
        System.assert(ocrTextRequest2.equals(ocrTextRequest1));
        System.assert(ocrTextRequest1.equals(ocrTextRequest1));
        System.assert(ocrTextRequest3.equals(ocrTextRequest4));
        System.assert(ocrTextRequest4.equals(ocrTextRequest3));
        System.assert(ocrTextRequest3.equals(ocrTextRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest3 = new OASOcrTextRequest();
        OASOcrTextRequest ocrTextRequest4 = new OASOcrTextRequest();

        System.assert(ocrTextRequest1.equals(ocrTextRequest2));
        System.assert(ocrTextRequest2.equals(ocrTextRequest1));
        System.assert(ocrTextRequest3.equals(ocrTextRequest4));
        System.assert(ocrTextRequest4.equals(ocrTextRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = new OASOcrTextRequest();

        System.assertEquals(false, ocrTextRequest1.equals('foo'));
        System.assertEquals(false, ocrTextRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = new OASOcrTextRequest();
        OASOcrTextRequest ocrTextRequest3;

        System.assertEquals(false, ocrTextRequest1.equals(ocrTextRequest3));
        System.assertEquals(false, ocrTextRequest2.equals(ocrTextRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = new OASOcrTextRequest();

        System.assertEquals(ocrTextRequest1.hashCode(), ocrTextRequest1.hashCode());
        System.assertEquals(ocrTextRequest2.hashCode(), ocrTextRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOcrTextRequest ocrTextRequest1 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest2 = OASOcrTextRequest.getExample();
        OASOcrTextRequest ocrTextRequest3 = new OASOcrTextRequest();
        OASOcrTextRequest ocrTextRequest4 = new OASOcrTextRequest();

        System.assert(ocrTextRequest1.equals(ocrTextRequest2));
        System.assert(ocrTextRequest3.equals(ocrTextRequest4));
        System.assertEquals(ocrTextRequest1.hashCode(), ocrTextRequest2.hashCode());
        System.assertEquals(ocrTextRequest3.hashCode(), ocrTextRequest4.hashCode());
    }
}
