@isTest
private class OASUpdateSyncDirectionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = updateSyncDirectionRequest1;
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest3 = new OASUpdateSyncDirectionRequest();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest4 = updateSyncDirectionRequest3;

        System.assert(updateSyncDirectionRequest1.equals(updateSyncDirectionRequest2));
        System.assert(updateSyncDirectionRequest2.equals(updateSyncDirectionRequest1));
        System.assert(updateSyncDirectionRequest1.equals(updateSyncDirectionRequest1));
        System.assert(updateSyncDirectionRequest3.equals(updateSyncDirectionRequest4));
        System.assert(updateSyncDirectionRequest4.equals(updateSyncDirectionRequest3));
        System.assert(updateSyncDirectionRequest3.equals(updateSyncDirectionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest3 = new OASUpdateSyncDirectionRequest();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest4 = new OASUpdateSyncDirectionRequest();

        System.assert(updateSyncDirectionRequest1.equals(updateSyncDirectionRequest2));
        System.assert(updateSyncDirectionRequest2.equals(updateSyncDirectionRequest1));
        System.assert(updateSyncDirectionRequest3.equals(updateSyncDirectionRequest4));
        System.assert(updateSyncDirectionRequest4.equals(updateSyncDirectionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = new OASUpdateSyncDirectionRequest();

        System.assertEquals(false, updateSyncDirectionRequest1.equals('foo'));
        System.assertEquals(false, updateSyncDirectionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = new OASUpdateSyncDirectionRequest();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest3;

        System.assertEquals(false, updateSyncDirectionRequest1.equals(updateSyncDirectionRequest3));
        System.assertEquals(false, updateSyncDirectionRequest2.equals(updateSyncDirectionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = new OASUpdateSyncDirectionRequest();

        System.assertEquals(updateSyncDirectionRequest1.hashCode(), updateSyncDirectionRequest1.hashCode());
        System.assertEquals(updateSyncDirectionRequest2.hashCode(), updateSyncDirectionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest1 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest2 = OASUpdateSyncDirectionRequest.getExample();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest3 = new OASUpdateSyncDirectionRequest();
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest4 = new OASUpdateSyncDirectionRequest();

        System.assert(updateSyncDirectionRequest1.equals(updateSyncDirectionRequest2));
        System.assert(updateSyncDirectionRequest3.equals(updateSyncDirectionRequest4));
        System.assertEquals(updateSyncDirectionRequest1.hashCode(), updateSyncDirectionRequest2.hashCode());
        System.assertEquals(updateSyncDirectionRequest3.hashCode(), updateSyncDirectionRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpdateSyncDirectionRequest updateSyncDirectionRequest = new OASUpdateSyncDirectionRequest();
        System.assertEquals(new Map<String, String>(), updateSyncDirectionRequest.directions);
    }
}
