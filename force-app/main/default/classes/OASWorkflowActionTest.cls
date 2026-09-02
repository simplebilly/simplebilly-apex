@isTest
private class OASWorkflowActionTest {
    @isTest
    private static void equalsSameInstance() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = workflowAction1;
        OASWorkflowAction workflowAction3 = new OASWorkflowAction();
        OASWorkflowAction workflowAction4 = workflowAction3;

        System.assert(workflowAction1.equals(workflowAction2));
        System.assert(workflowAction2.equals(workflowAction1));
        System.assert(workflowAction1.equals(workflowAction1));
        System.assert(workflowAction3.equals(workflowAction4));
        System.assert(workflowAction4.equals(workflowAction3));
        System.assert(workflowAction3.equals(workflowAction3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction3 = new OASWorkflowAction();
        OASWorkflowAction workflowAction4 = new OASWorkflowAction();

        System.assert(workflowAction1.equals(workflowAction2));
        System.assert(workflowAction2.equals(workflowAction1));
        System.assert(workflowAction3.equals(workflowAction4));
        System.assert(workflowAction4.equals(workflowAction3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = new OASWorkflowAction();

        System.assertEquals(false, workflowAction1.equals('foo'));
        System.assertEquals(false, workflowAction2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = new OASWorkflowAction();
        OASWorkflowAction workflowAction3;

        System.assertEquals(false, workflowAction1.equals(workflowAction3));
        System.assertEquals(false, workflowAction2.equals(workflowAction3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = new OASWorkflowAction();

        System.assertEquals(workflowAction1.hashCode(), workflowAction1.hashCode());
        System.assertEquals(workflowAction2.hashCode(), workflowAction2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWorkflowAction workflowAction1 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction2 = OASWorkflowAction.getExample();
        OASWorkflowAction workflowAction3 = new OASWorkflowAction();
        OASWorkflowAction workflowAction4 = new OASWorkflowAction();

        System.assert(workflowAction1.equals(workflowAction2));
        System.assert(workflowAction3.equals(workflowAction4));
        System.assertEquals(workflowAction1.hashCode(), workflowAction2.hashCode());
        System.assertEquals(workflowAction3.hashCode(), workflowAction4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASWorkflowAction workflowAction = new OASWorkflowAction();
        Map<String, String> x-property-mappings = workflowAction.getx-property-mappings();
        System.assertEquals('actionType', x-property-mappings.get('action_type'));
    }
}
