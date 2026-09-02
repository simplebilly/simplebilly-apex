@isTest
private class OASEmissionTargetTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = emissionTarget1;
        OASEmissionTarget emissionTarget3 = new OASEmissionTarget();
        OASEmissionTarget emissionTarget4 = emissionTarget3;

        System.assert(emissionTarget1.equals(emissionTarget2));
        System.assert(emissionTarget2.equals(emissionTarget1));
        System.assert(emissionTarget1.equals(emissionTarget1));
        System.assert(emissionTarget3.equals(emissionTarget4));
        System.assert(emissionTarget4.equals(emissionTarget3));
        System.assert(emissionTarget3.equals(emissionTarget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget3 = new OASEmissionTarget();
        OASEmissionTarget emissionTarget4 = new OASEmissionTarget();

        System.assert(emissionTarget1.equals(emissionTarget2));
        System.assert(emissionTarget2.equals(emissionTarget1));
        System.assert(emissionTarget3.equals(emissionTarget4));
        System.assert(emissionTarget4.equals(emissionTarget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = new OASEmissionTarget();

        System.assertEquals(false, emissionTarget1.equals('foo'));
        System.assertEquals(false, emissionTarget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = new OASEmissionTarget();
        OASEmissionTarget emissionTarget3;

        System.assertEquals(false, emissionTarget1.equals(emissionTarget3));
        System.assertEquals(false, emissionTarget2.equals(emissionTarget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = new OASEmissionTarget();

        System.assertEquals(emissionTarget1.hashCode(), emissionTarget1.hashCode());
        System.assertEquals(emissionTarget2.hashCode(), emissionTarget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmissionTarget emissionTarget1 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget2 = OASEmissionTarget.getExample();
        OASEmissionTarget emissionTarget3 = new OASEmissionTarget();
        OASEmissionTarget emissionTarget4 = new OASEmissionTarget();

        System.assert(emissionTarget1.equals(emissionTarget2));
        System.assert(emissionTarget3.equals(emissionTarget4));
        System.assertEquals(emissionTarget1.hashCode(), emissionTarget2.hashCode());
        System.assertEquals(emissionTarget3.hashCode(), emissionTarget4.hashCode());
    }
}
