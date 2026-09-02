@isTest
private class OASApplicationStatusDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = applicationStatusDto1;
        OASApplicationStatusDto applicationStatusDto3 = new OASApplicationStatusDto();
        OASApplicationStatusDto applicationStatusDto4 = applicationStatusDto3;

        System.assert(applicationStatusDto1.equals(applicationStatusDto2));
        System.assert(applicationStatusDto2.equals(applicationStatusDto1));
        System.assert(applicationStatusDto1.equals(applicationStatusDto1));
        System.assert(applicationStatusDto3.equals(applicationStatusDto4));
        System.assert(applicationStatusDto4.equals(applicationStatusDto3));
        System.assert(applicationStatusDto3.equals(applicationStatusDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto3 = new OASApplicationStatusDto();
        OASApplicationStatusDto applicationStatusDto4 = new OASApplicationStatusDto();

        System.assert(applicationStatusDto1.equals(applicationStatusDto2));
        System.assert(applicationStatusDto2.equals(applicationStatusDto1));
        System.assert(applicationStatusDto3.equals(applicationStatusDto4));
        System.assert(applicationStatusDto4.equals(applicationStatusDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = new OASApplicationStatusDto();

        System.assertEquals(false, applicationStatusDto1.equals('foo'));
        System.assertEquals(false, applicationStatusDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = new OASApplicationStatusDto();
        OASApplicationStatusDto applicationStatusDto3;

        System.assertEquals(false, applicationStatusDto1.equals(applicationStatusDto3));
        System.assertEquals(false, applicationStatusDto2.equals(applicationStatusDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = new OASApplicationStatusDto();

        System.assertEquals(applicationStatusDto1.hashCode(), applicationStatusDto1.hashCode());
        System.assertEquals(applicationStatusDto2.hashCode(), applicationStatusDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApplicationStatusDto applicationStatusDto1 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto2 = OASApplicationStatusDto.getExample();
        OASApplicationStatusDto applicationStatusDto3 = new OASApplicationStatusDto();
        OASApplicationStatusDto applicationStatusDto4 = new OASApplicationStatusDto();

        System.assert(applicationStatusDto1.equals(applicationStatusDto2));
        System.assert(applicationStatusDto3.equals(applicationStatusDto4));
        System.assertEquals(applicationStatusDto1.hashCode(), applicationStatusDto2.hashCode());
        System.assertEquals(applicationStatusDto3.hashCode(), applicationStatusDto4.hashCode());
    }
}
