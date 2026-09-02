@isTest
private class OASTrainingContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = trainingContent1;
        OASTrainingContent trainingContent3 = new OASTrainingContent();
        OASTrainingContent trainingContent4 = trainingContent3;

        System.assert(trainingContent1.equals(trainingContent2));
        System.assert(trainingContent2.equals(trainingContent1));
        System.assert(trainingContent1.equals(trainingContent1));
        System.assert(trainingContent3.equals(trainingContent4));
        System.assert(trainingContent4.equals(trainingContent3));
        System.assert(trainingContent3.equals(trainingContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent3 = new OASTrainingContent();
        OASTrainingContent trainingContent4 = new OASTrainingContent();

        System.assert(trainingContent1.equals(trainingContent2));
        System.assert(trainingContent2.equals(trainingContent1));
        System.assert(trainingContent3.equals(trainingContent4));
        System.assert(trainingContent4.equals(trainingContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = new OASTrainingContent();

        System.assertEquals(false, trainingContent1.equals('foo'));
        System.assertEquals(false, trainingContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = new OASTrainingContent();
        OASTrainingContent trainingContent3;

        System.assertEquals(false, trainingContent1.equals(trainingContent3));
        System.assertEquals(false, trainingContent2.equals(trainingContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = new OASTrainingContent();

        System.assertEquals(trainingContent1.hashCode(), trainingContent1.hashCode());
        System.assertEquals(trainingContent2.hashCode(), trainingContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrainingContent trainingContent1 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent2 = OASTrainingContent.getExample();
        OASTrainingContent trainingContent3 = new OASTrainingContent();
        OASTrainingContent trainingContent4 = new OASTrainingContent();

        System.assert(trainingContent1.equals(trainingContent2));
        System.assert(trainingContent3.equals(trainingContent4));
        System.assertEquals(trainingContent1.hashCode(), trainingContent2.hashCode());
        System.assertEquals(trainingContent3.hashCode(), trainingContent4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTrainingContent trainingContent = new OASTrainingContent();
        System.assertEquals(new List<OASQuizQuestion>(), trainingContent.quiz);
        System.assertEquals(new List<OASSection>(), trainingContent.sections);
        System.assertEquals(null, trainingContent.code);
        System.assertEquals(null, trainingContent.contact);
        System.assertEquals(null, trainingContent.passScore);
        System.assertEquals(null, trainingContent.title);
        System.assertEquals(null, trainingContent.titleEn);
    }
}
