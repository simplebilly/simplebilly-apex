@isTest
private class OASGoodsReceiptTest {
    @isTest
    private static void equalsSameInstance() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = goodsReceipt1;
        OASGoodsReceipt goodsReceipt3 = new OASGoodsReceipt();
        OASGoodsReceipt goodsReceipt4 = goodsReceipt3;

        System.assert(goodsReceipt1.equals(goodsReceipt2));
        System.assert(goodsReceipt2.equals(goodsReceipt1));
        System.assert(goodsReceipt1.equals(goodsReceipt1));
        System.assert(goodsReceipt3.equals(goodsReceipt4));
        System.assert(goodsReceipt4.equals(goodsReceipt3));
        System.assert(goodsReceipt3.equals(goodsReceipt3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt3 = new OASGoodsReceipt();
        OASGoodsReceipt goodsReceipt4 = new OASGoodsReceipt();

        System.assert(goodsReceipt1.equals(goodsReceipt2));
        System.assert(goodsReceipt2.equals(goodsReceipt1));
        System.assert(goodsReceipt3.equals(goodsReceipt4));
        System.assert(goodsReceipt4.equals(goodsReceipt3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = new OASGoodsReceipt();

        System.assertEquals(false, goodsReceipt1.equals('foo'));
        System.assertEquals(false, goodsReceipt2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = new OASGoodsReceipt();
        OASGoodsReceipt goodsReceipt3;

        System.assertEquals(false, goodsReceipt1.equals(goodsReceipt3));
        System.assertEquals(false, goodsReceipt2.equals(goodsReceipt3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = new OASGoodsReceipt();

        System.assertEquals(goodsReceipt1.hashCode(), goodsReceipt1.hashCode());
        System.assertEquals(goodsReceipt2.hashCode(), goodsReceipt2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGoodsReceipt goodsReceipt1 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt2 = OASGoodsReceipt.getExample();
        OASGoodsReceipt goodsReceipt3 = new OASGoodsReceipt();
        OASGoodsReceipt goodsReceipt4 = new OASGoodsReceipt();

        System.assert(goodsReceipt1.equals(goodsReceipt2));
        System.assert(goodsReceipt3.equals(goodsReceipt4));
        System.assertEquals(goodsReceipt1.hashCode(), goodsReceipt2.hashCode());
        System.assertEquals(goodsReceipt3.hashCode(), goodsReceipt4.hashCode());
    }
}
