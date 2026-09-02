@isTest
private class OASOrderStateUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = orderStateUpdate1;
        OASOrderStateUpdate orderStateUpdate3 = new OASOrderStateUpdate();
        OASOrderStateUpdate orderStateUpdate4 = orderStateUpdate3;

        System.assert(orderStateUpdate1.equals(orderStateUpdate2));
        System.assert(orderStateUpdate2.equals(orderStateUpdate1));
        System.assert(orderStateUpdate1.equals(orderStateUpdate1));
        System.assert(orderStateUpdate3.equals(orderStateUpdate4));
        System.assert(orderStateUpdate4.equals(orderStateUpdate3));
        System.assert(orderStateUpdate3.equals(orderStateUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate3 = new OASOrderStateUpdate();
        OASOrderStateUpdate orderStateUpdate4 = new OASOrderStateUpdate();

        System.assert(orderStateUpdate1.equals(orderStateUpdate2));
        System.assert(orderStateUpdate2.equals(orderStateUpdate1));
        System.assert(orderStateUpdate3.equals(orderStateUpdate4));
        System.assert(orderStateUpdate4.equals(orderStateUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = new OASOrderStateUpdate();

        System.assertEquals(false, orderStateUpdate1.equals('foo'));
        System.assertEquals(false, orderStateUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = new OASOrderStateUpdate();
        OASOrderStateUpdate orderStateUpdate3;

        System.assertEquals(false, orderStateUpdate1.equals(orderStateUpdate3));
        System.assertEquals(false, orderStateUpdate2.equals(orderStateUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = new OASOrderStateUpdate();

        System.assertEquals(orderStateUpdate1.hashCode(), orderStateUpdate1.hashCode());
        System.assertEquals(orderStateUpdate2.hashCode(), orderStateUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderStateUpdate orderStateUpdate1 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate2 = OASOrderStateUpdate.getExample();
        OASOrderStateUpdate orderStateUpdate3 = new OASOrderStateUpdate();
        OASOrderStateUpdate orderStateUpdate4 = new OASOrderStateUpdate();

        System.assert(orderStateUpdate1.equals(orderStateUpdate2));
        System.assert(orderStateUpdate3.equals(orderStateUpdate4));
        System.assertEquals(orderStateUpdate1.hashCode(), orderStateUpdate2.hashCode());
        System.assertEquals(orderStateUpdate3.hashCode(), orderStateUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderStateUpdate orderStateUpdate = new OASOrderStateUpdate();
        Map<String, String> x-property-mappings = orderStateUpdate.getx-property-mappings();
        System.assertEquals('sendStateToShop', x-property-mappings.get('send_state_to_shop'));
    }
}
