@isTest
private class OASQuizQuestionTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = quizQuestion1;
        OASQuizQuestion quizQuestion3 = new OASQuizQuestion();
        OASQuizQuestion quizQuestion4 = quizQuestion3;

        System.assert(quizQuestion1.equals(quizQuestion2));
        System.assert(quizQuestion2.equals(quizQuestion1));
        System.assert(quizQuestion1.equals(quizQuestion1));
        System.assert(quizQuestion3.equals(quizQuestion4));
        System.assert(quizQuestion4.equals(quizQuestion3));
        System.assert(quizQuestion3.equals(quizQuestion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion3 = new OASQuizQuestion();
        OASQuizQuestion quizQuestion4 = new OASQuizQuestion();

        System.assert(quizQuestion1.equals(quizQuestion2));
        System.assert(quizQuestion2.equals(quizQuestion1));
        System.assert(quizQuestion3.equals(quizQuestion4));
        System.assert(quizQuestion4.equals(quizQuestion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = new OASQuizQuestion();

        System.assertEquals(false, quizQuestion1.equals('foo'));
        System.assertEquals(false, quizQuestion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = new OASQuizQuestion();
        OASQuizQuestion quizQuestion3;

        System.assertEquals(false, quizQuestion1.equals(quizQuestion3));
        System.assertEquals(false, quizQuestion2.equals(quizQuestion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = new OASQuizQuestion();

        System.assertEquals(quizQuestion1.hashCode(), quizQuestion1.hashCode());
        System.assertEquals(quizQuestion2.hashCode(), quizQuestion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuizQuestion quizQuestion1 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion2 = OASQuizQuestion.getExample();
        OASQuizQuestion quizQuestion3 = new OASQuizQuestion();
        OASQuizQuestion quizQuestion4 = new OASQuizQuestion();

        System.assert(quizQuestion1.equals(quizQuestion2));
        System.assert(quizQuestion3.equals(quizQuestion4));
        System.assertEquals(quizQuestion1.hashCode(), quizQuestion2.hashCode());
        System.assertEquals(quizQuestion3.hashCode(), quizQuestion4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQuizQuestion quizQuestion = new OASQuizQuestion();
        System.assertEquals(new List<String>(), quizQuestion.options);
        System.assertEquals(new List<String>(), quizQuestion.optionsEn);
        System.assertEquals(null, quizQuestion.id);
        System.assertEquals(null, quizQuestion.question);
        System.assertEquals(null, quizQuestion.questionEn);
    }
}
