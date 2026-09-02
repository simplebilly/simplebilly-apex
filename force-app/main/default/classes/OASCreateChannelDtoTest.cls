@isTest
private class OASCreateChannelDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = createChannelDto1;
        OASCreateChannelDto createChannelDto3 = new OASCreateChannelDto();
        OASCreateChannelDto createChannelDto4 = createChannelDto3;

        System.assert(createChannelDto1.equals(createChannelDto2));
        System.assert(createChannelDto2.equals(createChannelDto1));
        System.assert(createChannelDto1.equals(createChannelDto1));
        System.assert(createChannelDto3.equals(createChannelDto4));
        System.assert(createChannelDto4.equals(createChannelDto3));
        System.assert(createChannelDto3.equals(createChannelDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto3 = new OASCreateChannelDto();
        OASCreateChannelDto createChannelDto4 = new OASCreateChannelDto();

        System.assert(createChannelDto1.equals(createChannelDto2));
        System.assert(createChannelDto2.equals(createChannelDto1));
        System.assert(createChannelDto3.equals(createChannelDto4));
        System.assert(createChannelDto4.equals(createChannelDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = new OASCreateChannelDto();

        System.assertEquals(false, createChannelDto1.equals('foo'));
        System.assertEquals(false, createChannelDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = new OASCreateChannelDto();
        OASCreateChannelDto createChannelDto3;

        System.assertEquals(false, createChannelDto1.equals(createChannelDto3));
        System.assertEquals(false, createChannelDto2.equals(createChannelDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = new OASCreateChannelDto();

        System.assertEquals(createChannelDto1.hashCode(), createChannelDto1.hashCode());
        System.assertEquals(createChannelDto2.hashCode(), createChannelDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateChannelDto createChannelDto1 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto2 = OASCreateChannelDto.getExample();
        OASCreateChannelDto createChannelDto3 = new OASCreateChannelDto();
        OASCreateChannelDto createChannelDto4 = new OASCreateChannelDto();

        System.assert(createChannelDto1.equals(createChannelDto2));
        System.assert(createChannelDto3.equals(createChannelDto4));
        System.assertEquals(createChannelDto1.hashCode(), createChannelDto2.hashCode());
        System.assertEquals(createChannelDto3.hashCode(), createChannelDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateChannelDto createChannelDto = new OASCreateChannelDto();
        Map<String, String> x-property-mappings = createChannelDto.getx-property-mappings();
        System.assertEquals('channelType', x-property-mappings.get('channel_type'));
    }
}
