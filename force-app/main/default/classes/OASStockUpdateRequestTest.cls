@isTest
private class OASStockUpdateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = stockUpdateRequest1;
        OASStockUpdateRequest stockUpdateRequest3 = new OASStockUpdateRequest();
        OASStockUpdateRequest stockUpdateRequest4 = stockUpdateRequest3;

        System.assert(stockUpdateRequest1.equals(stockUpdateRequest2));
        System.assert(stockUpdateRequest2.equals(stockUpdateRequest1));
        System.assert(stockUpdateRequest1.equals(stockUpdateRequest1));
        System.assert(stockUpdateRequest3.equals(stockUpdateRequest4));
        System.assert(stockUpdateRequest4.equals(stockUpdateRequest3));
        System.assert(stockUpdateRequest3.equals(stockUpdateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest3 = new OASStockUpdateRequest();
        OASStockUpdateRequest stockUpdateRequest4 = new OASStockUpdateRequest();

        System.assert(stockUpdateRequest1.equals(stockUpdateRequest2));
        System.assert(stockUpdateRequest2.equals(stockUpdateRequest1));
        System.assert(stockUpdateRequest3.equals(stockUpdateRequest4));
        System.assert(stockUpdateRequest4.equals(stockUpdateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = new OASStockUpdateRequest();

        System.assertEquals(false, stockUpdateRequest1.equals('foo'));
        System.assertEquals(false, stockUpdateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = new OASStockUpdateRequest();
        OASStockUpdateRequest stockUpdateRequest3;

        System.assertEquals(false, stockUpdateRequest1.equals(stockUpdateRequest3));
        System.assertEquals(false, stockUpdateRequest2.equals(stockUpdateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = new OASStockUpdateRequest();

        System.assertEquals(stockUpdateRequest1.hashCode(), stockUpdateRequest1.hashCode());
        System.assertEquals(stockUpdateRequest2.hashCode(), stockUpdateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStockUpdateRequest stockUpdateRequest1 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest2 = OASStockUpdateRequest.getExample();
        OASStockUpdateRequest stockUpdateRequest3 = new OASStockUpdateRequest();
        OASStockUpdateRequest stockUpdateRequest4 = new OASStockUpdateRequest();

        System.assert(stockUpdateRequest1.equals(stockUpdateRequest2));
        System.assert(stockUpdateRequest3.equals(stockUpdateRequest4));
        System.assertEquals(stockUpdateRequest1.hashCode(), stockUpdateRequest2.hashCode());
        System.assertEquals(stockUpdateRequest3.hashCode(), stockUpdateRequest4.hashCode());
    }
}
