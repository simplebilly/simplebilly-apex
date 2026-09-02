@isTest
private class OASTrainingAssignmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = trainingAssignment1;
        OASTrainingAssignment trainingAssignment3 = new OASTrainingAssignment();
        OASTrainingAssignment trainingAssignment4 = trainingAssignment3;

        System.assert(trainingAssignment1.equals(trainingAssignment2));
        System.assert(trainingAssignment2.equals(trainingAssignment1));
        System.assert(trainingAssignment1.equals(trainingAssignment1));
        System.assert(trainingAssignment3.equals(trainingAssignment4));
        System.assert(trainingAssignment4.equals(trainingAssignment3));
        System.assert(trainingAssignment3.equals(trainingAssignment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment3 = new OASTrainingAssignment();
        OASTrainingAssignment trainingAssignment4 = new OASTrainingAssignment();

        System.assert(trainingAssignment1.equals(trainingAssignment2));
        System.assert(trainingAssignment2.equals(trainingAssignment1));
        System.assert(trainingAssignment3.equals(trainingAssignment4));
        System.assert(trainingAssignment4.equals(trainingAssignment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = new OASTrainingAssignment();

        System.assertEquals(false, trainingAssignment1.equals('foo'));
        System.assertEquals(false, trainingAssignment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = new OASTrainingAssignment();
        OASTrainingAssignment trainingAssignment3;

        System.assertEquals(false, trainingAssignment1.equals(trainingAssignment3));
        System.assertEquals(false, trainingAssignment2.equals(trainingAssignment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = new OASTrainingAssignment();

        System.assertEquals(trainingAssignment1.hashCode(), trainingAssignment1.hashCode());
        System.assertEquals(trainingAssignment2.hashCode(), trainingAssignment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrainingAssignment trainingAssignment1 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment2 = OASTrainingAssignment.getExample();
        OASTrainingAssignment trainingAssignment3 = new OASTrainingAssignment();
        OASTrainingAssignment trainingAssignment4 = new OASTrainingAssignment();

        System.assert(trainingAssignment1.equals(trainingAssignment2));
        System.assert(trainingAssignment3.equals(trainingAssignment4));
        System.assertEquals(trainingAssignment1.hashCode(), trainingAssignment2.hashCode());
        System.assertEquals(trainingAssignment3.hashCode(), trainingAssignment4.hashCode());
    }
}
