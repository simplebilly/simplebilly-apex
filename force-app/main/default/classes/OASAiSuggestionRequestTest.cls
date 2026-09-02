@isTest
private class OASAiSuggestionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = aiSuggestionRequest1;
        OASAiSuggestionRequest aiSuggestionRequest3 = new OASAiSuggestionRequest();
        OASAiSuggestionRequest aiSuggestionRequest4 = aiSuggestionRequest3;

        System.assert(aiSuggestionRequest1.equals(aiSuggestionRequest2));
        System.assert(aiSuggestionRequest2.equals(aiSuggestionRequest1));
        System.assert(aiSuggestionRequest1.equals(aiSuggestionRequest1));
        System.assert(aiSuggestionRequest3.equals(aiSuggestionRequest4));
        System.assert(aiSuggestionRequest4.equals(aiSuggestionRequest3));
        System.assert(aiSuggestionRequest3.equals(aiSuggestionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest3 = new OASAiSuggestionRequest();
        OASAiSuggestionRequest aiSuggestionRequest4 = new OASAiSuggestionRequest();

        System.assert(aiSuggestionRequest1.equals(aiSuggestionRequest2));
        System.assert(aiSuggestionRequest2.equals(aiSuggestionRequest1));
        System.assert(aiSuggestionRequest3.equals(aiSuggestionRequest4));
        System.assert(aiSuggestionRequest4.equals(aiSuggestionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = new OASAiSuggestionRequest();

        System.assertEquals(false, aiSuggestionRequest1.equals('foo'));
        System.assertEquals(false, aiSuggestionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = new OASAiSuggestionRequest();
        OASAiSuggestionRequest aiSuggestionRequest3;

        System.assertEquals(false, aiSuggestionRequest1.equals(aiSuggestionRequest3));
        System.assertEquals(false, aiSuggestionRequest2.equals(aiSuggestionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = new OASAiSuggestionRequest();

        System.assertEquals(aiSuggestionRequest1.hashCode(), aiSuggestionRequest1.hashCode());
        System.assertEquals(aiSuggestionRequest2.hashCode(), aiSuggestionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAiSuggestionRequest aiSuggestionRequest1 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest2 = OASAiSuggestionRequest.getExample();
        OASAiSuggestionRequest aiSuggestionRequest3 = new OASAiSuggestionRequest();
        OASAiSuggestionRequest aiSuggestionRequest4 = new OASAiSuggestionRequest();

        System.assert(aiSuggestionRequest1.equals(aiSuggestionRequest2));
        System.assert(aiSuggestionRequest3.equals(aiSuggestionRequest4));
        System.assertEquals(aiSuggestionRequest1.hashCode(), aiSuggestionRequest2.hashCode());
        System.assertEquals(aiSuggestionRequest3.hashCode(), aiSuggestionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAiSuggestionRequest aiSuggestionRequest = new OASAiSuggestionRequest();
        Map<String, String> x-property-mappings = aiSuggestionRequest.getx-property-mappings();
        System.assertEquals('messageBody', x-property-mappings.get('message_body'));
        System.assertEquals('ticketId', x-property-mappings.get('ticket_id'));
    }
}
