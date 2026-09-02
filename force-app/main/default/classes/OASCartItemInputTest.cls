@isTest
private class OASCartItemInputTest {
    @isTest
    private static void equalsSameInstance() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = cartItemInput1;
        OASCartItemInput cartItemInput3 = new OASCartItemInput();
        OASCartItemInput cartItemInput4 = cartItemInput3;

        System.assert(cartItemInput1.equals(cartItemInput2));
        System.assert(cartItemInput2.equals(cartItemInput1));
        System.assert(cartItemInput1.equals(cartItemInput1));
        System.assert(cartItemInput3.equals(cartItemInput4));
        System.assert(cartItemInput4.equals(cartItemInput3));
        System.assert(cartItemInput3.equals(cartItemInput3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput3 = new OASCartItemInput();
        OASCartItemInput cartItemInput4 = new OASCartItemInput();

        System.assert(cartItemInput1.equals(cartItemInput2));
        System.assert(cartItemInput2.equals(cartItemInput1));
        System.assert(cartItemInput3.equals(cartItemInput4));
        System.assert(cartItemInput4.equals(cartItemInput3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = new OASCartItemInput();

        System.assertEquals(false, cartItemInput1.equals('foo'));
        System.assertEquals(false, cartItemInput2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = new OASCartItemInput();
        OASCartItemInput cartItemInput3;

        System.assertEquals(false, cartItemInput1.equals(cartItemInput3));
        System.assertEquals(false, cartItemInput2.equals(cartItemInput3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = new OASCartItemInput();

        System.assertEquals(cartItemInput1.hashCode(), cartItemInput1.hashCode());
        System.assertEquals(cartItemInput2.hashCode(), cartItemInput2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCartItemInput cartItemInput1 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput2 = OASCartItemInput.getExample();
        OASCartItemInput cartItemInput3 = new OASCartItemInput();
        OASCartItemInput cartItemInput4 = new OASCartItemInput();

        System.assert(cartItemInput1.equals(cartItemInput2));
        System.assert(cartItemInput3.equals(cartItemInput4));
        System.assertEquals(cartItemInput1.hashCode(), cartItemInput2.hashCode());
        System.assertEquals(cartItemInput3.hashCode(), cartItemInput4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCartItemInput cartItemInput = new OASCartItemInput();
        Map<String, String> x-property-mappings = cartItemInput.getx-property-mappings();
        System.assertEquals('productId', x-property-mappings.get('product_id'));
    }
}
