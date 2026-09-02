@isTest
private class OASSubmitResultDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = submitResultDto1;
        OASSubmitResultDto submitResultDto3 = new OASSubmitResultDto();
        OASSubmitResultDto submitResultDto4 = submitResultDto3;

        System.assert(submitResultDto1.equals(submitResultDto2));
        System.assert(submitResultDto2.equals(submitResultDto1));
        System.assert(submitResultDto1.equals(submitResultDto1));
        System.assert(submitResultDto3.equals(submitResultDto4));
        System.assert(submitResultDto4.equals(submitResultDto3));
        System.assert(submitResultDto3.equals(submitResultDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto3 = new OASSubmitResultDto();
        OASSubmitResultDto submitResultDto4 = new OASSubmitResultDto();

        System.assert(submitResultDto1.equals(submitResultDto2));
        System.assert(submitResultDto2.equals(submitResultDto1));
        System.assert(submitResultDto3.equals(submitResultDto4));
        System.assert(submitResultDto4.equals(submitResultDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = new OASSubmitResultDto();

        System.assertEquals(false, submitResultDto1.equals('foo'));
        System.assertEquals(false, submitResultDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = new OASSubmitResultDto();
        OASSubmitResultDto submitResultDto3;

        System.assertEquals(false, submitResultDto1.equals(submitResultDto3));
        System.assertEquals(false, submitResultDto2.equals(submitResultDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = new OASSubmitResultDto();

        System.assertEquals(submitResultDto1.hashCode(), submitResultDto1.hashCode());
        System.assertEquals(submitResultDto2.hashCode(), submitResultDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubmitResultDto submitResultDto1 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto2 = OASSubmitResultDto.getExample();
        OASSubmitResultDto submitResultDto3 = new OASSubmitResultDto();
        OASSubmitResultDto submitResultDto4 = new OASSubmitResultDto();

        System.assert(submitResultDto1.equals(submitResultDto2));
        System.assert(submitResultDto3.equals(submitResultDto4));
        System.assertEquals(submitResultDto1.hashCode(), submitResultDto2.hashCode());
        System.assertEquals(submitResultDto3.hashCode(), submitResultDto4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSubmitResultDto submitResultDto = new OASSubmitResultDto();
        System.assertEquals(new List<Integer>(), submitResultDto.answers);
        System.assertEquals(null, submitResultDto.assignmentId);
        System.assertEquals(null, submitResultDto.score);
        System.assertEquals(null, submitResultDto.trainingCode);
    }
}
