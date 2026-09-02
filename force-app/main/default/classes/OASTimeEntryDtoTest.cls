@isTest
private class OASTimeEntryDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = timeEntryDto1;
        OASTimeEntryDto timeEntryDto3 = new OASTimeEntryDto();
        OASTimeEntryDto timeEntryDto4 = timeEntryDto3;

        System.assert(timeEntryDto1.equals(timeEntryDto2));
        System.assert(timeEntryDto2.equals(timeEntryDto1));
        System.assert(timeEntryDto1.equals(timeEntryDto1));
        System.assert(timeEntryDto3.equals(timeEntryDto4));
        System.assert(timeEntryDto4.equals(timeEntryDto3));
        System.assert(timeEntryDto3.equals(timeEntryDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto3 = new OASTimeEntryDto();
        OASTimeEntryDto timeEntryDto4 = new OASTimeEntryDto();

        System.assert(timeEntryDto1.equals(timeEntryDto2));
        System.assert(timeEntryDto2.equals(timeEntryDto1));
        System.assert(timeEntryDto3.equals(timeEntryDto4));
        System.assert(timeEntryDto4.equals(timeEntryDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = new OASTimeEntryDto();

        System.assertEquals(false, timeEntryDto1.equals('foo'));
        System.assertEquals(false, timeEntryDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = new OASTimeEntryDto();
        OASTimeEntryDto timeEntryDto3;

        System.assertEquals(false, timeEntryDto1.equals(timeEntryDto3));
        System.assertEquals(false, timeEntryDto2.equals(timeEntryDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = new OASTimeEntryDto();

        System.assertEquals(timeEntryDto1.hashCode(), timeEntryDto1.hashCode());
        System.assertEquals(timeEntryDto2.hashCode(), timeEntryDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimeEntryDto timeEntryDto1 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto2 = OASTimeEntryDto.getExample();
        OASTimeEntryDto timeEntryDto3 = new OASTimeEntryDto();
        OASTimeEntryDto timeEntryDto4 = new OASTimeEntryDto();

        System.assert(timeEntryDto1.equals(timeEntryDto2));
        System.assert(timeEntryDto3.equals(timeEntryDto4));
        System.assertEquals(timeEntryDto1.hashCode(), timeEntryDto2.hashCode());
        System.assertEquals(timeEntryDto3.hashCode(), timeEntryDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTimeEntryDto timeEntryDto = new OASTimeEntryDto();
        Map<String, String> x-property-mappings = timeEntryDto.getx-property-mappings();
        System.assertEquals('clockIn', x-property-mappings.get('clock_in'));
        System.assertEquals('clockOut', x-property-mappings.get('clock_out'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('employeeId', x-property-mappings.get('employee_id'));
        System.assertEquals('timeEntryId', x-property-mappings.get('time_entry_id'));
    }
}
