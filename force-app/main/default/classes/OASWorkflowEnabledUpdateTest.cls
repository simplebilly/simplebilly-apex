@isTest
private class OASWorkflowEnabledUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = workflowEnabledUpdate1;
        OASWorkflowEnabledUpdate workflowEnabledUpdate3 = new OASWorkflowEnabledUpdate();
        OASWorkflowEnabledUpdate workflowEnabledUpdate4 = workflowEnabledUpdate3;

        System.assert(workflowEnabledUpdate1.equals(workflowEnabledUpdate2));
        System.assert(workflowEnabledUpdate2.equals(workflowEnabledUpdate1));
        System.assert(workflowEnabledUpdate1.equals(workflowEnabledUpdate1));
        System.assert(workflowEnabledUpdate3.equals(workflowEnabledUpdate4));
        System.assert(workflowEnabledUpdate4.equals(workflowEnabledUpdate3));
        System.assert(workflowEnabledUpdate3.equals(workflowEnabledUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate3 = new OASWorkflowEnabledUpdate();
        OASWorkflowEnabledUpdate workflowEnabledUpdate4 = new OASWorkflowEnabledUpdate();

        System.assert(workflowEnabledUpdate1.equals(workflowEnabledUpdate2));
        System.assert(workflowEnabledUpdate2.equals(workflowEnabledUpdate1));
        System.assert(workflowEnabledUpdate3.equals(workflowEnabledUpdate4));
        System.assert(workflowEnabledUpdate4.equals(workflowEnabledUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = new OASWorkflowEnabledUpdate();

        System.assertEquals(false, workflowEnabledUpdate1.equals('foo'));
        System.assertEquals(false, workflowEnabledUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = new OASWorkflowEnabledUpdate();
        OASWorkflowEnabledUpdate workflowEnabledUpdate3;

        System.assertEquals(false, workflowEnabledUpdate1.equals(workflowEnabledUpdate3));
        System.assertEquals(false, workflowEnabledUpdate2.equals(workflowEnabledUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = new OASWorkflowEnabledUpdate();

        System.assertEquals(workflowEnabledUpdate1.hashCode(), workflowEnabledUpdate1.hashCode());
        System.assertEquals(workflowEnabledUpdate2.hashCode(), workflowEnabledUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWorkflowEnabledUpdate workflowEnabledUpdate1 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate2 = OASWorkflowEnabledUpdate.getExample();
        OASWorkflowEnabledUpdate workflowEnabledUpdate3 = new OASWorkflowEnabledUpdate();
        OASWorkflowEnabledUpdate workflowEnabledUpdate4 = new OASWorkflowEnabledUpdate();

        System.assert(workflowEnabledUpdate1.equals(workflowEnabledUpdate2));
        System.assert(workflowEnabledUpdate3.equals(workflowEnabledUpdate4));
        System.assertEquals(workflowEnabledUpdate1.hashCode(), workflowEnabledUpdate2.hashCode());
        System.assertEquals(workflowEnabledUpdate3.hashCode(), workflowEnabledUpdate4.hashCode());
    }
}
