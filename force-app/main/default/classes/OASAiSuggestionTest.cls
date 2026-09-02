@isTest
private class OASAiSuggestionTest {
    @isTest
    private static void equalsSameInstance() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = aiSuggestion1;
        OASAiSuggestion aiSuggestion3 = new OASAiSuggestion();
        OASAiSuggestion aiSuggestion4 = aiSuggestion3;

        System.assert(aiSuggestion1.equals(aiSuggestion2));
        System.assert(aiSuggestion2.equals(aiSuggestion1));
        System.assert(aiSuggestion1.equals(aiSuggestion1));
        System.assert(aiSuggestion3.equals(aiSuggestion4));
        System.assert(aiSuggestion4.equals(aiSuggestion3));
        System.assert(aiSuggestion3.equals(aiSuggestion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion3 = new OASAiSuggestion();
        OASAiSuggestion aiSuggestion4 = new OASAiSuggestion();

        System.assert(aiSuggestion1.equals(aiSuggestion2));
        System.assert(aiSuggestion2.equals(aiSuggestion1));
        System.assert(aiSuggestion3.equals(aiSuggestion4));
        System.assert(aiSuggestion4.equals(aiSuggestion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = new OASAiSuggestion();

        System.assertEquals(false, aiSuggestion1.equals('foo'));
        System.assertEquals(false, aiSuggestion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = new OASAiSuggestion();
        OASAiSuggestion aiSuggestion3;

        System.assertEquals(false, aiSuggestion1.equals(aiSuggestion3));
        System.assertEquals(false, aiSuggestion2.equals(aiSuggestion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = new OASAiSuggestion();

        System.assertEquals(aiSuggestion1.hashCode(), aiSuggestion1.hashCode());
        System.assertEquals(aiSuggestion2.hashCode(), aiSuggestion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAiSuggestion aiSuggestion1 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion2 = OASAiSuggestion.getExample();
        OASAiSuggestion aiSuggestion3 = new OASAiSuggestion();
        OASAiSuggestion aiSuggestion4 = new OASAiSuggestion();

        System.assert(aiSuggestion1.equals(aiSuggestion2));
        System.assert(aiSuggestion3.equals(aiSuggestion4));
        System.assertEquals(aiSuggestion1.hashCode(), aiSuggestion2.hashCode());
        System.assertEquals(aiSuggestion3.hashCode(), aiSuggestion4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAiSuggestion aiSuggestion = new OASAiSuggestion();
        Map<String, String> x-property-mappings = aiSuggestion.getx-property-mappings();
        System.assertEquals('suggestedPriority', x-property-mappings.get('suggested_priority'));
        System.assertEquals('suggestedReply', x-property-mappings.get('suggested_reply'));
        System.assertEquals('suggestedStatus', x-property-mappings.get('suggested_status'));
        System.assertEquals('toolCalls', x-property-mappings.get('tool_calls'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAiSuggestion aiSuggestion = new OASAiSuggestion();
        System.assertEquals(new List<String>(), aiSuggestion.toolCalls);
        System.assertEquals(null, aiSuggestion.confidence);
        System.assertEquals(null, aiSuggestion.reasoning);
        System.assertEquals(null, aiSuggestion.suggestedPriority);
        System.assertEquals(null, aiSuggestion.suggestedReply);
        System.assertEquals(null, aiSuggestion.suggestedStatus);
    }
}
