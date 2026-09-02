@isTest
private class OASSubmitResultResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = submitResultResponse1;
        OASSubmitResultResponse submitResultResponse3 = new OASSubmitResultResponse();
        OASSubmitResultResponse submitResultResponse4 = submitResultResponse3;

        System.assert(submitResultResponse1.equals(submitResultResponse2));
        System.assert(submitResultResponse2.equals(submitResultResponse1));
        System.assert(submitResultResponse1.equals(submitResultResponse1));
        System.assert(submitResultResponse3.equals(submitResultResponse4));
        System.assert(submitResultResponse4.equals(submitResultResponse3));
        System.assert(submitResultResponse3.equals(submitResultResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse3 = new OASSubmitResultResponse();
        OASSubmitResultResponse submitResultResponse4 = new OASSubmitResultResponse();

        System.assert(submitResultResponse1.equals(submitResultResponse2));
        System.assert(submitResultResponse2.equals(submitResultResponse1));
        System.assert(submitResultResponse3.equals(submitResultResponse4));
        System.assert(submitResultResponse4.equals(submitResultResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = new OASSubmitResultResponse();

        System.assertEquals(false, submitResultResponse1.equals('foo'));
        System.assertEquals(false, submitResultResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = new OASSubmitResultResponse();
        OASSubmitResultResponse submitResultResponse3;

        System.assertEquals(false, submitResultResponse1.equals(submitResultResponse3));
        System.assertEquals(false, submitResultResponse2.equals(submitResultResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = new OASSubmitResultResponse();

        System.assertEquals(submitResultResponse1.hashCode(), submitResultResponse1.hashCode());
        System.assertEquals(submitResultResponse2.hashCode(), submitResultResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubmitResultResponse submitResultResponse1 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse2 = OASSubmitResultResponse.getExample();
        OASSubmitResultResponse submitResultResponse3 = new OASSubmitResultResponse();
        OASSubmitResultResponse submitResultResponse4 = new OASSubmitResultResponse();

        System.assert(submitResultResponse1.equals(submitResultResponse2));
        System.assert(submitResultResponse3.equals(submitResultResponse4));
        System.assertEquals(submitResultResponse1.hashCode(), submitResultResponse2.hashCode());
        System.assertEquals(submitResultResponse3.hashCode(), submitResultResponse4.hashCode());
    }
}
