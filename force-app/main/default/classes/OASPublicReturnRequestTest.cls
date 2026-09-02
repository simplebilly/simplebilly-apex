@isTest
private class OASPublicReturnRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = publicReturnRequest1;
        OASPublicReturnRequest publicReturnRequest3 = new OASPublicReturnRequest();
        OASPublicReturnRequest publicReturnRequest4 = publicReturnRequest3;

        System.assert(publicReturnRequest1.equals(publicReturnRequest2));
        System.assert(publicReturnRequest2.equals(publicReturnRequest1));
        System.assert(publicReturnRequest1.equals(publicReturnRequest1));
        System.assert(publicReturnRequest3.equals(publicReturnRequest4));
        System.assert(publicReturnRequest4.equals(publicReturnRequest3));
        System.assert(publicReturnRequest3.equals(publicReturnRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest3 = new OASPublicReturnRequest();
        OASPublicReturnRequest publicReturnRequest4 = new OASPublicReturnRequest();

        System.assert(publicReturnRequest1.equals(publicReturnRequest2));
        System.assert(publicReturnRequest2.equals(publicReturnRequest1));
        System.assert(publicReturnRequest3.equals(publicReturnRequest4));
        System.assert(publicReturnRequest4.equals(publicReturnRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = new OASPublicReturnRequest();

        System.assertEquals(false, publicReturnRequest1.equals('foo'));
        System.assertEquals(false, publicReturnRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = new OASPublicReturnRequest();
        OASPublicReturnRequest publicReturnRequest3;

        System.assertEquals(false, publicReturnRequest1.equals(publicReturnRequest3));
        System.assertEquals(false, publicReturnRequest2.equals(publicReturnRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = new OASPublicReturnRequest();

        System.assertEquals(publicReturnRequest1.hashCode(), publicReturnRequest1.hashCode());
        System.assertEquals(publicReturnRequest2.hashCode(), publicReturnRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicReturnRequest publicReturnRequest1 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest2 = OASPublicReturnRequest.getExample();
        OASPublicReturnRequest publicReturnRequest3 = new OASPublicReturnRequest();
        OASPublicReturnRequest publicReturnRequest4 = new OASPublicReturnRequest();

        System.assert(publicReturnRequest1.equals(publicReturnRequest2));
        System.assert(publicReturnRequest3.equals(publicReturnRequest4));
        System.assertEquals(publicReturnRequest1.hashCode(), publicReturnRequest2.hashCode());
        System.assertEquals(publicReturnRequest3.hashCode(), publicReturnRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPublicReturnRequest publicReturnRequest = new OASPublicReturnRequest();
        System.assertEquals(new List<OASPublicReturnItem>(), publicReturnRequest.items);
        System.assertEquals(null, publicReturnRequest.email);
        System.assertEquals(null, publicReturnRequest.notes);
        System.assertEquals(null, publicReturnRequest.orderNumber);
    }
}
