@isTest
private class OASAppointmentStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = appointmentStatusUpdate1;
        OASAppointmentStatusUpdate appointmentStatusUpdate3 = new OASAppointmentStatusUpdate();
        OASAppointmentStatusUpdate appointmentStatusUpdate4 = appointmentStatusUpdate3;

        System.assert(appointmentStatusUpdate1.equals(appointmentStatusUpdate2));
        System.assert(appointmentStatusUpdate2.equals(appointmentStatusUpdate1));
        System.assert(appointmentStatusUpdate1.equals(appointmentStatusUpdate1));
        System.assert(appointmentStatusUpdate3.equals(appointmentStatusUpdate4));
        System.assert(appointmentStatusUpdate4.equals(appointmentStatusUpdate3));
        System.assert(appointmentStatusUpdate3.equals(appointmentStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate3 = new OASAppointmentStatusUpdate();
        OASAppointmentStatusUpdate appointmentStatusUpdate4 = new OASAppointmentStatusUpdate();

        System.assert(appointmentStatusUpdate1.equals(appointmentStatusUpdate2));
        System.assert(appointmentStatusUpdate2.equals(appointmentStatusUpdate1));
        System.assert(appointmentStatusUpdate3.equals(appointmentStatusUpdate4));
        System.assert(appointmentStatusUpdate4.equals(appointmentStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = new OASAppointmentStatusUpdate();

        System.assertEquals(false, appointmentStatusUpdate1.equals('foo'));
        System.assertEquals(false, appointmentStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = new OASAppointmentStatusUpdate();
        OASAppointmentStatusUpdate appointmentStatusUpdate3;

        System.assertEquals(false, appointmentStatusUpdate1.equals(appointmentStatusUpdate3));
        System.assertEquals(false, appointmentStatusUpdate2.equals(appointmentStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = new OASAppointmentStatusUpdate();

        System.assertEquals(appointmentStatusUpdate1.hashCode(), appointmentStatusUpdate1.hashCode());
        System.assertEquals(appointmentStatusUpdate2.hashCode(), appointmentStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAppointmentStatusUpdate appointmentStatusUpdate1 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate2 = OASAppointmentStatusUpdate.getExample();
        OASAppointmentStatusUpdate appointmentStatusUpdate3 = new OASAppointmentStatusUpdate();
        OASAppointmentStatusUpdate appointmentStatusUpdate4 = new OASAppointmentStatusUpdate();

        System.assert(appointmentStatusUpdate1.equals(appointmentStatusUpdate2));
        System.assert(appointmentStatusUpdate3.equals(appointmentStatusUpdate4));
        System.assertEquals(appointmentStatusUpdate1.hashCode(), appointmentStatusUpdate2.hashCode());
        System.assertEquals(appointmentStatusUpdate3.hashCode(), appointmentStatusUpdate4.hashCode());
    }
}
