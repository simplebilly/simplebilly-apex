@isTest
private class OASContactCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = contactCreate1;
        OASContactCreate contactCreate3 = new OASContactCreate();
        OASContactCreate contactCreate4 = contactCreate3;

        System.assert(contactCreate1.equals(contactCreate2));
        System.assert(contactCreate2.equals(contactCreate1));
        System.assert(contactCreate1.equals(contactCreate1));
        System.assert(contactCreate3.equals(contactCreate4));
        System.assert(contactCreate4.equals(contactCreate3));
        System.assert(contactCreate3.equals(contactCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = OASContactCreate.getExample();
        OASContactCreate contactCreate3 = new OASContactCreate();
        OASContactCreate contactCreate4 = new OASContactCreate();

        System.assert(contactCreate1.equals(contactCreate2));
        System.assert(contactCreate2.equals(contactCreate1));
        System.assert(contactCreate3.equals(contactCreate4));
        System.assert(contactCreate4.equals(contactCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = new OASContactCreate();

        System.assertEquals(false, contactCreate1.equals('foo'));
        System.assertEquals(false, contactCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = new OASContactCreate();
        OASContactCreate contactCreate3;

        System.assertEquals(false, contactCreate1.equals(contactCreate3));
        System.assertEquals(false, contactCreate2.equals(contactCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = new OASContactCreate();

        System.assertEquals(contactCreate1.hashCode(), contactCreate1.hashCode());
        System.assertEquals(contactCreate2.hashCode(), contactCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContactCreate contactCreate1 = OASContactCreate.getExample();
        OASContactCreate contactCreate2 = OASContactCreate.getExample();
        OASContactCreate contactCreate3 = new OASContactCreate();
        OASContactCreate contactCreate4 = new OASContactCreate();

        System.assert(contactCreate1.equals(contactCreate2));
        System.assert(contactCreate3.equals(contactCreate4));
        System.assertEquals(contactCreate1.hashCode(), contactCreate2.hashCode());
        System.assertEquals(contactCreate3.hashCode(), contactCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContactCreate contactCreate = new OASContactCreate();
        Map<String, String> x-property-mappings = contactCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASContactCreate contactCreate = new OASContactCreate();
        System.assertEquals(new List<String>(), contactCreate.paymentMethods);
        System.assertEquals(new List<String>(), contactCreate.tags);
        System.assertEquals(null, contactCreate.accountHolder);
        System.assertEquals(null, contactCreate.acquisitionCost);
        System.assertEquals(null, contactCreate.addressSupplement);
        System.assertEquals(null, contactCreate.attention);
        System.assertEquals(null, contactCreate.bankName);
        System.assertEquals(null, contactCreate.bic);
        System.assertEquals(null, contactCreate.buyerReference);
        System.assertEquals(null, contactCreate.category);
        System.assertEquals(null, contactCreate.certificateAuthority);
        System.assertEquals(null, contactCreate.certificateNumber);
        System.assertEquals(null, contactCreate.certificateParagraph);
        System.assertEquals(null, contactCreate.certificateValidUntil);
        System.assertEquals(null, contactCreate.city);
        System.assertEquals(null, contactCreate.companyName);
        System.assertEquals(null, contactCreate.contactPersons);
        System.assertEquals(null, contactCreate.contactType);
        System.assertEquals(null, contactCreate.country);
        System.assertEquals(null, contactCreate.creditLimit);
        System.assertEquals(null, contactCreate.creditorAccountSkr03);
        System.assertEquals(null, contactCreate.creditorAccountSkr04);
        System.assertEquals(null, contactCreate.r_currency);
        System.assertEquals(null, contactCreate.customFields);
        System.assertEquals(null, contactCreate.customerNumber);
        System.assertEquals(null, contactCreate.debitorAccountSkr03);
        System.assertEquals(null, contactCreate.debitorAccountSkr04);
        System.assertEquals(null, contactCreate.defaultDebitorNumber);
        System.assertEquals(null, contactCreate.deliveryBlock);
        System.assertEquals(null, contactCreate.department);
        System.assertEquals(null, contactCreate.discountDays);
        System.assertEquals(null, contactCreate.discountPercentage);
        System.assertEquals(null, contactCreate.donationReceiptEligible);
        System.assertEquals(null, contactCreate.email);
        System.assertEquals(null, contactCreate.externalId);
        System.assertEquals(null, contactCreate.fax);
        System.assertEquals(null, contactCreate.iban);
        System.assertEquals(null, contactCreate.industry);
        System.assertEquals(null, contactCreate.isActive);
        System.assertEquals(null, contactCreate.isMember);
        System.assertEquals(null, contactCreate.isNonprofit);
        System.assertEquals(null, contactCreate.lastContactDate);
        System.assertEquals(null, contactCreate.lastPurchaseDate);
        System.assertEquals(null, contactCreate.leitwegId);
        System.assertEquals(null, contactCreate.lifetimeValue);
        System.assertEquals(null, contactCreate.mandateDate);
        System.assertEquals(null, contactCreate.mandateReference);
        System.assertEquals(null, contactCreate.marketingConsent);
        System.assertEquals(null, contactCreate.marketingConsentAt);
        System.assertEquals(null, contactCreate.marketingConsentSource);
        System.assertEquals(null, contactCreate.mobile);
        System.assertEquals(null, contactCreate.name);
        System.assertEquals(null, contactCreate.nextContactDate);
        System.assertEquals(null, contactCreate.notes);
        System.assertEquals(null, contactCreate.openingBalance);
        System.assertEquals(null, contactCreate.openingBalanceDate);
        System.assertEquals(null, contactCreate.orderReference);
        System.assertEquals(null, contactCreate.paymentBlock);
        System.assertEquals(null, contactCreate.paymentGracePeriodDays);
        System.assertEquals(null, contactCreate.paymentTerms);
        System.assertEquals(null, contactCreate.phone);
        System.assertEquals(null, contactCreate.rating);
        System.assertEquals(null, contactCreate.salesRepresentative);
        System.assertEquals(null, contactCreate.sepaBatchBooking);
        System.assertEquals(null, contactCreate.sepaSequenceType);
        System.assertEquals(null, contactCreate.socialMedia);
        System.assertEquals(null, contactCreate.source);
        System.assertEquals(null, contactCreate.state);
        System.assertEquals(null, contactCreate.street);
        System.assertEquals(null, contactCreate.streetNumber);
        System.assertEquals(null, contactCreate.supplierNumber);
        System.assertEquals(null, contactCreate.taxCountry);
        System.assertEquals(null, contactCreate.taxNumber);
        System.assertEquals(null, contactCreate.taxOffice);
        System.assertEquals(null, contactCreate.totalInvoices);
        System.assertEquals(null, contactCreate.totalRevenue);
        System.assertEquals(null, contactCreate.vatId);
        System.assertEquals(null, contactCreate.vatIdValidated);
        System.assertEquals(null, contactCreate.vatIdValidationDate);
        System.assertEquals(null, contactCreate.website);
        System.assertEquals(null, contactCreate.zip);
    }
}
