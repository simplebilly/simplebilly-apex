@isTest
private class OASMirrorTriggerResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = mirrorTriggerResponse1;
        OASMirrorTriggerResponse mirrorTriggerResponse3 = new OASMirrorTriggerResponse();
        OASMirrorTriggerResponse mirrorTriggerResponse4 = mirrorTriggerResponse3;

        System.assert(mirrorTriggerResponse1.equals(mirrorTriggerResponse2));
        System.assert(mirrorTriggerResponse2.equals(mirrorTriggerResponse1));
        System.assert(mirrorTriggerResponse1.equals(mirrorTriggerResponse1));
        System.assert(mirrorTriggerResponse3.equals(mirrorTriggerResponse4));
        System.assert(mirrorTriggerResponse4.equals(mirrorTriggerResponse3));
        System.assert(mirrorTriggerResponse3.equals(mirrorTriggerResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse3 = new OASMirrorTriggerResponse();
        OASMirrorTriggerResponse mirrorTriggerResponse4 = new OASMirrorTriggerResponse();

        System.assert(mirrorTriggerResponse1.equals(mirrorTriggerResponse2));
        System.assert(mirrorTriggerResponse2.equals(mirrorTriggerResponse1));
        System.assert(mirrorTriggerResponse3.equals(mirrorTriggerResponse4));
        System.assert(mirrorTriggerResponse4.equals(mirrorTriggerResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = new OASMirrorTriggerResponse();

        System.assertEquals(false, mirrorTriggerResponse1.equals('foo'));
        System.assertEquals(false, mirrorTriggerResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = new OASMirrorTriggerResponse();
        OASMirrorTriggerResponse mirrorTriggerResponse3;

        System.assertEquals(false, mirrorTriggerResponse1.equals(mirrorTriggerResponse3));
        System.assertEquals(false, mirrorTriggerResponse2.equals(mirrorTriggerResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = new OASMirrorTriggerResponse();

        System.assertEquals(mirrorTriggerResponse1.hashCode(), mirrorTriggerResponse1.hashCode());
        System.assertEquals(mirrorTriggerResponse2.hashCode(), mirrorTriggerResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMirrorTriggerResponse mirrorTriggerResponse1 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse2 = OASMirrorTriggerResponse.getExample();
        OASMirrorTriggerResponse mirrorTriggerResponse3 = new OASMirrorTriggerResponse();
        OASMirrorTriggerResponse mirrorTriggerResponse4 = new OASMirrorTriggerResponse();

        System.assert(mirrorTriggerResponse1.equals(mirrorTriggerResponse2));
        System.assert(mirrorTriggerResponse3.equals(mirrorTriggerResponse4));
        System.assertEquals(mirrorTriggerResponse1.hashCode(), mirrorTriggerResponse2.hashCode());
        System.assertEquals(mirrorTriggerResponse3.hashCode(), mirrorTriggerResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMirrorTriggerResponse mirrorTriggerResponse = new OASMirrorTriggerResponse();
        Map<String, String> x-property-mappings = mirrorTriggerResponse.getx-property-mappings();
        System.assertEquals('jobId', x-property-mappings.get('job_id'));
    }
}
