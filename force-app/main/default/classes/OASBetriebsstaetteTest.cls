@isTest
private class OASBetriebsstaetteTest {
    @isTest
    private static void equalsSameInstance() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = betriebsstaette1;
        OASBetriebsstaette betriebsstaette3 = new OASBetriebsstaette();
        OASBetriebsstaette betriebsstaette4 = betriebsstaette3;

        System.assert(betriebsstaette1.equals(betriebsstaette2));
        System.assert(betriebsstaette2.equals(betriebsstaette1));
        System.assert(betriebsstaette1.equals(betriebsstaette1));
        System.assert(betriebsstaette3.equals(betriebsstaette4));
        System.assert(betriebsstaette4.equals(betriebsstaette3));
        System.assert(betriebsstaette3.equals(betriebsstaette3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette3 = new OASBetriebsstaette();
        OASBetriebsstaette betriebsstaette4 = new OASBetriebsstaette();

        System.assert(betriebsstaette1.equals(betriebsstaette2));
        System.assert(betriebsstaette2.equals(betriebsstaette1));
        System.assert(betriebsstaette3.equals(betriebsstaette4));
        System.assert(betriebsstaette4.equals(betriebsstaette3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = new OASBetriebsstaette();

        System.assertEquals(false, betriebsstaette1.equals('foo'));
        System.assertEquals(false, betriebsstaette2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = new OASBetriebsstaette();
        OASBetriebsstaette betriebsstaette3;

        System.assertEquals(false, betriebsstaette1.equals(betriebsstaette3));
        System.assertEquals(false, betriebsstaette2.equals(betriebsstaette3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = new OASBetriebsstaette();

        System.assertEquals(betriebsstaette1.hashCode(), betriebsstaette1.hashCode());
        System.assertEquals(betriebsstaette2.hashCode(), betriebsstaette2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBetriebsstaette betriebsstaette1 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette2 = OASBetriebsstaette.getExample();
        OASBetriebsstaette betriebsstaette3 = new OASBetriebsstaette();
        OASBetriebsstaette betriebsstaette4 = new OASBetriebsstaette();

        System.assert(betriebsstaette1.equals(betriebsstaette2));
        System.assert(betriebsstaette3.equals(betriebsstaette4));
        System.assertEquals(betriebsstaette1.hashCode(), betriebsstaette2.hashCode());
        System.assertEquals(betriebsstaette3.hashCode(), betriebsstaette4.hashCode());
    }
}
