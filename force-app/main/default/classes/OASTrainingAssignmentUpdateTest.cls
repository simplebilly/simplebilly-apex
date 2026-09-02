@isTest
private class OASTrainingAssignmentUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = trainingAssignmentUpdate1;
        OASTrainingAssignmentUpdate trainingAssignmentUpdate3 = new OASTrainingAssignmentUpdate();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate4 = trainingAssignmentUpdate3;

        System.assert(trainingAssignmentUpdate1.equals(trainingAssignmentUpdate2));
        System.assert(trainingAssignmentUpdate2.equals(trainingAssignmentUpdate1));
        System.assert(trainingAssignmentUpdate1.equals(trainingAssignmentUpdate1));
        System.assert(trainingAssignmentUpdate3.equals(trainingAssignmentUpdate4));
        System.assert(trainingAssignmentUpdate4.equals(trainingAssignmentUpdate3));
        System.assert(trainingAssignmentUpdate3.equals(trainingAssignmentUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate3 = new OASTrainingAssignmentUpdate();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate4 = new OASTrainingAssignmentUpdate();

        System.assert(trainingAssignmentUpdate1.equals(trainingAssignmentUpdate2));
        System.assert(trainingAssignmentUpdate2.equals(trainingAssignmentUpdate1));
        System.assert(trainingAssignmentUpdate3.equals(trainingAssignmentUpdate4));
        System.assert(trainingAssignmentUpdate4.equals(trainingAssignmentUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = new OASTrainingAssignmentUpdate();

        System.assertEquals(false, trainingAssignmentUpdate1.equals('foo'));
        System.assertEquals(false, trainingAssignmentUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = new OASTrainingAssignmentUpdate();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate3;

        System.assertEquals(false, trainingAssignmentUpdate1.equals(trainingAssignmentUpdate3));
        System.assertEquals(false, trainingAssignmentUpdate2.equals(trainingAssignmentUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = new OASTrainingAssignmentUpdate();

        System.assertEquals(trainingAssignmentUpdate1.hashCode(), trainingAssignmentUpdate1.hashCode());
        System.assertEquals(trainingAssignmentUpdate2.hashCode(), trainingAssignmentUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrainingAssignmentUpdate trainingAssignmentUpdate1 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate2 = OASTrainingAssignmentUpdate.getExample();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate3 = new OASTrainingAssignmentUpdate();
        OASTrainingAssignmentUpdate trainingAssignmentUpdate4 = new OASTrainingAssignmentUpdate();

        System.assert(trainingAssignmentUpdate1.equals(trainingAssignmentUpdate2));
        System.assert(trainingAssignmentUpdate3.equals(trainingAssignmentUpdate4));
        System.assertEquals(trainingAssignmentUpdate1.hashCode(), trainingAssignmentUpdate2.hashCode());
        System.assertEquals(trainingAssignmentUpdate3.hashCode(), trainingAssignmentUpdate4.hashCode());
    }
}
