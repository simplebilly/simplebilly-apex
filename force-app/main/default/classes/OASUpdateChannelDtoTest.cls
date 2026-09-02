@isTest
private class OASUpdateChannelDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = updateChannelDto1;
        OASUpdateChannelDto updateChannelDto3 = new OASUpdateChannelDto();
        OASUpdateChannelDto updateChannelDto4 = updateChannelDto3;

        System.assert(updateChannelDto1.equals(updateChannelDto2));
        System.assert(updateChannelDto2.equals(updateChannelDto1));
        System.assert(updateChannelDto1.equals(updateChannelDto1));
        System.assert(updateChannelDto3.equals(updateChannelDto4));
        System.assert(updateChannelDto4.equals(updateChannelDto3));
        System.assert(updateChannelDto3.equals(updateChannelDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto3 = new OASUpdateChannelDto();
        OASUpdateChannelDto updateChannelDto4 = new OASUpdateChannelDto();

        System.assert(updateChannelDto1.equals(updateChannelDto2));
        System.assert(updateChannelDto2.equals(updateChannelDto1));
        System.assert(updateChannelDto3.equals(updateChannelDto4));
        System.assert(updateChannelDto4.equals(updateChannelDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = new OASUpdateChannelDto();

        System.assertEquals(false, updateChannelDto1.equals('foo'));
        System.assertEquals(false, updateChannelDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = new OASUpdateChannelDto();
        OASUpdateChannelDto updateChannelDto3;

        System.assertEquals(false, updateChannelDto1.equals(updateChannelDto3));
        System.assertEquals(false, updateChannelDto2.equals(updateChannelDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = new OASUpdateChannelDto();

        System.assertEquals(updateChannelDto1.hashCode(), updateChannelDto1.hashCode());
        System.assertEquals(updateChannelDto2.hashCode(), updateChannelDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateChannelDto updateChannelDto1 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto2 = OASUpdateChannelDto.getExample();
        OASUpdateChannelDto updateChannelDto3 = new OASUpdateChannelDto();
        OASUpdateChannelDto updateChannelDto4 = new OASUpdateChannelDto();

        System.assert(updateChannelDto1.equals(updateChannelDto2));
        System.assert(updateChannelDto3.equals(updateChannelDto4));
        System.assertEquals(updateChannelDto1.hashCode(), updateChannelDto2.hashCode());
        System.assertEquals(updateChannelDto3.hashCode(), updateChannelDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateChannelDto updateChannelDto = new OASUpdateChannelDto();
        Map<String, String> x-property-mappings = updateChannelDto.getx-property-mappings();
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
    }
}
