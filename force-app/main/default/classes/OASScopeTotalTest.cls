@isTest
private class OASScopeTotalTest {
    @isTest
    private static void equalsSameInstance() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = scopeTotal1;
        OASScopeTotal scopeTotal3 = new OASScopeTotal();
        OASScopeTotal scopeTotal4 = scopeTotal3;

        System.assert(scopeTotal1.equals(scopeTotal2));
        System.assert(scopeTotal2.equals(scopeTotal1));
        System.assert(scopeTotal1.equals(scopeTotal1));
        System.assert(scopeTotal3.equals(scopeTotal4));
        System.assert(scopeTotal4.equals(scopeTotal3));
        System.assert(scopeTotal3.equals(scopeTotal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal3 = new OASScopeTotal();
        OASScopeTotal scopeTotal4 = new OASScopeTotal();

        System.assert(scopeTotal1.equals(scopeTotal2));
        System.assert(scopeTotal2.equals(scopeTotal1));
        System.assert(scopeTotal3.equals(scopeTotal4));
        System.assert(scopeTotal4.equals(scopeTotal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = new OASScopeTotal();

        System.assertEquals(false, scopeTotal1.equals('foo'));
        System.assertEquals(false, scopeTotal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = new OASScopeTotal();
        OASScopeTotal scopeTotal3;

        System.assertEquals(false, scopeTotal1.equals(scopeTotal3));
        System.assertEquals(false, scopeTotal2.equals(scopeTotal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = new OASScopeTotal();

        System.assertEquals(scopeTotal1.hashCode(), scopeTotal1.hashCode());
        System.assertEquals(scopeTotal2.hashCode(), scopeTotal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScopeTotal scopeTotal1 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal2 = OASScopeTotal.getExample();
        OASScopeTotal scopeTotal3 = new OASScopeTotal();
        OASScopeTotal scopeTotal4 = new OASScopeTotal();

        System.assert(scopeTotal1.equals(scopeTotal2));
        System.assert(scopeTotal3.equals(scopeTotal4));
        System.assertEquals(scopeTotal1.hashCode(), scopeTotal2.hashCode());
        System.assertEquals(scopeTotal3.hashCode(), scopeTotal4.hashCode());
    }
}
