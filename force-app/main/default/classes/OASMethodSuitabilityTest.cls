@isTest
private class OASMethodSuitabilityTest {
    @isTest
    private static void equalsSameInstance() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = methodSuitability1;
        OASMethodSuitability methodSuitability3 = new OASMethodSuitability();
        OASMethodSuitability methodSuitability4 = methodSuitability3;

        System.assert(methodSuitability1.equals(methodSuitability2));
        System.assert(methodSuitability2.equals(methodSuitability1));
        System.assert(methodSuitability1.equals(methodSuitability1));
        System.assert(methodSuitability3.equals(methodSuitability4));
        System.assert(methodSuitability4.equals(methodSuitability3));
        System.assert(methodSuitability3.equals(methodSuitability3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability3 = new OASMethodSuitability();
        OASMethodSuitability methodSuitability4 = new OASMethodSuitability();

        System.assert(methodSuitability1.equals(methodSuitability2));
        System.assert(methodSuitability2.equals(methodSuitability1));
        System.assert(methodSuitability3.equals(methodSuitability4));
        System.assert(methodSuitability4.equals(methodSuitability3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = new OASMethodSuitability();

        System.assertEquals(false, methodSuitability1.equals('foo'));
        System.assertEquals(false, methodSuitability2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = new OASMethodSuitability();
        OASMethodSuitability methodSuitability3;

        System.assertEquals(false, methodSuitability1.equals(methodSuitability3));
        System.assertEquals(false, methodSuitability2.equals(methodSuitability3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = new OASMethodSuitability();

        System.assertEquals(methodSuitability1.hashCode(), methodSuitability1.hashCode());
        System.assertEquals(methodSuitability2.hashCode(), methodSuitability2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMethodSuitability methodSuitability1 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability2 = OASMethodSuitability.getExample();
        OASMethodSuitability methodSuitability3 = new OASMethodSuitability();
        OASMethodSuitability methodSuitability4 = new OASMethodSuitability();

        System.assert(methodSuitability1.equals(methodSuitability2));
        System.assert(methodSuitability3.equals(methodSuitability4));
        System.assertEquals(methodSuitability1.hashCode(), methodSuitability2.hashCode());
        System.assertEquals(methodSuitability3.hashCode(), methodSuitability4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASMethodSuitability methodSuitability = new OASMethodSuitability();
        System.assertEquals(new List<String>(), methodSuitability.reasons);
        System.assertEquals(null, methodSuitability.carrier);
        System.assertEquals(null, methodSuitability.rate);
        System.assertEquals(null, methodSuitability.service);
        System.assertEquals(null, methodSuitability.suitable);
    }
}
