@isTest
private class OASAiWorkerConfigTest {
    @isTest
    private static void equalsSameInstance() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = aiWorkerConfig1;
        OASAiWorkerConfig aiWorkerConfig3 = new OASAiWorkerConfig();
        OASAiWorkerConfig aiWorkerConfig4 = aiWorkerConfig3;

        System.assert(aiWorkerConfig1.equals(aiWorkerConfig2));
        System.assert(aiWorkerConfig2.equals(aiWorkerConfig1));
        System.assert(aiWorkerConfig1.equals(aiWorkerConfig1));
        System.assert(aiWorkerConfig3.equals(aiWorkerConfig4));
        System.assert(aiWorkerConfig4.equals(aiWorkerConfig3));
        System.assert(aiWorkerConfig3.equals(aiWorkerConfig3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig3 = new OASAiWorkerConfig();
        OASAiWorkerConfig aiWorkerConfig4 = new OASAiWorkerConfig();

        System.assert(aiWorkerConfig1.equals(aiWorkerConfig2));
        System.assert(aiWorkerConfig2.equals(aiWorkerConfig1));
        System.assert(aiWorkerConfig3.equals(aiWorkerConfig4));
        System.assert(aiWorkerConfig4.equals(aiWorkerConfig3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = new OASAiWorkerConfig();

        System.assertEquals(false, aiWorkerConfig1.equals('foo'));
        System.assertEquals(false, aiWorkerConfig2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = new OASAiWorkerConfig();
        OASAiWorkerConfig aiWorkerConfig3;

        System.assertEquals(false, aiWorkerConfig1.equals(aiWorkerConfig3));
        System.assertEquals(false, aiWorkerConfig2.equals(aiWorkerConfig3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = new OASAiWorkerConfig();

        System.assertEquals(aiWorkerConfig1.hashCode(), aiWorkerConfig1.hashCode());
        System.assertEquals(aiWorkerConfig2.hashCode(), aiWorkerConfig2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAiWorkerConfig aiWorkerConfig1 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig2 = OASAiWorkerConfig.getExample();
        OASAiWorkerConfig aiWorkerConfig3 = new OASAiWorkerConfig();
        OASAiWorkerConfig aiWorkerConfig4 = new OASAiWorkerConfig();

        System.assert(aiWorkerConfig1.equals(aiWorkerConfig2));
        System.assert(aiWorkerConfig3.equals(aiWorkerConfig4));
        System.assertEquals(aiWorkerConfig1.hashCode(), aiWorkerConfig2.hashCode());
        System.assertEquals(aiWorkerConfig3.hashCode(), aiWorkerConfig4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAiWorkerConfig aiWorkerConfig = new OASAiWorkerConfig();
        Map<String, String> x-property-mappings = aiWorkerConfig.getx-property-mappings();
        System.assertEquals('autoReply', x-property-mappings.get('auto_reply'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('maxToolCalls', x-property-mappings.get('max_tool_calls'));
        System.assertEquals('systemPrompt', x-property-mappings.get('system_prompt'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('triggerOn', x-property-mappings.get('trigger_on'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAiWorkerConfig aiWorkerConfig = new OASAiWorkerConfig();
        System.assertEquals(new List<String>(), aiWorkerConfig.triggerOn);
        System.assertEquals(null, aiWorkerConfig.autoReply);
        System.assertEquals(null, aiWorkerConfig.createdAt);
        System.assertEquals(null, aiWorkerConfig.id);
        System.assertEquals(null, aiWorkerConfig.isActive);
        System.assertEquals(null, aiWorkerConfig.maxToolCalls);
        System.assertEquals(null, aiWorkerConfig.model);
        System.assertEquals(null, aiWorkerConfig.name);
        System.assertEquals(null, aiWorkerConfig.provider);
        System.assertEquals(null, aiWorkerConfig.systemPrompt);
        System.assertEquals(null, aiWorkerConfig.tenantId);
        System.assertEquals(null, aiWorkerConfig.updatedAt);
    }
}
