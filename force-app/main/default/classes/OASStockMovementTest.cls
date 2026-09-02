@isTest
private class OASStockMovementTest {
    @isTest
    private static void equalsSameInstance() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = stockMovement1;
        OASStockMovement stockMovement3 = new OASStockMovement();
        OASStockMovement stockMovement4 = stockMovement3;

        System.assert(stockMovement1.equals(stockMovement2));
        System.assert(stockMovement2.equals(stockMovement1));
        System.assert(stockMovement1.equals(stockMovement1));
        System.assert(stockMovement3.equals(stockMovement4));
        System.assert(stockMovement4.equals(stockMovement3));
        System.assert(stockMovement3.equals(stockMovement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = OASStockMovement.getExample();
        OASStockMovement stockMovement3 = new OASStockMovement();
        OASStockMovement stockMovement4 = new OASStockMovement();

        System.assert(stockMovement1.equals(stockMovement2));
        System.assert(stockMovement2.equals(stockMovement1));
        System.assert(stockMovement3.equals(stockMovement4));
        System.assert(stockMovement4.equals(stockMovement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = new OASStockMovement();

        System.assertEquals(false, stockMovement1.equals('foo'));
        System.assertEquals(false, stockMovement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = new OASStockMovement();
        OASStockMovement stockMovement3;

        System.assertEquals(false, stockMovement1.equals(stockMovement3));
        System.assertEquals(false, stockMovement2.equals(stockMovement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = new OASStockMovement();

        System.assertEquals(stockMovement1.hashCode(), stockMovement1.hashCode());
        System.assertEquals(stockMovement2.hashCode(), stockMovement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStockMovement stockMovement1 = OASStockMovement.getExample();
        OASStockMovement stockMovement2 = OASStockMovement.getExample();
        OASStockMovement stockMovement3 = new OASStockMovement();
        OASStockMovement stockMovement4 = new OASStockMovement();

        System.assert(stockMovement1.equals(stockMovement2));
        System.assert(stockMovement3.equals(stockMovement4));
        System.assertEquals(stockMovement1.hashCode(), stockMovement2.hashCode());
        System.assertEquals(stockMovement3.hashCode(), stockMovement4.hashCode());
    }
}
