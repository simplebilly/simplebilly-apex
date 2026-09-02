@isTest
private class OASDeclarationTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = declaration1;
        OASDeclaration declaration3 = new OASDeclaration();
        OASDeclaration declaration4 = declaration3;

        System.assert(declaration1.equals(declaration2));
        System.assert(declaration2.equals(declaration1));
        System.assert(declaration1.equals(declaration1));
        System.assert(declaration3.equals(declaration4));
        System.assert(declaration4.equals(declaration3));
        System.assert(declaration3.equals(declaration3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = OASDeclaration.getExample();
        OASDeclaration declaration3 = new OASDeclaration();
        OASDeclaration declaration4 = new OASDeclaration();

        System.assert(declaration1.equals(declaration2));
        System.assert(declaration2.equals(declaration1));
        System.assert(declaration3.equals(declaration4));
        System.assert(declaration4.equals(declaration3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = new OASDeclaration();

        System.assertEquals(false, declaration1.equals('foo'));
        System.assertEquals(false, declaration2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = new OASDeclaration();
        OASDeclaration declaration3;

        System.assertEquals(false, declaration1.equals(declaration3));
        System.assertEquals(false, declaration2.equals(declaration3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = new OASDeclaration();

        System.assertEquals(declaration1.hashCode(), declaration1.hashCode());
        System.assertEquals(declaration2.hashCode(), declaration2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeclaration declaration1 = OASDeclaration.getExample();
        OASDeclaration declaration2 = OASDeclaration.getExample();
        OASDeclaration declaration3 = new OASDeclaration();
        OASDeclaration declaration4 = new OASDeclaration();

        System.assert(declaration1.equals(declaration2));
        System.assert(declaration3.equals(declaration4));
        System.assertEquals(declaration1.hashCode(), declaration2.hashCode());
        System.assertEquals(declaration3.hashCode(), declaration4.hashCode());
    }
}
