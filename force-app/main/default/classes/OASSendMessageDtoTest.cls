@isTest
private class OASSendMessageDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = sendMessageDto1;
        OASSendMessageDto sendMessageDto3 = new OASSendMessageDto();
        OASSendMessageDto sendMessageDto4 = sendMessageDto3;

        System.assert(sendMessageDto1.equals(sendMessageDto2));
        System.assert(sendMessageDto2.equals(sendMessageDto1));
        System.assert(sendMessageDto1.equals(sendMessageDto1));
        System.assert(sendMessageDto3.equals(sendMessageDto4));
        System.assert(sendMessageDto4.equals(sendMessageDto3));
        System.assert(sendMessageDto3.equals(sendMessageDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto3 = new OASSendMessageDto();
        OASSendMessageDto sendMessageDto4 = new OASSendMessageDto();

        System.assert(sendMessageDto1.equals(sendMessageDto2));
        System.assert(sendMessageDto2.equals(sendMessageDto1));
        System.assert(sendMessageDto3.equals(sendMessageDto4));
        System.assert(sendMessageDto4.equals(sendMessageDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = new OASSendMessageDto();

        System.assertEquals(false, sendMessageDto1.equals('foo'));
        System.assertEquals(false, sendMessageDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = new OASSendMessageDto();
        OASSendMessageDto sendMessageDto3;

        System.assertEquals(false, sendMessageDto1.equals(sendMessageDto3));
        System.assertEquals(false, sendMessageDto2.equals(sendMessageDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = new OASSendMessageDto();

        System.assertEquals(sendMessageDto1.hashCode(), sendMessageDto1.hashCode());
        System.assertEquals(sendMessageDto2.hashCode(), sendMessageDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendMessageDto sendMessageDto1 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto2 = OASSendMessageDto.getExample();
        OASSendMessageDto sendMessageDto3 = new OASSendMessageDto();
        OASSendMessageDto sendMessageDto4 = new OASSendMessageDto();

        System.assert(sendMessageDto1.equals(sendMessageDto2));
        System.assert(sendMessageDto3.equals(sendMessageDto4));
        System.assertEquals(sendMessageDto1.hashCode(), sendMessageDto2.hashCode());
        System.assertEquals(sendMessageDto3.hashCode(), sendMessageDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendMessageDto sendMessageDto = new OASSendMessageDto();
        Map<String, String> x-property-mappings = sendMessageDto.getx-property-mappings();
        System.assertEquals('isInternal', x-property-mappings.get('is_internal'));
    }
}
