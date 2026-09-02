@isTest
private class OASNotificationDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = notificationDto1;
        OASNotificationDto notificationDto3 = new OASNotificationDto();
        OASNotificationDto notificationDto4 = notificationDto3;

        System.assert(notificationDto1.equals(notificationDto2));
        System.assert(notificationDto2.equals(notificationDto1));
        System.assert(notificationDto1.equals(notificationDto1));
        System.assert(notificationDto3.equals(notificationDto4));
        System.assert(notificationDto4.equals(notificationDto3));
        System.assert(notificationDto3.equals(notificationDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto3 = new OASNotificationDto();
        OASNotificationDto notificationDto4 = new OASNotificationDto();

        System.assert(notificationDto1.equals(notificationDto2));
        System.assert(notificationDto2.equals(notificationDto1));
        System.assert(notificationDto3.equals(notificationDto4));
        System.assert(notificationDto4.equals(notificationDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = new OASNotificationDto();

        System.assertEquals(false, notificationDto1.equals('foo'));
        System.assertEquals(false, notificationDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = new OASNotificationDto();
        OASNotificationDto notificationDto3;

        System.assertEquals(false, notificationDto1.equals(notificationDto3));
        System.assertEquals(false, notificationDto2.equals(notificationDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = new OASNotificationDto();

        System.assertEquals(notificationDto1.hashCode(), notificationDto1.hashCode());
        System.assertEquals(notificationDto2.hashCode(), notificationDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASNotificationDto notificationDto1 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto2 = OASNotificationDto.getExample();
        OASNotificationDto notificationDto3 = new OASNotificationDto();
        OASNotificationDto notificationDto4 = new OASNotificationDto();

        System.assert(notificationDto1.equals(notificationDto2));
        System.assert(notificationDto3.equals(notificationDto4));
        System.assertEquals(notificationDto1.hashCode(), notificationDto2.hashCode());
        System.assertEquals(notificationDto3.hashCode(), notificationDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASNotificationDto notificationDto = new OASNotificationDto();
        Map<String, String> x-property-mappings = notificationDto.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('isRead', x-property-mappings.get('is_read'));
        System.assertEquals('sentViaEmail', x-property-mappings.get('sent_via_email'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('userId', x-property-mappings.get('user_id'));
    }
}
