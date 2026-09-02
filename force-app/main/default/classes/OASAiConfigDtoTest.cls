@isTest
private class OASAiConfigDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = aiConfigDto1;
        OASAiConfigDto aiConfigDto3 = new OASAiConfigDto();
        OASAiConfigDto aiConfigDto4 = aiConfigDto3;

        System.assert(aiConfigDto1.equals(aiConfigDto2));
        System.assert(aiConfigDto2.equals(aiConfigDto1));
        System.assert(aiConfigDto1.equals(aiConfigDto1));
        System.assert(aiConfigDto3.equals(aiConfigDto4));
        System.assert(aiConfigDto4.equals(aiConfigDto3));
        System.assert(aiConfigDto3.equals(aiConfigDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto3 = new OASAiConfigDto();
        OASAiConfigDto aiConfigDto4 = new OASAiConfigDto();

        System.assert(aiConfigDto1.equals(aiConfigDto2));
        System.assert(aiConfigDto2.equals(aiConfigDto1));
        System.assert(aiConfigDto3.equals(aiConfigDto4));
        System.assert(aiConfigDto4.equals(aiConfigDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = new OASAiConfigDto();

        System.assertEquals(false, aiConfigDto1.equals('foo'));
        System.assertEquals(false, aiConfigDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = new OASAiConfigDto();
        OASAiConfigDto aiConfigDto3;

        System.assertEquals(false, aiConfigDto1.equals(aiConfigDto3));
        System.assertEquals(false, aiConfigDto2.equals(aiConfigDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = new OASAiConfigDto();

        System.assertEquals(aiConfigDto1.hashCode(), aiConfigDto1.hashCode());
        System.assertEquals(aiConfigDto2.hashCode(), aiConfigDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAiConfigDto aiConfigDto1 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto2 = OASAiConfigDto.getExample();
        OASAiConfigDto aiConfigDto3 = new OASAiConfigDto();
        OASAiConfigDto aiConfigDto4 = new OASAiConfigDto();

        System.assert(aiConfigDto1.equals(aiConfigDto2));
        System.assert(aiConfigDto3.equals(aiConfigDto4));
        System.assertEquals(aiConfigDto1.hashCode(), aiConfigDto2.hashCode());
        System.assertEquals(aiConfigDto3.hashCode(), aiConfigDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAiConfigDto aiConfigDto = new OASAiConfigDto();
        Map<String, String> x-property-mappings = aiConfigDto.getx-property-mappings();
        System.assertEquals('autoReply', x-property-mappings.get('auto_reply'));
        System.assertEquals('maxToolCalls', x-property-mappings.get('max_tool_calls'));
        System.assertEquals('systemPrompt', x-property-mappings.get('system_prompt'));
        System.assertEquals('triggerOn', x-property-mappings.get('trigger_on'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAiConfigDto aiConfigDto = new OASAiConfigDto();
        System.assertEquals(new List<String>(), aiConfigDto.triggerOn);
        System.assertEquals(null, aiConfigDto.autoReply);
        System.assertEquals(null, aiConfigDto.maxToolCalls);
        System.assertEquals(null, aiConfigDto.model);
        System.assertEquals(null, aiConfigDto.name);
        System.assertEquals(null, aiConfigDto.provider);
        System.assertEquals(null, aiConfigDto.systemPrompt);
    }
}
