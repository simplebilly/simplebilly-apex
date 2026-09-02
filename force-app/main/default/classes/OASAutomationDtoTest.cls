@isTest
private class OASAutomationDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = automationDto1;
        OASAutomationDto automationDto3 = new OASAutomationDto();
        OASAutomationDto automationDto4 = automationDto3;

        System.assert(automationDto1.equals(automationDto2));
        System.assert(automationDto2.equals(automationDto1));
        System.assert(automationDto1.equals(automationDto1));
        System.assert(automationDto3.equals(automationDto4));
        System.assert(automationDto4.equals(automationDto3));
        System.assert(automationDto3.equals(automationDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = OASAutomationDto.getExample();
        OASAutomationDto automationDto3 = new OASAutomationDto();
        OASAutomationDto automationDto4 = new OASAutomationDto();

        System.assert(automationDto1.equals(automationDto2));
        System.assert(automationDto2.equals(automationDto1));
        System.assert(automationDto3.equals(automationDto4));
        System.assert(automationDto4.equals(automationDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = new OASAutomationDto();

        System.assertEquals(false, automationDto1.equals('foo'));
        System.assertEquals(false, automationDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = new OASAutomationDto();
        OASAutomationDto automationDto3;

        System.assertEquals(false, automationDto1.equals(automationDto3));
        System.assertEquals(false, automationDto2.equals(automationDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = new OASAutomationDto();

        System.assertEquals(automationDto1.hashCode(), automationDto1.hashCode());
        System.assertEquals(automationDto2.hashCode(), automationDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAutomationDto automationDto1 = OASAutomationDto.getExample();
        OASAutomationDto automationDto2 = OASAutomationDto.getExample();
        OASAutomationDto automationDto3 = new OASAutomationDto();
        OASAutomationDto automationDto4 = new OASAutomationDto();

        System.assert(automationDto1.equals(automationDto2));
        System.assert(automationDto3.equals(automationDto4));
        System.assertEquals(automationDto1.hashCode(), automationDto2.hashCode());
        System.assertEquals(automationDto3.hashCode(), automationDto4.hashCode());
    }
}
