@isTest
private class OASWorkflowTest {
    @isTest
    private static void equalsSameInstance() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = workflow1;
        OASWorkflow workflow3 = new OASWorkflow();
        OASWorkflow workflow4 = workflow3;

        System.assert(workflow1.equals(workflow2));
        System.assert(workflow2.equals(workflow1));
        System.assert(workflow1.equals(workflow1));
        System.assert(workflow3.equals(workflow4));
        System.assert(workflow4.equals(workflow3));
        System.assert(workflow3.equals(workflow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = OASWorkflow.getExample();
        OASWorkflow workflow3 = new OASWorkflow();
        OASWorkflow workflow4 = new OASWorkflow();

        System.assert(workflow1.equals(workflow2));
        System.assert(workflow2.equals(workflow1));
        System.assert(workflow3.equals(workflow4));
        System.assert(workflow4.equals(workflow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = new OASWorkflow();

        System.assertEquals(false, workflow1.equals('foo'));
        System.assertEquals(false, workflow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = new OASWorkflow();
        OASWorkflow workflow3;

        System.assertEquals(false, workflow1.equals(workflow3));
        System.assertEquals(false, workflow2.equals(workflow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = new OASWorkflow();

        System.assertEquals(workflow1.hashCode(), workflow1.hashCode());
        System.assertEquals(workflow2.hashCode(), workflow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWorkflow workflow1 = OASWorkflow.getExample();
        OASWorkflow workflow2 = OASWorkflow.getExample();
        OASWorkflow workflow3 = new OASWorkflow();
        OASWorkflow workflow4 = new OASWorkflow();

        System.assert(workflow1.equals(workflow2));
        System.assert(workflow3.equals(workflow4));
        System.assertEquals(workflow1.hashCode(), workflow2.hashCode());
        System.assertEquals(workflow3.hashCode(), workflow4.hashCode());
    }
}
