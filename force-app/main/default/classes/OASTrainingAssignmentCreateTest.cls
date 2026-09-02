@isTest
private class OASTrainingAssignmentCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = trainingAssignmentCreate1;
        OASTrainingAssignmentCreate trainingAssignmentCreate3 = new OASTrainingAssignmentCreate();
        OASTrainingAssignmentCreate trainingAssignmentCreate4 = trainingAssignmentCreate3;

        System.assert(trainingAssignmentCreate1.equals(trainingAssignmentCreate2));
        System.assert(trainingAssignmentCreate2.equals(trainingAssignmentCreate1));
        System.assert(trainingAssignmentCreate1.equals(trainingAssignmentCreate1));
        System.assert(trainingAssignmentCreate3.equals(trainingAssignmentCreate4));
        System.assert(trainingAssignmentCreate4.equals(trainingAssignmentCreate3));
        System.assert(trainingAssignmentCreate3.equals(trainingAssignmentCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate3 = new OASTrainingAssignmentCreate();
        OASTrainingAssignmentCreate trainingAssignmentCreate4 = new OASTrainingAssignmentCreate();

        System.assert(trainingAssignmentCreate1.equals(trainingAssignmentCreate2));
        System.assert(trainingAssignmentCreate2.equals(trainingAssignmentCreate1));
        System.assert(trainingAssignmentCreate3.equals(trainingAssignmentCreate4));
        System.assert(trainingAssignmentCreate4.equals(trainingAssignmentCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = new OASTrainingAssignmentCreate();

        System.assertEquals(false, trainingAssignmentCreate1.equals('foo'));
        System.assertEquals(false, trainingAssignmentCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = new OASTrainingAssignmentCreate();
        OASTrainingAssignmentCreate trainingAssignmentCreate3;

        System.assertEquals(false, trainingAssignmentCreate1.equals(trainingAssignmentCreate3));
        System.assertEquals(false, trainingAssignmentCreate2.equals(trainingAssignmentCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = new OASTrainingAssignmentCreate();

        System.assertEquals(trainingAssignmentCreate1.hashCode(), trainingAssignmentCreate1.hashCode());
        System.assertEquals(trainingAssignmentCreate2.hashCode(), trainingAssignmentCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrainingAssignmentCreate trainingAssignmentCreate1 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate2 = OASTrainingAssignmentCreate.getExample();
        OASTrainingAssignmentCreate trainingAssignmentCreate3 = new OASTrainingAssignmentCreate();
        OASTrainingAssignmentCreate trainingAssignmentCreate4 = new OASTrainingAssignmentCreate();

        System.assert(trainingAssignmentCreate1.equals(trainingAssignmentCreate2));
        System.assert(trainingAssignmentCreate3.equals(trainingAssignmentCreate4));
        System.assertEquals(trainingAssignmentCreate1.hashCode(), trainingAssignmentCreate2.hashCode());
        System.assertEquals(trainingAssignmentCreate3.hashCode(), trainingAssignmentCreate4.hashCode());
    }
}
