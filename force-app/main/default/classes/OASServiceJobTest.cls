@isTest
private class OASServiceJobTest {
    @isTest
    private static void equalsSameInstance() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = serviceJob1;
        OASServiceJob serviceJob3 = new OASServiceJob();
        OASServiceJob serviceJob4 = serviceJob3;

        System.assert(serviceJob1.equals(serviceJob2));
        System.assert(serviceJob2.equals(serviceJob1));
        System.assert(serviceJob1.equals(serviceJob1));
        System.assert(serviceJob3.equals(serviceJob4));
        System.assert(serviceJob4.equals(serviceJob3));
        System.assert(serviceJob3.equals(serviceJob3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = OASServiceJob.getExample();
        OASServiceJob serviceJob3 = new OASServiceJob();
        OASServiceJob serviceJob4 = new OASServiceJob();

        System.assert(serviceJob1.equals(serviceJob2));
        System.assert(serviceJob2.equals(serviceJob1));
        System.assert(serviceJob3.equals(serviceJob4));
        System.assert(serviceJob4.equals(serviceJob3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = new OASServiceJob();

        System.assertEquals(false, serviceJob1.equals('foo'));
        System.assertEquals(false, serviceJob2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = new OASServiceJob();
        OASServiceJob serviceJob3;

        System.assertEquals(false, serviceJob1.equals(serviceJob3));
        System.assertEquals(false, serviceJob2.equals(serviceJob3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = new OASServiceJob();

        System.assertEquals(serviceJob1.hashCode(), serviceJob1.hashCode());
        System.assertEquals(serviceJob2.hashCode(), serviceJob2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASServiceJob serviceJob1 = OASServiceJob.getExample();
        OASServiceJob serviceJob2 = OASServiceJob.getExample();
        OASServiceJob serviceJob3 = new OASServiceJob();
        OASServiceJob serviceJob4 = new OASServiceJob();

        System.assert(serviceJob1.equals(serviceJob2));
        System.assert(serviceJob3.equals(serviceJob4));
        System.assertEquals(serviceJob1.hashCode(), serviceJob2.hashCode());
        System.assertEquals(serviceJob3.hashCode(), serviceJob4.hashCode());
    }
}
