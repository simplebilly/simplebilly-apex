# SimpleBilly Apex SDK

[![Release](https://img.shields.io/github/v/release/simplebilly/simplebilly-apex?label=release&logo=github)](https://github.com/simplebilly/simplebilly-apex/releases)
[![CI](https://github.com/simplebilly/simplebilly-apex/actions/workflows/release.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/release.yml)
[![CodeQL](https://github.com/simplebilly/simplebilly-apex/actions/workflows/codeql.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/codeql.yml)
[![Scorecard](https://github.com/simplebilly/simplebilly-apex/actions/workflows/scorecard.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/scorecard.yml)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/simplebilly/simplebilly-apex/badge)](https://scorecard.dev/viewer/?uri=github.com/simplebilly/simplebilly-apex)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Docs](https://img.shields.io/badge/docs-simplebilly.com-blue)](https://simplebilly.com/api/docs)
# SimpleBilly API API Client


Simplebilly API - Bookkeeping, CRM, ERP. Multi-tenant API: a tenant is isolated and routed by subdomain (or a configured custom domain) under the base domain.\n\n## Rate limiting\nAll endpoints are rate-limited per client IP: **100 requests per minute** on API routes and **5 requests per minute** on authentication routes. Exceeding a limit returns `429 Too Many Requests`; the window resets after 60 seconds.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAbsenceApi api = new OASAbsenceApi();
OASClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'oaSAbsenceCreate' => ''
};

try {
    // cross your fingers
    OASAbsence result = api.createAbsence(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://demo.simplebilly.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAbsenceApi* | [**createAbsence**](OASAbsenceApi.md#createAbsence) | **POST** /api/v1/absences | 
*OASAbsenceApi* | [**deleteAbsence**](OASAbsenceApi.md#deleteAbsence) | **DELETE** /api/v1/absences/{id} | 
*OASAbsenceApi* | [**getAbsence**](OASAbsenceApi.md#getAbsence) | **GET** /api/v1/absences/{id} | 
*OASAbsenceApi* | [**getAbsences**](OASAbsenceApi.md#getAbsences) | **GET** /api/v1/absences/ | 
*OASAbsenceApi* | [**updateAbsence**](OASAbsenceApi.md#updateAbsence) | **PUT** /api/v1/absences/{id} | 
*OASActivityApi* | [**createActivity**](OASActivityApi.md#createActivity) | **POST** /api/v1/activities | 
*OASActivityApi* | [**deleteActivity**](OASActivityApi.md#deleteActivity) | **DELETE** /api/v1/activities/{activity_id} | 
*OASActivityApi* | [**getActivity**](OASActivityApi.md#getActivity) | **GET** /api/v1/activities/{activity_id} | 
*OASActivityApi* | [**listActivities**](OASActivityApi.md#listActivities) | **GET** /api/v1/activities/ | 
*OASActivityApi* | [**updateActivity**](OASActivityApi.md#updateActivity) | **PUT** /api/v1/activities/{activity_id} | 
*OASActivityApi* | [**updateActivityStatus**](OASActivityApi.md#updateActivityStatus) | **PUT** /api/v1/activities/{activity_id}/status | 
*OASAdminApi* | [**triggerMirror**](OASAdminApi.md#triggerMirror) | **POST** /api/v1/admin/storage/mirror | 
*OASAiApi* | [**aiSuggestApi**](OASAiApi.md#aiSuggestApi) | **POST** /api/v1/support/ai/suggest | 
*OASAiApi* | [**createWorkerApi**](OASAiApi.md#createWorkerApi) | **POST** /api/v1/support/ai/workers | 
*OASAiApi* | [**listWorkersApi**](OASAiApi.md#listWorkersApi) | **GET** /api/v1/support/ai/workers | 
*OASAiApi* | [**runWorkerApi**](OASAiApi.md#runWorkerApi) | **POST** /api/v1/support/ai/workers/{worker_id}/run | 
*OASAnlageEksApi* | [**eksApi**](OASAnlageEksApi.md#eksApi) | **GET** /api/v1/bookkeeping/eks | 
*OASAnlageGApi* | [**anlageGApi**](OASAnlageGApi.md#anlageGApi) | **GET** /api/v1/bookkeeping/anlage-g | 
*OASAnlageSApi* | [**anlageSApi**](OASAnlageSApi.md#anlageSApi) | **GET** /api/v1/bookkeeping/anlage-s | 
*OASAttachmentApi* | [**attachmentRestore**](OASAttachmentApi.md#attachmentRestore) | **POST** /api/v1/attachments/{id}/restore | 
*OASAttachmentApi* | [**createAttachment**](OASAttachmentApi.md#createAttachment) | **POST** /api/v1/attachments | 
*OASAttachmentApi* | [**deleteAttachment**](OASAttachmentApi.md#deleteAttachment) | **DELETE** /api/v1/attachments/{id} | 
*OASAttachmentApi* | [**getAttachment**](OASAttachmentApi.md#getAttachment) | **GET** /api/v1/attachments/{id} | 
*OASAttachmentApi* | [**listAttachments**](OASAttachmentApi.md#listAttachments) | **GET** /api/v1/attachments/ | 
*OASAttachmentApi* | [**saveAttachmentOcrText**](OASAttachmentApi.md#saveAttachmentOcrText) | **PUT** /api/v1/attachments/{attachment_id}/ocr-text | Persist client-side OCR output for an attachment.
*OASAttachmentVersionApi* | [**createAttachmentVersion**](OASAttachmentVersionApi.md#createAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions | 
*OASAttachmentVersionApi* | [**listAttachmentVersions**](OASAttachmentVersionApi.md#listAttachmentVersions) | **GET** /api/v1/attachments/{attachment_id}/versions | 
*OASAttachmentVersionApi* | [**restoreAttachmentVersion**](OASAttachmentVersionApi.md#restoreAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions/{version_id}/restore | 
*OASAuthApi* | [**acceptInvite**](OASAuthApi.md#acceptInvite) | **POST** /auth/accept-invite | Accept an invite: create the account (or reuse an existing one) and join\nthe inviting tenant. The invite token proves control of the mailbox.
*OASAuthApi* | [**forgotPassword**](OASAuthApi.md#forgotPassword) | **POST** /auth/forgot-password | Send a password reset email to the user
*OASAuthApi* | [**login**](OASAuthApi.md#login) | **POST** /auth/login | Authenticate a user with email + password (optional TOTP)
*OASAuthApi* | [**logout**](OASAuthApi.md#logout) | **POST** /auth/logout | Log out the current user (kills the assay session)
*OASAuthApi* | [**magicLinkLogin**](OASAuthApi.md#magicLinkLogin) | **POST** /auth/magic-link | Request a magic link login (sends an email with a one-time link)
*OASAuthApi* | [**magicLinkVerify**](OASAuthApi.md#magicLinkVerify) | **POST** /auth/magic-link/verify | Verify a magic link token and log the user in
*OASAuthApi* | [**register**](OASAuthApi.md#register) | **POST** /auth/register | Register a new user account
*OASAuthApi* | [**resetPassword**](OASAuthApi.md#resetPassword) | **POST** /auth/reset-password | Reset the user\&#39;s password using a reset token
*OASAuthApi* | [**totpEnable**](OASAuthApi.md#totpEnable) | **POST** /auth/totp/enable | Enable TOTP two-factor authentication by verifying a code
*OASAuthApi* | [**totpSetup**](OASAuthApi.md#totpSetup) | **GET** /auth/totp/setup | Set up TOTP two-factor authentication (generates secret + backup codes)
*OASAuthApi* | [**verifyEmail**](OASAuthApi.md#verifyEmail) | **POST** /auth/verify-email | Verify a user\&#39;s email address using a verification token
*OASAutomationsApi* | [**listAutomations**](OASAutomationsApi.md#listAutomations) | **GET** /api/v1/automations | 
*OASAutomationsApi* | [**triggerAutomation**](OASAutomationsApi.md#triggerAutomation) | **POST** /api/v1/automations/{key}/trigger | 
*OASAutomationsApi* | [**updateAutomation**](OASAutomationsApi.md#updateAutomation) | **PUT** /api/v1/automations/{key} | 
*OASBankingApi* | [**bankLookupApi**](OASBankingApi.md#bankLookupApi) | **GET** /api/v1/bookkeeping/banking/lookup | 
*OASBankingApi* | [**bankTransactionsApi**](OASBankingApi.md#bankTransactionsApi) | **GET** /api/v1/bookkeeping/banking/transactions | 
*OASBankingApi* | [**hebesatzLookupApi**](OASBankingApi.md#hebesatzLookupApi) | **GET** /api/v1/bookkeeping/hebesatz | 
*OASBillingApi* | [**getPlans**](OASBillingApi.md#getPlans) | **GET** /api/v1/plans | All canonical plans (free/starter/business/enterprise) — the single\nsource of truth lives in &#x60;crate::saasy::plans&#x60;, matching marketing.
*OASBillingApi* | [**getQuotaApi**](OASBillingApi.md#getQuotaApi) | **GET** /api/v1/quota | Effective limits + current usage for the calling tenant.
*OASBillingApi* | [**getSubscriptionApi**](OASBillingApi.md#getSubscriptionApi) | **GET** /api/v1/subscription | 
*OASBillingApi* | [**getUsageApi**](OASBillingApi.md#getUsageApi) | **GET** /api/v1/usage | 
*OASBillingApi* | [**paddleSubscriptionWebhook**](OASBillingApi.md#paddleSubscriptionWebhook) | **POST** /api/webhooks/paddle/subscription | Paddle Billing subscription webhook. Verifies the &#x60;Paddle-Signature&#x60;\nheader (HMAC-SHA256 over &#x60;&quot;{ts}:{raw_body}&quot;&#x60; with the webhook secret),\nthen updates &#x60;billing_info&#x60; and &#x60;tenants.plan&#x60; for the tenant identified\nby the subscription &#x60;custom_data&#x60; (JSON &#x60;{&quot;tenant_id&quot;: &quot;...&quot;}&#x60; or a bare\ntenant UUID).
*OASBillingApi* | [**putQuotaApi**](OASBillingApi.md#putQuotaApi) | **PUT** /api/v1/quota | Write the per-tenant quota override (&#x60;admin:settings&#x60;). An empty object\nclears the override.
*OASBomApi* | [**createBom**](OASBomApi.md#createBom) | **POST** /api/v1/boms | 
*OASBomApi* | [**deleteBom**](OASBomApi.md#deleteBom) | **DELETE** /api/v1/boms/{bom_id} | 
*OASBomApi* | [**getBom**](OASBomApi.md#getBom) | **GET** /api/v1/boms/{bom_id} | 
*OASBomApi* | [**listBoms**](OASBomApi.md#listBoms) | **GET** /api/v1/boms/ | 
*OASBomApi* | [**updateBom**](OASBomApi.md#updateBom) | **PUT** /api/v1/boms/{bom_id} | 
*OASBookkeepingApi* | [**allocatePaymentApi**](OASBookkeepingApi.md#allocatePaymentApi) | **POST** /api/v1/payments/allocate | Allocate a payment to an invoice
*OASBookkeepingApi* | [**bwaReportApi**](OASBookkeepingApi.md#bwaReportApi) | **GET** /api/v1/bookkeeping/bwa | Get BWA (Betriebswirtschaftliche Auswertung) report
*OASBookkeepingApi* | [**elsterStatusApi**](OASBookkeepingApi.md#elsterStatusApi) | **GET** /api/v1/bookkeeping/elster/status | 
*OASBookkeepingApi* | [**elsterValidateApi**](OASBookkeepingApi.md#elsterValidateApi) | **POST** /api/v1/bookkeeping/ustva/elster-validate | 
*OASBookkeepingApi* | [**elsterXmlApi**](OASBookkeepingApi.md#elsterXmlApi) | **GET** /api/v1/bookkeeping/ustva/elster-xml | 
*OASBookkeepingApi* | [**getCashflow**](OASBookkeepingApi.md#getCashflow) | **GET** /api/v1/bookkeeping/cashflow | GET /api/v1/bookkeeping/cashflow\nReturns operating, investing, and financing cashflow for the given period.
*OASBookkeepingApi* | [**getLiquidity**](OASBookkeepingApi.md#getLiquidity) | **GET** /api/v1/bookkeeping/liquidity | GET /api/v1/bookkeeping/liquidity\nReturns current liquidity position with ratios.
*OASBookkeepingApi* | [**getOpenInvoicesApi**](OASBookkeepingApi.md#getOpenInvoicesApi) | **GET** /api/v1/payments/open-invoices/{customer_id} | Get open invoices for a customer
*OASBookkeepingApi* | [**getVerfahrensdokumentation**](OASBookkeepingApi.md#getVerfahrensdokumentation) | **GET** /api/v1/bookkeeping/verfahrensdokumentation | GET /api/v1/bookkeeping/verfahrensdokumentation\nReturns the complete compliance catalog of all documented modules.
*OASBookkeepingApi* | [**runDunningApi**](OASBookkeepingApi.md#runDunningApi) | **POST** /api/v1/bookkeeping/dunning | 
*OASBudgetsApi* | [**budgetsApi**](OASBudgetsApi.md#budgetsApi) | **GET** /api/v1/bookkeeping/budgets | 
*OASBudgetsApi* | [**upsertBudgetGoalApi**](OASBudgetsApi.md#upsertBudgetGoalApi) | **PUT** /api/v1/bookkeeping/budgets/goals/{category} | 
*OASComplianceTrainingApi* | [**createComplianceTraining**](OASComplianceTrainingApi.md#createComplianceTraining) | **POST** /api/v1/compliance-trainings | 
*OASComplianceTrainingApi* | [**deleteComplianceTraining**](OASComplianceTrainingApi.md#deleteComplianceTraining) | **DELETE** /api/v1/compliance-trainings/{id} | 
*OASComplianceTrainingApi* | [**getComplianceTraining**](OASComplianceTrainingApi.md#getComplianceTraining) | **GET** /api/v1/compliance-trainings/{id} | 
*OASComplianceTrainingApi* | [**getComplianceTrainings**](OASComplianceTrainingApi.md#getComplianceTrainings) | **GET** /api/v1/compliance-trainings/ | 
*OASComplianceTrainingApi* | [**updateComplianceTraining**](OASComplianceTrainingApi.md#updateComplianceTraining) | **PUT** /api/v1/compliance-trainings/{id} | 
*OASContactApi* | [**contactSchema**](OASContactApi.md#contactSchema) | **GET** /api/v1/contacts/schema | Serve JSON Schema for client-side validation
*OASContactApi* | [**contactTimeline**](OASContactApi.md#contactTimeline) | **GET** /api/v1/contacts/{contact_id}/timeline | Get the full per-contact timeline (Xentral §4.6/4.7).
*OASContactApi* | [**createContact**](OASContactApi.md#createContact) | **POST** /api/v1/contacts | Create contact
*OASContactApi* | [**deleteContact**](OASContactApi.md#deleteContact) | **DELETE** /api/v1/contacts/{contact_id} | Soft-delete contact
*OASContactApi* | [**getContact**](OASContactApi.md#getContact) | **GET** /api/v1/contacts/{contact_id} | Get single contact
*OASContactApi* | [**listContacts**](OASContactApi.md#listContacts) | **GET** /api/v1/contacts | List contacts with search, type filter, and pagination
*OASContactApi* | [**salesVolume**](OASContactApi.md#salesVolume) | **GET** /api/v1/contacts/sales-volume | Sales volume per contact
*OASContactApi* | [**updateContact**](OASContactApi.md#updateContact) | **PUT** /api/v1/contacts/{contact_id} | Update contact
*OASCouponApi* | [**couponRestore**](OASCouponApi.md#couponRestore) | **POST** /api/v1/coupons/{coupon_id}/restore | 
*OASCouponApi* | [**createCoupon**](OASCouponApi.md#createCoupon) | **POST** /api/v1/coupons | 
*OASCouponApi* | [**deleteCoupon**](OASCouponApi.md#deleteCoupon) | **DELETE** /api/v1/coupons/{coupon_id} | 
*OASCouponApi* | [**getCoupon**](OASCouponApi.md#getCoupon) | **GET** /api/v1/coupons/{coupon_id} | 
*OASCouponApi* | [**listCoupons**](OASCouponApi.md#listCoupons) | **GET** /api/v1/coupons/ | 
*OASCouponApi* | [**updateCoupon**](OASCouponApi.md#updateCoupon) | **PUT** /api/v1/coupons/{coupon_id} | 
*OASCreateSepaDirectDebitApi* | [**createSepaDirectDebitApi**](OASCreateSepaDirectDebitApi.md#createSepaDirectDebitApi) | **POST** /api/v1/bookkeeping/sepa-direct-debit | 
*OASCreditNoteApi* | [**createCreditNote**](OASCreditNoteApi.md#createCreditNote) | **POST** /api/v1/credit-notes | 
*OASCreditNoteApi* | [**downloadCreditNotePdf**](OASCreditNoteApi.md#downloadCreditNotePdf) | **GET** /api/v1/credit-notes/{credit_note_id}/pdf | 
*OASCreditNoteApi* | [**getCreditNote**](OASCreditNoteApi.md#getCreditNote) | **GET** /api/v1/credit-notes/{credit_note_id} | 
*OASCreditNoteApi* | [**listCreditNotes**](OASCreditNoteApi.md#listCreditNotes) | **GET** /api/v1/credit-notes/ | 
*OASCustomerApi* | [**createCustomer**](OASCustomerApi.md#createCustomer) | **POST** /api/v1/customers | 
*OASCustomerApi* | [**customerRestore**](OASCustomerApi.md#customerRestore) | **POST** /api/v1/customers/{customer_id}/restore | 
*OASCustomerApi* | [**deleteCustomer**](OASCustomerApi.md#deleteCustomer) | **DELETE** /api/v1/customers/{customer_id} | 
*OASCustomerApi* | [**getCustomer**](OASCustomerApi.md#getCustomer) | **GET** /api/v1/customers/{customer_id} | 
*OASCustomerApi* | [**getCustomers**](OASCustomerApi.md#getCustomers) | **GET** /api/v1/customers/ | 
*OASCustomerApi* | [**updateCustomer**](OASCustomerApi.md#updateCustomer) | **PUT** /api/v1/customers/{customer_id} | 
*OASCustomerCommunicationApi* | [**createCommunication**](OASCustomerCommunicationApi.md#createCommunication) | **POST** /api/v1/communications | 
*OASCustomerCommunicationApi* | [**customercommunicationRestore**](OASCustomerCommunicationApi.md#customercommunicationRestore) | **POST** /api/v1/communications/{communication_id}/restore | 
*OASCustomerCommunicationApi* | [**deleteCommunication**](OASCustomerCommunicationApi.md#deleteCommunication) | **DELETE** /api/v1/communications/{communication_id} | 
*OASCustomerCommunicationApi* | [**getCommunication**](OASCustomerCommunicationApi.md#getCommunication) | **GET** /api/v1/communications/{communication_id} | 
*OASCustomerCommunicationApi* | [**getContactHistory**](OASCustomerCommunicationApi.md#getContactHistory) | **GET** /api/v1/contacts/{contact_id}/communications | 
*OASCustomerCommunicationApi* | [**listCommunications**](OASCustomerCommunicationApi.md#listCommunications) | **GET** /api/v1/communications/ | 
*OASCustomerCommunicationApi* | [**updateCommunication**](OASCustomerCommunicationApi.md#updateCommunication) | **PUT** /api/v1/communications/{communication_id} | 
*OASCustomerGroupApi* | [**addGroupMembers**](OASCustomerGroupApi.md#addGroupMembers) | **POST** /api/v1/customer-groups/{customer_group_id}/members | 
*OASCustomerGroupApi* | [**createCustomerGroup**](OASCustomerGroupApi.md#createCustomerGroup) | **POST** /api/v1/customer-groups | 
*OASCustomerGroupApi* | [**deleteCustomerGroup**](OASCustomerGroupApi.md#deleteCustomerGroup) | **DELETE** /api/v1/customer-groups/{customer_group_id} | 
*OASCustomerGroupApi* | [**getCustomerGroup**](OASCustomerGroupApi.md#getCustomerGroup) | **GET** /api/v1/customer-groups/{customer_group_id} | 
*OASCustomerGroupApi* | [**listCustomerGroups**](OASCustomerGroupApi.md#listCustomerGroups) | **GET** /api/v1/customer-groups/ | 
*OASCustomerGroupApi* | [**updateCustomerGroup**](OASCustomerGroupApi.md#updateCustomerGroup) | **PUT** /api/v1/customer-groups/{customer_group_id} | 
*OASDatevApi* | [**datevExportApi**](OASDatevApi.md#datevExportApi) | **GET** /api/v1/bookkeeping/datev/export | Export bookkeeping data as DATEV CSV
*OASDatevApi* | [**datevPreviewApi**](OASDatevApi.md#datevPreviewApi) | **GET** /api/v1/bookkeeping/datev/preview | Exported_datev_bookings: returns formed bookings for review
*OASDatevImportApi* | [**datevImportApi**](OASDatevImportApi.md#datevImportApi) | **POST** /api/v1/bookkeeping/datev/import | 
*OASDeclarationApi* | [**createDeclaration**](OASDeclarationApi.md#createDeclaration) | **POST** /api/v1/declarations | 
*OASDeclarationApi* | [**declarationRestore**](OASDeclarationApi.md#declarationRestore) | **POST** /api/v1/declarations/{id}/restore | 
*OASDeclarationApi* | [**deleteDeclaration**](OASDeclarationApi.md#deleteDeclaration) | **DELETE** /api/v1/declarations/{id} | 
*OASDeclarationApi* | [**getDeclaration**](OASDeclarationApi.md#getDeclaration) | **GET** /api/v1/declarations/{id} | 
*OASDeclarationApi* | [**getDeclarations**](OASDeclarationApi.md#getDeclarations) | **GET** /api/v1/declarations/ | 
*OASDeclarationApi* | [**updateDeclaration**](OASDeclarationApi.md#updateDeclaration) | **PUT** /api/v1/declarations/{id} | 
*OASDeliveryAppointmentApi* | [**createDeliveryAppointment**](OASDeliveryAppointmentApi.md#createDeliveryAppointment) | **POST** /api/v1/delivery-appointments | 
*OASDeliveryAppointmentApi* | [**deleteDeliveryAppointment**](OASDeliveryAppointmentApi.md#deleteDeliveryAppointment) | **DELETE** /api/v1/delivery-appointments/{appointment_id} | 
*OASDeliveryAppointmentApi* | [**getDeliveryAppointment**](OASDeliveryAppointmentApi.md#getDeliveryAppointment) | **GET** /api/v1/delivery-appointments/{appointment_id} | 
*OASDeliveryAppointmentApi* | [**getPublicDeliveryAppointmentStatus**](OASDeliveryAppointmentApi.md#getPublicDeliveryAppointmentStatus) | **GET** /api/v1/public/delivery-appointments/status | Supplier/carrier checks appointment status (public, no auth). The\nappointment is only revealed when email AND token match.
*OASDeliveryAppointmentApi* | [**listDeliveryAppointments**](OASDeliveryAppointmentApi.md#listDeliveryAppointments) | **GET** /api/v1/delivery-appointments | 
*OASDeliveryAppointmentApi* | [**requestPublicDeliveryAppointment**](OASDeliveryAppointmentApi.md#requestPublicDeliveryAppointment) | **POST** /api/v1/public/delivery-appointments/request | Supplier/carrier requests an inbound delivery slot (public, no auth).\nThe tenant is derived from the warehouse found by &#x60;code&#x60; — never from\nthe request.
*OASDeliveryAppointmentApi* | [**updateDeliveryAppointment**](OASDeliveryAppointmentApi.md#updateDeliveryAppointment) | **PUT** /api/v1/delivery-appointments/{appointment_id} | 
*OASDeliveryAppointmentApi* | [**updateDeliveryAppointmentStatus**](OASDeliveryAppointmentApi.md#updateDeliveryAppointmentStatus) | **PUT** /api/v1/delivery-appointments/{appointment_id}/status | 
*OASDeliveryDateApi* | [**createDeliveryDate**](OASDeliveryDateApi.md#createDeliveryDate) | **POST** /api/v1/delivery-dates | 
*OASDeliveryDateApi* | [**deleteDeliveryDate**](OASDeliveryDateApi.md#deleteDeliveryDate) | **DELETE** /api/v1/delivery-dates/{delivery_date_id} | 
*OASDeliveryDateApi* | [**getDeliveryDate**](OASDeliveryDateApi.md#getDeliveryDate) | **GET** /api/v1/delivery-dates/{delivery_date_id} | 
*OASDeliveryDateApi* | [**getDeliveryPerformance**](OASDeliveryDateApi.md#getDeliveryPerformance) | **GET** /api/v1/delivery-dates/performance | On-time performance summary: how many promised delivery dates were met\nwithin a period.
*OASDeliveryDateApi* | [**listDeliveryDates**](OASDeliveryDateApi.md#listDeliveryDates) | **GET** /api/v1/delivery-dates/ | 
*OASDeliveryDateApi* | [**updateDeliveryDate**](OASDeliveryDateApi.md#updateDeliveryDate) | **PUT** /api/v1/delivery-dates/{delivery_date_id} | 
*OASDeliveryDateApi* | [**updateDeliveryDateStatus**](OASDeliveryDateApi.md#updateDeliveryDateStatus) | **PUT** /api/v1/delivery-dates/{delivery_date_id}/status | 
*OASDeliveryNoteApi* | [**createDeliveryNote**](OASDeliveryNoteApi.md#createDeliveryNote) | **POST** /api/v1/delivery-notes | 
*OASDeliveryNoteApi* | [**deleteDeliveryNote**](OASDeliveryNoteApi.md#deleteDeliveryNote) | **DELETE** /api/v1/delivery-notes/{delivery_note_id} | 
*OASDeliveryNoteApi* | [**deliverynoteRestore**](OASDeliveryNoteApi.md#deliverynoteRestore) | **POST** /api/v1/delivery-notes/{delivery_note_id}/restore | 
*OASDeliveryNoteApi* | [**downloadDeliveryNotePdf**](OASDeliveryNoteApi.md#downloadDeliveryNotePdf) | **GET** /api/v1/delivery-notes/{delivery_note_id}/pdf | 
*OASDeliveryNoteApi* | [**getDeliveryNote**](OASDeliveryNoteApi.md#getDeliveryNote) | **GET** /api/v1/delivery-notes/{delivery_note_id} | 
*OASDeliveryNoteApi* | [**listDeliveryNotes**](OASDeliveryNoteApi.md#listDeliveryNotes) | **GET** /api/v1/delivery-notes/ | 
*OASDeliveryNoteApi* | [**pursueDeliveryNote**](OASDeliveryNoteApi.md#pursueDeliveryNote) | **POST** /api/v1/delivery-notes/{delivery_note_id}/pursue | 
*OASDownPaymentInvoiceApi* | [**downloadDownPaymentInvoicePdf**](OASDownPaymentInvoiceApi.md#downloadDownPaymentInvoicePdf) | **GET** /api/v1/down-payment-invoices/{id}/pdf | 
*OASDownPaymentInvoiceApi* | [**getDownPaymentInvoice**](OASDownPaymentInvoiceApi.md#getDownPaymentInvoice) | **GET** /api/v1/down-payment-invoices/{id} | 
*OASDownPaymentInvoiceApi* | [**listDownPaymentInvoices**](OASDownPaymentInvoiceApi.md#listDownPaymentInvoices) | **GET** /api/v1/down-payment-invoices/ | 
*OASEbilanzApi* | [**ebilanzReportApi**](OASEbilanzApi.md#ebilanzReportApi) | **GET** /api/v1/bookkeeping/ebilanz | 
*OASEbilanzApi* | [**ebilanzXbrlExportApi**](OASEbilanzApi.md#ebilanzXbrlExportApi) | **GET** /api/v1/bookkeeping/ebilanz/xbrl | 
*OASEmailTemplateApi* | [**createEmailTemplate**](OASEmailTemplateApi.md#createEmailTemplate) | **POST** /api/v1/email-templates | 
*OASEmailTemplateApi* | [**deleteEmailTemplate**](OASEmailTemplateApi.md#deleteEmailTemplate) | **DELETE** /api/v1/email-templates/{email_template_id} | 
*OASEmailTemplateApi* | [**getEmailTemplate**](OASEmailTemplateApi.md#getEmailTemplate) | **GET** /api/v1/email-templates/{email_template_id} | 
*OASEmailTemplateApi* | [**listEmailTemplates**](OASEmailTemplateApi.md#listEmailTemplates) | **GET** /api/v1/email-templates/ | 
*OASEmailTemplateApi* | [**renderEmailTemplate**](OASEmailTemplateApi.md#renderEmailTemplate) | **POST** /api/v1/email-templates/{email_template_id}/render | 
*OASEmailTemplateApi* | [**updateEmailTemplate**](OASEmailTemplateApi.md#updateEmailTemplate) | **PUT** /api/v1/email-templates/{email_template_id} | 
*OASEmissionsApi* | [**createEmissionEntryApi**](OASEmissionsApi.md#createEmissionEntryApi) | **POST** /api/v1/bookkeeping/emissions/entries | 
*OASEmissionsApi* | [**createEmissionTargetApi**](OASEmissionsApi.md#createEmissionTargetApi) | **POST** /api/v1/bookkeeping/emissions/targets | 
*OASEmissionsApi* | [**deleteEmissionEntryApi**](OASEmissionsApi.md#deleteEmissionEntryApi) | **DELETE** /api/v1/bookkeeping/emissions/entries/{id} | 
*OASEmissionsApi* | [**deleteEmissionTargetApi**](OASEmissionsApi.md#deleteEmissionTargetApi) | **DELETE** /api/v1/bookkeeping/emissions/targets/{id} | 
*OASEmissionsApi* | [**emissionsEntriesApi**](OASEmissionsApi.md#emissionsEntriesApi) | **GET** /api/v1/bookkeeping/emissions/entries | 
*OASEmissionsApi* | [**emissionsExportApi**](OASEmissionsApi.md#emissionsExportApi) | **GET** /api/v1/bookkeeping/emissions/export | 
*OASEmissionsApi* | [**emissionsFactorsApi**](OASEmissionsApi.md#emissionsFactorsApi) | **GET** /api/v1/bookkeeping/emissions/factors | 
*OASEmissionsApi* | [**emissionsReportApi**](OASEmissionsApi.md#emissionsReportApi) | **GET** /api/v1/bookkeeping/emissions/report | 
*OASEmissionsApi* | [**emissionsTargetsApi**](OASEmissionsApi.md#emissionsTargetsApi) | **GET** /api/v1/bookkeeping/emissions/targets | 
*OASEmployeeApi* | [**createEmployee**](OASEmployeeApi.md#createEmployee) | **POST** /api/v1/employees | 
*OASEmployeeApi* | [**deleteEmployee**](OASEmployeeApi.md#deleteEmployee) | **DELETE** /api/v1/employees/{id} | 
*OASEmployeeApi* | [**employeeRestore**](OASEmployeeApi.md#employeeRestore) | **POST** /api/v1/employees/{id}/restore | 
*OASEmployeeApi* | [**getEmployee**](OASEmployeeApi.md#getEmployee) | **GET** /api/v1/employees/{id} | 
*OASEmployeeApi* | [**getEmployeePayrollSummary**](OASEmployeeApi.md#getEmployeePayrollSummary) | **GET** /api/v1/employees/{id}/payroll-summary | 
*OASEmployeeApi* | [**getEmployees**](OASEmployeeApi.md#getEmployees) | **GET** /api/v1/employees/ | 
*OASEmployeeApi* | [**updateEmployee**](OASEmployeeApi.md#updateEmployee) | **PUT** /api/v1/employees/{id} | 
*OASEuerApi* | [**euerApi**](OASEuerApi.md#euerApi) | **GET** /api/v1/bookkeeping/euer | 
*OASEuerApi* | [**euerKategorienApi**](OASEuerApi.md#euerKategorienApi) | **GET** /api/v1/bookkeeping/euer/kategorien | 
*OASEventSubscriptionApi* | [**createEventSubscription**](OASEventSubscriptionApi.md#createEventSubscription) | **POST** /api/v1/event-subscriptions | 
*OASEventSubscriptionApi* | [**deleteEventSubscription**](OASEventSubscriptionApi.md#deleteEventSubscription) | **DELETE** /api/v1/event-subscriptions/{subscription_id} | 
*OASEventSubscriptionApi* | [**listEventSubscriptions**](OASEventSubscriptionApi.md#listEventSubscriptions) | **GET** /api/v1/event-subscriptions/ | 
*OASFristenApi* | [**fristenApi**](OASFristenApi.md#fristenApi) | **GET** /api/v1/bookkeeping/fristen | 
*OASGdprApi* | [**acceptDpa**](OASGdprApi.md#acceptDpa) | **PUT** /api/v1/gdpr/dpa | Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant\nsettings row (created with company-type defaults if missing).
*OASGdprApi* | [**accountErasure**](OASGdprApi.md#accountErasure) | **POST** /api/v1/gdpr/account-erasure | Erase ALL personal data of the tenant (TOS §11: deletion 90 days after\ntermination).
*OASGdprApi* | [**erasureContact**](OASGdprApi.md#erasureContact) | **POST** /api/v1/gdpr/erasure/{contact_id} | Anonymize + soft-delete a contact: personal attributes are cleared, the\nrecord itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit\ntrigger on &#x60;contacts&#x60; already records who/when.
*OASGdprApi* | [**exportContactData**](OASGdprApi.md#exportContactData) | **GET** /api/v1/gdpr/export/{contact_id} | Art. 15 data-subject access export for a contact.
*OASGdprApi* | [**exportGdpr**](OASGdprApi.md#exportGdpr) | **GET** /api/v1/gdpr/export | Export the current user\&#39;s personal data (GDPR Art. 15/20).
*OASGdprApi* | [**getDpa**](OASGdprApi.md#getDpa) | **GET** /api/v1/gdpr/dpa | Current DPA acceptance status (from tenant_settings).
*OASGenerateQrcodeApi* | [**generateQrcodeApi**](OASGenerateQrcodeApi.md#generateQrcodeApi) | **GET** /api/v1/invoices/{id}/qrcode | 
*OASGenerateXrechnungApi* | [**generateXrechnungApi**](OASGenerateXrechnungApi.md#generateXrechnungApi) | **GET** /api/v1/invoices/{id}/xrechnung | 
*OASGewerbesteuerApi* | [**gewerbesteuerApi**](OASGewerbesteuerApi.md#gewerbesteuerApi) | **GET** /api/v1/bookkeeping/gewerbesteuer | 
*OASGewinnverwendungApi* | [**gewinnverwendungApi**](OASGewinnverwendungApi.md#gewinnverwendungApi) | **GET** /api/v1/bookkeeping/gewinnverwendung | 
*OASGewinnverwendungApi* | [**gewinnverwendungExportApi**](OASGewinnverwendungApi.md#gewinnverwendungExportApi) | **GET** /api/v1/bookkeeping/gewinnverwendung/export | 
*OASGezApi* | [**gezApi**](OASGezApi.md#gezApi) | **GET** /api/v1/bookkeeping/gez | 
*OASGobdExportApi* | [**buchhalterCsvApi**](OASGobdExportApi.md#buchhalterCsvApi) | **GET** /api/v1/bookkeeping/buchhalter-csv | 
*OASGobdExportApi* | [**gobdExportApi**](OASGobdExportApi.md#gobdExportApi) | **GET** /api/v1/bookkeeping/gobd | GoBD/GDPdU export. Default: ZIP archive (&#x60;index.xml&#x60; + CSV tables, IDEA\nformat). &#x60;?format&#x3D;csv&#x60; returns the legacy single-journal CSV as JSON.
*OASGoodsReceiptApi* | [**createGoodsReceipt**](OASGoodsReceiptApi.md#createGoodsReceipt) | **POST** /api/v1/goods-receipts | 
*OASGoodsReceiptApi* | [**deleteGoodsReceipt**](OASGoodsReceiptApi.md#deleteGoodsReceipt) | **DELETE** /api/v1/goods-receipts/{goods_receipt_id} | 
*OASGoodsReceiptApi* | [**getGoodsReceipt**](OASGoodsReceiptApi.md#getGoodsReceipt) | **GET** /api/v1/goods-receipts/{goods_receipt_id} | 
*OASGoodsReceiptApi* | [**listGoodsReceipts**](OASGoodsReceiptApi.md#listGoodsReceipts) | **GET** /api/v1/goods-receipts/ | 
*OASGroupFigureApi* | [**createGroupFigure**](OASGroupFigureApi.md#createGroupFigure) | **POST** /api/v1/group-figures | 
*OASGroupFigureApi* | [**deleteGroupFigure**](OASGroupFigureApi.md#deleteGroupFigure) | **DELETE** /api/v1/group-figures/{year} | 
*OASGroupFigureApi* | [**getGroupFigure**](OASGroupFigureApi.md#getGroupFigure) | **GET** /api/v1/group-figures/{year} | 
*OASGroupFigureApi* | [**getGroupFigures**](OASGroupFigureApi.md#getGroupFigures) | **GET** /api/v1/group-figures/ | 
*OASGroupFigureApi* | [**updateGroupFigure**](OASGroupFigureApi.md#updateGroupFigure) | **PUT** /api/v1/group-figures/{year} | 
*OASImportRunnerApi* | [**getImportStatus**](OASImportRunnerApi.md#getImportStatus) | **GET** /api/v1/import/{job_id} | 
*OASImportRunnerApi* | [**startImport**](OASImportRunnerApi.md#startImport) | **POST** /api/v1/import/start | 
*OASImportRunnerApi* | [**testImportConnection**](OASImportRunnerApi.md#testImportConnection) | **POST** /api/v1/import/test | 
*OASInstituteApi* | [**instituteStatusApi**](OASInstituteApi.md#instituteStatusApi) | **GET** /api/v1/bookkeeping/institute/status | 
*OASInstituteProfileApi* | [**getInstituteProfile**](OASInstituteProfileApi.md#getInstituteProfile) | **GET** /api/v1/institute-profile | Current institute profile (created with defaults when missing).
*OASInstituteProfileApi* | [**updateInstituteProfile**](OASInstituteProfileApi.md#updateInstituteProfile) | **PUT** /api/v1/institute-profile | Update the institute profile (institute_type and/or kapitalmarktorientiert).
*OASInventoryCountApi* | [**createInventoryCount**](OASInventoryCountApi.md#createInventoryCount) | **POST** /api/v1/inventory-counts | 
*OASInventoryCountApi* | [**deleteInventoryCount**](OASInventoryCountApi.md#deleteInventoryCount) | **DELETE** /api/v1/inventory-counts/{inventory_count_id} | 
*OASInventoryCountApi* | [**generateInventoryCount**](OASInventoryCountApi.md#generateInventoryCount) | **POST** /api/v1/inventory-counts/generate | 
*OASInventoryCountApi* | [**getInventoryCount**](OASInventoryCountApi.md#getInventoryCount) | **GET** /api/v1/inventory-counts/{inventory_count_id} | 
*OASInventoryCountApi* | [**listInventoryCounts**](OASInventoryCountApi.md#listInventoryCounts) | **GET** /api/v1/inventory-counts/ | 
*OASInventoryCountApi* | [**updateInventoryCount**](OASInventoryCountApi.md#updateInventoryCount) | **PUT** /api/v1/inventory-counts/{inventory_count_id} | 
*OASInventoryCountApi* | [**updateInventoryCountStatus**](OASInventoryCountApi.md#updateInventoryCountStatus) | **PUT** /api/v1/inventory-counts/{inventory_count_id}/status | 
*OASInventoryValueApi* | [**getInventoryValueApi**](OASInventoryValueApi.md#getInventoryValueApi) | **GET** /api/v1/bookkeeping/inventory-value | 
*OASInventoryValueApi* | [**recordInventoryValueApi**](OASInventoryValueApi.md#recordInventoryValueApi) | **POST** /api/v1/bookkeeping/inventory-value/record | 
*OASInvoiceApi* | [**createInvoice**](OASInvoiceApi.md#createInvoice) | **POST** /api/v1/invoices | 
*OASInvoiceApi* | [**deleteInvoice**](OASInvoiceApi.md#deleteInvoice) | **DELETE** /api/v1/invoices/{id} | 
*OASInvoiceApi* | [**downloadInvoicePdf**](OASInvoiceApi.md#downloadInvoicePdf) | **GET** /api/v1/invoices/{id}/pdf | 
*OASInvoiceApi* | [**getInvoice**](OASInvoiceApi.md#getInvoice) | **GET** /api/v1/invoices/{id} | 
*OASInvoiceApi* | [**getInvoicePdfUrl**](OASInvoiceApi.md#getInvoicePdfUrl) | **GET** /api/v1/invoices/{id}/pdf-url | 
*OASInvoiceApi* | [**getInvoices**](OASInvoiceApi.md#getInvoices) | **GET** /api/v1/invoices/ | 
*OASInvoiceApi* | [**invoiceRestore**](OASInvoiceApi.md#invoiceRestore) | **POST** /api/v1/invoices/{id}/restore | 
*OASInvoiceApi* | [**updateInvoice**](OASInvoiceApi.md#updateInvoice) | **PUT** /api/v1/invoices/{id} | 
*OASJobApplicationApi* | [**applyPublic**](OASJobApplicationApi.md#applyPublic) | **POST** /api/v1/public/jobs/{posting_id}/apply | 
*OASJobApplicationApi* | [**deleteJobApplication**](OASJobApplicationApi.md#deleteJobApplication) | **DELETE** /api/v1/job-applications/{application_id} | 
*OASJobApplicationApi* | [**downloadCv**](OASJobApplicationApi.md#downloadCv) | **GET** /api/v1/job-applications/{application_id}/cv | 
*OASJobApplicationApi* | [**getJobApplication**](OASJobApplicationApi.md#getJobApplication) | **GET** /api/v1/job-applications/{application_id} | 
*OASJobApplicationApi* | [**inboundEmail**](OASJobApplicationApi.md#inboundEmail) | **POST** /api/v1/public/jobs/inbound-email | Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form\nwith &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;body-plain&#x60; and one or more &#x60;attachment-N&#x60; file\nfields. The subject may reference a posting as &#x60;[JOB-&lt;posting_id&gt;]&#x60;;\nwithout one the application lands in the general inbox.
*OASJobApplicationApi* | [**listJobApplications**](OASJobApplicationApi.md#listJobApplications) | **GET** /api/v1/job-applications | 
*OASJobApplicationApi* | [**listPublicPostings**](OASJobApplicationApi.md#listPublicPostings) | **GET** /api/v1/public/jobs | 
*OASJobApplicationApi* | [**scoreJobApplication**](OASJobApplicationApi.md#scoreJobApplication) | **POST** /api/v1/job-applications/{application_id}/score | 
*OASJobApplicationApi* | [**updateJobApplicationStatus**](OASJobApplicationApi.md#updateJobApplicationStatus) | **PATCH** /api/v1/job-applications/{application_id}/status | 
*OASJobPostingApi* | [**createJobPosting**](OASJobPostingApi.md#createJobPosting) | **POST** /api/v1/job-postings | 
*OASJobPostingApi* | [**deleteJobPosting**](OASJobPostingApi.md#deleteJobPosting) | **DELETE** /api/v1/job-postings/{id} | 
*OASJobPostingApi* | [**getJobPosting**](OASJobPostingApi.md#getJobPosting) | **GET** /api/v1/job-postings/{id} | 
*OASJobPostingApi* | [**listJobPostings**](OASJobPostingApi.md#listJobPostings) | **GET** /api/v1/job-postings | 
*OASJobPostingApi* | [**updateJobPosting**](OASJobPostingApi.md#updateJobPosting) | **PUT** /api/v1/job-postings/{id} | 
*OASKonzernApi* | [**konzernExportApi**](OASKonzernApi.md#konzernExportApi) | **GET** /api/v1/bookkeeping/konzern/status/export | 
*OASKonzernApi* | [**konzernStatusApi**](OASKonzernApi.md#konzernStatusApi) | **GET** /api/v1/bookkeeping/konzern/status | 
*OASKostenVorschauApi* | [**kostenVorschauApi**](OASKostenVorschauApi.md#kostenVorschauApi) | **GET** /api/v1/bookkeeping/kosten-vorschau | 
*OASKstApi* | [**kstApi**](OASKstApi.md#kstApi) | **GET** /api/v1/bookkeeping/kst | 
*OASKycRecordApi* | [**createKycRecord**](OASKycRecordApi.md#createKycRecord) | **POST** /api/v1/kyc-records | 
*OASKycRecordApi* | [**deleteKycRecord**](OASKycRecordApi.md#deleteKycRecord) | **DELETE** /api/v1/kyc-records/{id} | 
*OASKycRecordApi* | [**getKycRecord**](OASKycRecordApi.md#getKycRecord) | **GET** /api/v1/kyc-records/{id} | 
*OASKycRecordApi* | [**getKycRecords**](OASKycRecordApi.md#getKycRecords) | **GET** /api/v1/kyc-records/ | 
*OASKycRecordApi* | [**updateKycRecord**](OASKycRecordApi.md#updateKycRecord) | **PUT** /api/v1/kyc-records/{id} | 
*OASLeadApi* | [**listLeadsApi**](OASLeadApi.md#listLeadsApi) | **GET** /api/v1/support/leads | 
*OASLeadApi* | [**updateLeadApi**](OASLeadApi.md#updateLeadApi) | **PUT** /api/v1/support/leads/{lead_id} | 
*OASLegalDocumentApi* | [**getLegalDocuments**](OASLegalDocumentApi.md#getLegalDocuments) | **GET** /api/v1/legal/documents | List all legal documents of the tenant. Missing documents are seeded from\nthe default texts (with tenant placeholders replaced) on first access.
*OASLegalDocumentApi* | [**resetLegalDocuments**](OASLegalDocumentApi.md#resetLegalDocuments) | **POST** /api/v1/legal/documents/reset | Restore default texts for all documents (or a single doc_type/lang when\nthe optional filter is given). Returns the full tenant list.
*OASLegalDocumentApi* | [**upsertLegalDocuments**](OASLegalDocumentApi.md#upsertLegalDocuments) | **PUT** /api/v1/legal/documents | Upsert legal documents per (doc_type, lang). Returns the full tenant list.
*OASListOpenItemsApi* | [**listOpenItemsApi**](OASListOpenItemsApi.md#listOpenItemsApi) | **GET** /api/v1/bookkeeping/open-items | 
*OASMarketplaceApiApi* | [**createConnectionApi**](OASMarketplaceApiApi.md#createConnectionApi) | **POST** /api/v1/marketplace/connections | Create a new connection (for API-key based platforms)
*OASMarketplaceApiApi* | [**deleteConnectionApi**](OASMarketplaceApiApi.md#deleteConnectionApi) | **DELETE** /api/v1/marketplace/connections/{connection_id} | Soft-delete a connection
*OASMarketplaceApiApi* | [**getConnectionApi**](OASMarketplaceApiApi.md#getConnectionApi) | **GET** /api/v1/marketplace/connections/{connection_id} | Get a single connection
*OASMarketplaceApiApi* | [**getSyncDirectionApi**](OASMarketplaceApiApi.md#getSyncDirectionApi) | **GET** /api/v1/marketplace/connections/{connection_id}/directions | Get current sync direction configuration for a connection
*OASMarketplaceApiApi* | [**getSyncLogsApi**](OASMarketplaceApiApi.md#getSyncLogsApi) | **GET** /api/v1/marketplace/connections/{connection_id}/logs | Get sync logs for a connection
*OASMarketplaceApiApi* | [**listConnectionsApi**](OASMarketplaceApiApi.md#listConnectionsApi) | **GET** /api/v1/marketplace/connections | List connections for the current tenant
*OASMarketplaceApiApi* | [**listPlatformsApi**](OASMarketplaceApiApi.md#listPlatformsApi) | **GET** /api/v1/marketplace/platforms | List all supported platforms
*OASMarketplaceApiApi* | [**oauthAuthorizeApi**](OASMarketplaceApiApi.md#oauthAuthorizeApi) | **POST** /api/v1/marketplace/oauth/authorize | OAuth: initiate authorization flow
*OASMarketplaceApiApi* | [**oauthCallbackApi**](OASMarketplaceApiApi.md#oauthCallbackApi) | **POST** /api/v1/marketplace/oauth/callback | OAuth: handle callback after authorization
*OASMarketplaceApiApi* | [**triggerSyncApi**](OASMarketplaceApiApi.md#triggerSyncApi) | **POST** /api/v1/marketplace/connections/{connection_id}/sync | Trigger sync for a connection
*OASMarketplaceApiApi* | [**updateConnectionApi**](OASMarketplaceApiApi.md#updateConnectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id} | Update a connection
*OASMarketplaceApiApi* | [**updateSyncDirectionApi**](OASMarketplaceApiApi.md#updateSyncDirectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id}/directions | Update per-entity sync direction configuration for a connection
*OASMarketplaceApiApi* | [**webhookReceiverApi**](OASMarketplaceApiApi.md#webhookReceiverApi) | **POST** /api/v1/marketplace/webhook/{platform}/{connection_id} | Webhook receiver
*OASNotificationsApi* | [**deleteNotification**](OASNotificationsApi.md#deleteNotification) | **DELETE** /api/v1/notifications/{id} | 
*OASNotificationsApi* | [**listNotifications**](OASNotificationsApi.md#listNotifications) | **GET** /api/v1/notifications | 
*OASNotificationsApi* | [**markAllRead**](OASNotificationsApi.md#markAllRead) | **PUT** /api/v1/notifications/read-all | 
*OASNotificationsApi* | [**markAsRead**](OASNotificationsApi.md#markAsRead) | **PUT** /api/v1/notifications/{id}/read | 
*OASNotificationsApi* | [**unreadCount**](OASNotificationsApi.md#unreadCount) | **GET** /api/v1/notifications/unread-count | 
*OASOffenlegungApi* | [**offenlegungApi**](OASOffenlegungApi.md#offenlegungApi) | **GET** /api/v1/bookkeeping/offenlegung | 
*OASOnlineshopApi* | [**getSmtpConfigApi**](OASOnlineshopApi.md#getSmtpConfigApi) | **GET** /api/v1/settings/smtp | 
*OASOnlineshopApi* | [**saveSmtpConfigApi**](OASOnlineshopApi.md#saveSmtpConfigApi) | **PUT** /api/v1/settings/smtp | 
*OASOrderApi* | [**addOrderTags**](OASOrderApi.md#addOrderTags) | **POST** /api/v1/orders/{order_id}/tags | 
*OASOrderApi* | [**findOrderByExternalRef**](OASOrderApi.md#findOrderByExternalRef) | **GET** /api/v1/orders/by-ext-ref/{ext_ref} | 
*OASOrderApi* | [**getOrder**](OASOrderApi.md#getOrder) | **GET** /api/v1/order/{order_number} | 
*OASOrderApi* | [**getOrders**](OASOrderApi.md#getOrders) | **GET** /api/v1/orders | 
*OASOrderApi* | [**patchOrder**](OASOrderApi.md#patchOrder) | **PATCH** /api/v1/orders/{order_id} | 
*OASOrderApi* | [**replaceOrderTags**](OASOrderApi.md#replaceOrderTags) | **PUT** /api/v1/orders/{order_id}/tags | 
*OASOrderApi* | [**updateOrderState**](OASOrderApi.md#updateOrderState) | **PUT** /api/v1/orders/{order_id}/state | 
*OASOrderConfirmationApi* | [**createConfirmation**](OASOrderConfirmationApi.md#createConfirmation) | **POST** /api/v1/order-confirmations | 
*OASOrderConfirmationApi* | [**deleteConfirmation**](OASOrderConfirmationApi.md#deleteConfirmation) | **DELETE** /api/v1/order-confirmations/{confirmation_id} | 
*OASOrderConfirmationApi* | [**downloadConfirmationPdf**](OASOrderConfirmationApi.md#downloadConfirmationPdf) | **GET** /api/v1/order-confirmations/{confirmation_id}/pdf | 
*OASOrderConfirmationApi* | [**getConfirmation**](OASOrderConfirmationApi.md#getConfirmation) | **GET** /api/v1/order-confirmations/{confirmation_id} | 
*OASOrderConfirmationApi* | [**listConfirmations**](OASOrderConfirmationApi.md#listConfirmations) | **GET** /api/v1/order-confirmations/ | 
*OASOrderConfirmationApi* | [**orderconfirmationRestore**](OASOrderConfirmationApi.md#orderconfirmationRestore) | **POST** /api/v1/order-confirmations/{confirmation_id}/restore | 
*OASOrderConfirmationApi* | [**pursueConfirmation**](OASOrderConfirmationApi.md#pursueConfirmation) | **POST** /api/v1/order-confirmations/{confirmation_id}/pursue | 
*OASOssReportApi* | [**ossReportApi**](OASOssReportApi.md#ossReportApi) | **GET** /api/v1/bookkeeping/oss | 
*OASPackingApi* | [**completePacking**](OASPackingApi.md#completePacking) | **POST** /api/v1/packing/{order_number}/complete | Mark packing as complete and transition order to shipped
*OASPackingApi* | [**getPackingQueue**](OASPackingApi.md#getPackingQueue) | **GET** /api/v1/packing/queue | Get the packing queue - orders ready for packing
*OASPackingApi* | [**printDeliveryNote**](OASPackingApi.md#printDeliveryNote) | **POST** /api/v1/packing/{order_number}/print-delivery-note | Print delivery note (Lieferschein) for an order
*OASPackingApi* | [**printLabel**](OASPackingApi.md#printLabel) | **POST** /api/v1/packing/{order_number}/print-label | Print shipping label for an order
*OASPackingApi* | [**recordPackingVideo**](OASPackingApi.md#recordPackingVideo) | **POST** /api/v1/packing/{order_number}/record-video | Record video of packing process
*OASParticipationApi* | [**createParticipation**](OASParticipationApi.md#createParticipation) | **POST** /api/v1/participations | 
*OASParticipationApi* | [**deleteParticipation**](OASParticipationApi.md#deleteParticipation) | **DELETE** /api/v1/participations/{id} | 
*OASParticipationApi* | [**getParticipation**](OASParticipationApi.md#getParticipation) | **GET** /api/v1/participations/{id} | 
*OASParticipationApi* | [**getParticipations**](OASParticipationApi.md#getParticipations) | **GET** /api/v1/participations/ | 
*OASParticipationApi* | [**updateParticipation**](OASParticipationApi.md#updateParticipation) | **PUT** /api/v1/participations/{id} | 
*OASPaygapApi* | [**paygapAuskunftApi**](OASPaygapApi.md#paygapAuskunftApi) | **GET** /api/v1/bookkeeping/paygap/auskunft/{employee_id} | 
*OASPaygapApi* | [**paygapExportApi**](OASPaygapApi.md#paygapExportApi) | **GET** /api/v1/bookkeeping/paygap/export | 
*OASPaygapApi* | [**paygapReportApi**](OASPaygapApi.md#paygapReportApi) | **GET** /api/v1/bookkeeping/paygap/report | 
*OASPaymentApi* | [**createPayment**](OASPaymentApi.md#createPayment) | **POST** /api/v1/payments | 
*OASPaymentApi* | [**deletePayment**](OASPaymentApi.md#deletePayment) | **DELETE** /api/v1/payments/{id} | 
*OASPaymentApi* | [**getPayment**](OASPaymentApi.md#getPayment) | **GET** /api/v1/payments/{id} | 
*OASPaymentApi* | [**getPayments**](OASPaymentApi.md#getPayments) | **GET** /api/v1/payments/ | 
*OASPaymentApi* | [**paymentRestore**](OASPaymentApi.md#paymentRestore) | **POST** /api/v1/payments/{id}/restore | 
*OASPaymentApi* | [**updatePayment**](OASPaymentApi.md#updatePayment) | **PUT** /api/v1/payments/{id} | 
*OASPaymentConditionApi* | [**listPaymentConditionsApi**](OASPaymentConditionApi.md#listPaymentConditionsApi) | **GET** /api/v1/payment-conditions | 
*OASPaymentGatewayApi* | [**createPaymentGatewayApi**](OASPaymentGatewayApi.md#createPaymentGatewayApi) | **POST** /api/v1/payment-gateways | 
*OASPaymentGatewayApi* | [**deletePaymentGatewayApi**](OASPaymentGatewayApi.md#deletePaymentGatewayApi) | **DELETE** /api/v1/payment-gateways/{gateway_id} | 
*OASPaymentGatewayApi* | [**listPaymentGatewaysApi**](OASPaymentGatewayApi.md#listPaymentGatewaysApi) | **GET** /api/v1/payment-gateways/ | 
*OASPaymentGatewayApi* | [**oauthAuthorizeApi**](OASPaymentGatewayApi.md#oauthAuthorizeApi) | **POST** /api/v1/payment-gateways/oauth/authorize | 
*OASPaymentGatewayApi* | [**oauthCallbackApi**](OASPaymentGatewayApi.md#oauthCallbackApi) | **POST** /api/v1/payment-gateways/oauth/callback | 
*OASPaymentGatewayApi* | [**updatePaymentGatewayApi**](OASPaymentGatewayApi.md#updatePaymentGatewayApi) | **PUT** /api/v1/payment-gateways/{gateway_id} | 
*OASPayrollApi* | [**payrollApprove**](OASPayrollApi.md#payrollApprove) | **POST** /api/v1/payroll/{id}/approve | 
*OASPayrollApi* | [**payrollAutopay**](OASPayrollApi.md#payrollAutopay) | **POST** /api/v1/payroll/{id}/autopay | 
*OASPayrollApi* | [**payrollCalculate**](OASPayrollApi.md#payrollCalculate) | **POST** /api/v1/payroll/{id}/calculate | 
*OASPayrollApi* | [**payrollCreate**](OASPayrollApi.md#payrollCreate) | **POST** /api/v1/payroll | 
*OASPayrollApi* | [**payrollDelete**](OASPayrollApi.md#payrollDelete) | **DELETE** /api/v1/payroll/{id} | 
*OASPayrollApi* | [**payrollElsterExport**](OASPayrollApi.md#payrollElsterExport) | **POST** /api/v1/payroll/{id}/elster-export | 
*OASPayrollApi* | [**payrollEmail**](OASPayrollApi.md#payrollEmail) | **POST** /api/v1/payroll/{id}/email | 
*OASPayrollApi* | [**payrollEntryPdf**](OASPayrollApi.md#payrollEntryPdf) | **GET** /api/v1/payroll/{id}/entries/{entry_id}/pdf | 
*OASPayrollApi* | [**payrollGet**](OASPayrollApi.md#payrollGet) | **GET** /api/v1/payroll/{id} | 
*OASPayrollApi* | [**payrollList**](OASPayrollApi.md#payrollList) | **GET** /api/v1/payroll | 
*OASPayrollApi* | [**payrollPay**](OASPayrollApi.md#payrollPay) | **POST** /api/v1/payroll/{id}/pay | 
*OASPayrollApi* | [**payrollPdf**](OASPayrollApi.md#payrollPdf) | **GET** /api/v1/payroll/{id}/pdf | 
*OASPayrollApi* | [**payrollSummary**](OASPayrollApi.md#payrollSummary) | **GET** /api/v1/payroll/summary/{year} | 
*OASPayrollApi* | [**payrollSvMeldungen**](OASPayrollApi.md#payrollSvMeldungen) | **POST** /api/v1/payroll/{id}/sv-meldungen | 
*OASPeppolApi* | [**peppolApi**](OASPeppolApi.md#peppolApi) | **GET** /api/v1/invoices/{id}/peppol | 
*OASPlausibilityApi* | [**plausibilityCheckApi**](OASPlausibilityApi.md#plausibilityCheckApi) | **GET** /api/v1/bookkeeping/plausibility | 
*OASPosApi* | [**posBilling**](OASPosApi.md#posBilling) | **GET** /api/pos/billing | 
*OASPosApi* | [**posCreateOrder**](OASPosApi.md#posCreateOrder) | **POST** /api/pos/orders | 
*OASPosApi* | [**posCreateRegister**](OASPosApi.md#posCreateRegister) | **POST** /api/pos/registers | 
*OASPosApi* | [**posCreateTable**](OASPosApi.md#posCreateTable) | **POST** /api/pos/tables | 
*OASPosApi* | [**posDisableRegister**](OASPosApi.md#posDisableRegister) | **POST** /api/pos/registers/{id}/disable | 
*OASPosApi* | [**posFreeTable**](OASPosApi.md#posFreeTable) | **POST** /api/pos/tables/{id}/free | 
*OASPosApi* | [**posKasseClosing**](OASPosApi.md#posKasseClosing) | **POST** /api/pos/kasse/closing | 
*OASPosApi* | [**posKasseEntries**](OASPosApi.md#posKasseEntries) | **GET** /api/pos/kasse/entries | 
*OASPosApi* | [**posKasseExport**](OASPosApi.md#posKasseExport) | **GET** /api/pos/kasse/export | 
*OASPosApi* | [**posKassePayInOut**](OASPosApi.md#posKassePayInOut) | **POST** /api/pos/kasse/pay-in-out | 
*OASPosApi* | [**posListOrders**](OASPosApi.md#posListOrders) | **GET** /api/pos/orders | 
*OASPosApi* | [**posListProducts**](OASPosApi.md#posListProducts) | **GET** /api/pos/products | 
*OASPosApi* | [**posListRegisters**](OASPosApi.md#posListRegisters) | **GET** /api/pos/registers | 
*OASPosApi* | [**posListTables**](OASPosApi.md#posListTables) | **GET** /api/pos/tables | 
*OASPosApi* | [**posOrderPrint**](OASPosApi.md#posOrderPrint) | **GET** /api/pos/orders/{order_number}/print | 
*OASPosApi* | [**posOrderReceipt**](OASPosApi.md#posOrderReceipt) | **GET** /api/pos/orders/{order_number}/receipt | 
*OASPosApi* | [**posPayOrder**](OASPosApi.md#posPayOrder) | **POST** /api/pos/orders/{order_number}/pay | 
*OASPosApi* | [**posSumupCheckout**](OASPosApi.md#posSumupCheckout) | **POST** /api/pos/sumup/checkout | 
*OASPostingCategoryApi* | [**createPostingCategory**](OASPostingCategoryApi.md#createPostingCategory) | **POST** /api/v1/posting-categories | 
*OASPostingCategoryApi* | [**deletePostingCategory**](OASPostingCategoryApi.md#deletePostingCategory) | **DELETE** /api/v1/posting-categories/{category_id} | 
*OASPostingCategoryApi* | [**listPostingCategories**](OASPostingCategoryApi.md#listPostingCategories) | **GET** /api/v1/posting-categories | 
*OASPostingCategoryApi* | [**seedPostingCategories**](OASPostingCategoryApi.md#seedPostingCategories) | **POST** /api/v1/posting-categories/seed/{skr_version} | 
*OASPostingCategoryApi* | [**updatePostingCategory**](OASPostingCategoryApi.md#updatePostingCategory) | **PUT** /api/v1/posting-categories/{category_id} | 
*OASPriceTierApi* | [**createPriceTier**](OASPriceTierApi.md#createPriceTier) | **POST** /api/v1/price-tiers | 
*OASPriceTierApi* | [**deletePriceTier**](OASPriceTierApi.md#deletePriceTier) | **DELETE** /api/v1/price-tiers/{price_tier_id} | 
*OASPriceTierApi* | [**getPriceTier**](OASPriceTierApi.md#getPriceTier) | **GET** /api/v1/price-tiers/{price_tier_id} | 
*OASPriceTierApi* | [**getResolvedPrice**](OASPriceTierApi.md#getResolvedPrice) | **GET** /api/v1/price-tiers/resolved | 
*OASPriceTierApi* | [**listPriceTiers**](OASPriceTierApi.md#listPriceTiers) | **GET** /api/v1/price-tiers/ | 
*OASPriceTierApi* | [**updatePriceTier**](OASPriceTierApi.md#updatePriceTier) | **PUT** /api/v1/price-tiers/{price_tier_id} | 
*OASProductApi* | [**createProductApi**](OASProductApi.md#createProductApi) | **POST** /api/v1/products | 
*OASProductApi* | [**deleteProductApi**](OASProductApi.md#deleteProductApi) | **DELETE** /api/v1/products/{product_id} | 
*OASProductApi* | [**getProductApi**](OASProductApi.md#getProductApi) | **GET** /api/v1/products/{product_id} | 
*OASProductApi* | [**getProductStockApi**](OASProductApi.md#getProductStockApi) | **GET** /api/v1/products/{product_id}/stock | 
*OASProductApi* | [**getProductsApi**](OASProductApi.md#getProductsApi) | **GET** /api/v1/products/ | 
*OASProductApi* | [**listLowStockProductsApi**](OASProductApi.md#listLowStockProductsApi) | **GET** /api/v1/products/low-stock | 
*OASProductApi* | [**productRestore**](OASProductApi.md#productRestore) | **POST** /api/v1/products/{product_id}/restore | 
*OASProductApi* | [**updateProductApi**](OASProductApi.md#updateProductApi) | **PUT** /api/v1/products/{product_id} | 
*OASProductApi* | [**updateProductStockApi**](OASProductApi.md#updateProductStockApi) | **PUT** /api/v1/products/{product_id}/stock | 
*OASProductAttributeApi* | [**createProductAttribute**](OASProductAttributeApi.md#createProductAttribute) | **POST** /api/v1/product-attributes | 
*OASProductAttributeApi* | [**deleteProductAttribute**](OASProductAttributeApi.md#deleteProductAttribute) | **DELETE** /api/v1/product-attributes/{attribute_id} | 
*OASProductAttributeApi* | [**getProductAttribute**](OASProductAttributeApi.md#getProductAttribute) | **GET** /api/v1/product-attributes/{attribute_id} | 
*OASProductAttributeApi* | [**listProductAttributes**](OASProductAttributeApi.md#listProductAttributes) | **GET** /api/v1/product-attributes/ | 
*OASProductAttributeApi* | [**updateProductAttribute**](OASProductAttributeApi.md#updateProductAttribute) | **PUT** /api/v1/product-attributes/{attribute_id} | 
*OASProductCategoryApi* | [**createProductCategory**](OASProductCategoryApi.md#createProductCategory) | **POST** /api/v1/product-categories | 
*OASProductCategoryApi* | [**deleteProductCategory**](OASProductCategoryApi.md#deleteProductCategory) | **DELETE** /api/v1/product-categories/{category_id} | 
*OASProductCategoryApi* | [**getProductCategory**](OASProductCategoryApi.md#getProductCategory) | **GET** /api/v1/product-categories/{category_id} | 
*OASProductCategoryApi* | [**listProductCategories**](OASProductCategoryApi.md#listProductCategories) | **GET** /api/v1/product-categories | 
*OASProductCategoryApi* | [**updateProductCategory**](OASProductCategoryApi.md#updateProductCategory) | **PUT** /api/v1/product-categories/{category_id} | 
*OASProductVariantApi* | [**createProductVariant**](OASProductVariantApi.md#createProductVariant) | **POST** /api/v1/product-variants | 
*OASProductVariantApi* | [**deleteProductVariant**](OASProductVariantApi.md#deleteProductVariant) | **DELETE** /api/v1/product-variants/{variant_id} | 
*OASProductVariantApi* | [**generateProductVariants**](OASProductVariantApi.md#generateProductVariants) | **POST** /api/v1/product-variants/generate | 
*OASProductVariantApi* | [**getProductVariant**](OASProductVariantApi.md#getProductVariant) | **GET** /api/v1/product-variants/{variant_id} | 
*OASProductVariantApi* | [**listProductVariants**](OASProductVariantApi.md#listProductVariants) | **GET** /api/v1/product-variants/ | 
*OASProductVariantApi* | [**updateProductVariant**](OASProductVariantApi.md#updateProductVariant) | **PUT** /api/v1/product-variants/{variant_id} | 
*OASProductionOrderApi* | [**createProductionOrder**](OASProductionOrderApi.md#createProductionOrder) | **POST** /api/v1/production-orders | 
*OASProductionOrderApi* | [**deleteProductionOrder**](OASProductionOrderApi.md#deleteProductionOrder) | **DELETE** /api/v1/production-orders/{production_order_id} | 
*OASProductionOrderApi* | [**getProductionOrder**](OASProductionOrderApi.md#getProductionOrder) | **GET** /api/v1/production-orders/{production_order_id} | 
*OASProductionOrderApi* | [**listProductionOrders**](OASProductionOrderApi.md#listProductionOrders) | **GET** /api/v1/production-orders/ | 
*OASProductionOrderApi* | [**productionOrderCosting**](OASProductionOrderApi.md#productionOrderCosting) | **GET** /api/v1/production-orders/{production_order_id}/costing | Actual-costing report (Nachkalkulation) — material costs from BOM\ncomponents at their purchase price plus the resulting per-unit cost and\nmargin against the finished product\&#39;s sale price.
*OASProductionOrderApi* | [**updateProductionOrder**](OASProductionOrderApi.md#updateProductionOrder) | **PUT** /api/v1/production-orders/{production_order_id} | 
*OASProductionOrderApi* | [**updateProductionOrderStatus**](OASProductionOrderApi.md#updateProductionOrderStatus) | **PUT** /api/v1/production-orders/{production_order_id}/status | 
*OASProformaInvoiceApi* | [**convertProformaToInvoice**](OASProformaInvoiceApi.md#convertProformaToInvoice) | **POST** /api/v1/proforma-invoices/{proforma_id}/convert | 
*OASProformaInvoiceApi* | [**createProformaInvoice**](OASProformaInvoiceApi.md#createProformaInvoice) | **POST** /api/v1/proforma-invoices | 
*OASProformaInvoiceApi* | [**deleteProformaInvoice**](OASProformaInvoiceApi.md#deleteProformaInvoice) | **DELETE** /api/v1/proforma-invoices/{proforma_id} | 
*OASProformaInvoiceApi* | [**getProformaInvoice**](OASProformaInvoiceApi.md#getProformaInvoice) | **GET** /api/v1/proforma-invoices/{proforma_id} | 
*OASProformaInvoiceApi* | [**listProformaInvoices**](OASProformaInvoiceApi.md#listProformaInvoices) | **GET** /api/v1/proforma-invoices/ | 
*OASProformaInvoiceApi* | [**updateProformaInvoice**](OASProformaInvoiceApi.md#updateProformaInvoice) | **PUT** /api/v1/proforma-invoices/{proforma_id} | 
*OASProposeAssignmentsApi* | [**proposeAssignmentsApi**](OASProposeAssignmentsApi.md#proposeAssignmentsApi) | **GET** /api/v1/bookkeeping/propose-assignments | 
*OASPublicReturnsApi* | [**getPublicReturnStatus**](OASPublicReturnsApi.md#getPublicReturnStatus) | **GET** /api/v1/public/returns/status | Customer checks the status of a return (public, no auth). The return is\nonly revealed when its linked order\&#39;s email matches.
*OASPublicReturnsApi* | [**listPublicReturns**](OASPublicReturnsApi.md#listPublicReturns) | **GET** /api/v1/public/returns/list | List all returns for an order (public, no auth).
*OASPublicReturnsApi* | [**requestPublicReturn**](OASPublicReturnsApi.md#requestPublicReturn) | **POST** /api/v1/public/returns/request | Customer requests a return for an order (public, no auth).
*OASPurchaseOrderApi* | [**createPurchaseOrder**](OASPurchaseOrderApi.md#createPurchaseOrder) | **POST** /api/v1/purchase-orders | 
*OASPurchaseOrderApi* | [**deletePurchaseOrder**](OASPurchaseOrderApi.md#deletePurchaseOrder) | **DELETE** /api/v1/purchase-orders/{purchase_order_id} | 
*OASPurchaseOrderApi* | [**getPurchaseOrder**](OASPurchaseOrderApi.md#getPurchaseOrder) | **GET** /api/v1/purchase-orders/{purchase_order_id} | 
*OASPurchaseOrderApi* | [**listPurchaseOrders**](OASPurchaseOrderApi.md#listPurchaseOrders) | **GET** /api/v1/purchase-orders/ | 
*OASPurchaseOrderApi* | [**matchInvoice**](OASPurchaseOrderApi.md#matchInvoice) | **POST** /api/v1/purchase-orders/{purchase_order_id}/match-invoice | 3-way invoice check (Rechnungsprüfung): compares the purchase order line\nitems, the quantities received via goods receipts, and the supplier\ninvoice line items, reporting quantity and price variances per product.
*OASPurchaseOrderApi* | [**updatePurchaseOrder**](OASPurchaseOrderApi.md#updatePurchaseOrder) | **PUT** /api/v1/purchase-orders/{purchase_order_id} | 
*OASPurchaseOrderApi* | [**updatePurchaseOrderStatus**](OASPurchaseOrderApi.md#updatePurchaseOrderStatus) | **PUT** /api/v1/purchase-orders/{purchase_order_id}/status | 
*OASQuotationApi* | [**createQuotation**](OASQuotationApi.md#createQuotation) | **POST** /api/v1/quotations | 
*OASQuotationApi* | [**deleteQuotation**](OASQuotationApi.md#deleteQuotation) | **DELETE** /api/v1/quotations/{quotation_id} | 
*OASQuotationApi* | [**downloadQuotationPdf**](OASQuotationApi.md#downloadQuotationPdf) | **GET** /api/v1/quotations/{quotation_id}/pdf | 
*OASQuotationApi* | [**getQuotation**](OASQuotationApi.md#getQuotation) | **GET** /api/v1/quotations/{quotation_id} | 
*OASQuotationApi* | [**listQuotations**](OASQuotationApi.md#listQuotations) | **GET** /api/v1/quotations/ | 
*OASQuotationApi* | [**pursueQuotation**](OASQuotationApi.md#pursueQuotation) | **POST** /api/v1/quotations/{quotation_id}/pursue | 
*OASQuotationApi* | [**quotationRestore**](OASQuotationApi.md#quotationRestore) | **POST** /api/v1/quotations/{quotation_id}/restore | 
*OASQuotationApi* | [**updateQuotation**](OASQuotationApi.md#updateQuotation) | **PUT** /api/v1/quotations/{quotation_id} | 
*OASRecurringTemplateApi* | [**createRecurringTemplate**](OASRecurringTemplateApi.md#createRecurringTemplate) | **POST** /api/v1/recurring-templates | 
*OASRecurringTemplateApi* | [**deleteRecurringTemplate**](OASRecurringTemplateApi.md#deleteRecurringTemplate) | **DELETE** /api/v1/recurring-templates/{template_id} | 
*OASRecurringTemplateApi* | [**getRecurringTemplate**](OASRecurringTemplateApi.md#getRecurringTemplate) | **GET** /api/v1/recurring-templates/{template_id} | 
*OASRecurringTemplateApi* | [**listRecurringTemplates**](OASRecurringTemplateApi.md#listRecurringTemplates) | **GET** /api/v1/recurring-templates/ | 
*OASReorderProposalApi* | [**applyReorderProposal**](OASReorderProposalApi.md#applyReorderProposal) | **POST** /api/v1/reorder-proposals/apply | Convert a reorder proposal into a draft purchase order.
*OASReorderProposalApi* | [**getReorderProposal**](OASReorderProposalApi.md#getReorderProposal) | **GET** /api/v1/reorder-proposals | 
*OASReplenishmentApi* | [**applyReplenishments**](OASReplenishmentApi.md#applyReplenishments) | **POST** /api/v1/replenishments/apply | Create one draft stock transfer per (source → target) pair carrying all\nsuggested product lines for that pair.
*OASReplenishmentApi* | [**getReplenishments**](OASReplenishmentApi.md#getReplenishments) | **GET** /api/v1/replenishments | 
*OASReportsApi* | [**bilanzReportApi**](OASReportsApi.md#bilanzReportApi) | **GET** /api/v1/bookkeeping/reports/bilanz | Bilanz (Balance Sheet)
*OASReportsApi* | [**guvReportApi**](OASReportsApi.md#guvReportApi) | **GET** /api/v1/bookkeeping/reports/guv | Gewinn- und Verlustrechnung (P&amp;L statement)
*OASReportsApi* | [**kontenansichtReportApi**](OASReportsApi.md#kontenansichtReportApi) | **GET** /api/v1/bookkeeping/reports/kontenansicht | Kontenansicht (Account Overview)
*OASReportsApi* | [**umsatzsteuerReportApi**](OASReportsApi.md#umsatzsteuerReportApi) | **GET** /api/v1/bookkeeping/reports/umsatzsteuer | Umsatzsteuer-Voranmeldung (VAT report)
*OASReturnOrderApi* | [**createReturnOrder**](OASReturnOrderApi.md#createReturnOrder) | **POST** /api/v1/returns | 
*OASReturnOrderApi* | [**deleteReturnOrder**](OASReturnOrderApi.md#deleteReturnOrder) | **DELETE** /api/v1/returns/{return_order_id} | 
*OASReturnOrderApi* | [**getReturnOrder**](OASReturnOrderApi.md#getReturnOrder) | **GET** /api/v1/returns/{return_order_id} | 
*OASReturnOrderApi* | [**listReturnOrders**](OASReturnOrderApi.md#listReturnOrders) | **GET** /api/v1/returns/ | 
*OASReturnOrderApi* | [**returnLogisticsQueue**](OASReturnOrderApi.md#returnLogisticsQueue) | **GET** /api/v1/returns/logistics-queue | 
*OASReturnOrderApi* | [**returnLogisticsSummary**](OASReturnOrderApi.md#returnLogisticsSummary) | **GET** /api/v1/returns/logistics-summary | Returns-logistics aggregation for the dashboard: quantities received,\nrestocked and scrapped per warehouse.
*OASReturnOrderApi* | [**updateReturnOrder**](OASReturnOrderApi.md#updateReturnOrder) | **PUT** /api/v1/returns/{return_order_id} | 
*OASReturnOrderApi* | [**updateReturnOrderStatus**](OASReturnOrderApi.md#updateReturnOrderStatus) | **PUT** /api/v1/returns/{return_order_id}/status | 
*OASRfqApi* | [**convertRfq**](OASRfqApi.md#convertRfq) | **POST** /api/v1/rfqs/{rfq_id}/convert | Convert an RFQ into a draft purchase order using the quoted unit prices\n(falling back to the requested prices, then leaving them blank). Marks the\nRFQ as &#x60;converted&#x60;.
*OASRfqApi* | [**createRfq**](OASRfqApi.md#createRfq) | **POST** /api/v1/rfqs | 
*OASRfqApi* | [**deleteRfq**](OASRfqApi.md#deleteRfq) | **DELETE** /api/v1/rfqs/{rfq_id} | 
*OASRfqApi* | [**getRfq**](OASRfqApi.md#getRfq) | **GET** /api/v1/rfqs/{rfq_id} | 
*OASRfqApi* | [**listRfqs**](OASRfqApi.md#listRfqs) | **GET** /api/v1/rfqs/ | 
*OASRfqApi* | [**updateRfq**](OASRfqApi.md#updateRfq) | **PUT** /api/v1/rfqs/{rfq_id} | 
*OASRfqApi* | [**updateRfqStatus**](OASRfqApi.md#updateRfqStatus) | **PUT** /api/v1/rfqs/{rfq_id}/status | 
*OASSearchApi* | [**globalSearch**](OASSearchApi.md#globalSearch) | **GET** /api/v1/search | GET /api/v1/search?q&#x3D;...
*OASSearchApi* | [**myPermissions**](OASSearchApi.md#myPermissions) | **GET** /api/v1/me/permissions | GET /api/v1/me/permissions — resolved permissions from the auth token,\nused by the frontend to show/hide admin navigation.
*OASServiceAssignmentApi* | [**createServiceAssignment**](OASServiceAssignmentApi.md#createServiceAssignment) | **POST** /api/v1/service-assignments | 
*OASServiceAssignmentApi* | [**deleteServiceAssignment**](OASServiceAssignmentApi.md#deleteServiceAssignment) | **DELETE** /api/v1/service-assignments/{id} | 
*OASServiceAssignmentApi* | [**getServiceAssignment**](OASServiceAssignmentApi.md#getServiceAssignment) | **GET** /api/v1/service-assignments/{id} | 
*OASServiceAssignmentApi* | [**getServiceAssignments**](OASServiceAssignmentApi.md#getServiceAssignments) | **GET** /api/v1/service-assignments/ | 
*OASServiceAssignmentApi* | [**updateServiceAssignment**](OASServiceAssignmentApi.md#updateServiceAssignment) | **PUT** /api/v1/service-assignments/{id} | 
*OASServiceJobApi* | [**createServiceJob**](OASServiceJobApi.md#createServiceJob) | **POST** /api/v1/service-jobs | 
*OASServiceJobApi* | [**deleteServiceJob**](OASServiceJobApi.md#deleteServiceJob) | **DELETE** /api/v1/service-jobs/{id} | 
*OASServiceJobApi* | [**getServiceJob**](OASServiceJobApi.md#getServiceJob) | **GET** /api/v1/service-jobs/{id} | 
*OASServiceJobApi* | [**getServiceJobs**](OASServiceJobApi.md#getServiceJobs) | **GET** /api/v1/service-jobs/ | 
*OASServiceJobApi* | [**updateServiceJob**](OASServiceJobApi.md#updateServiceJob) | **PUT** /api/v1/service-jobs/{id} | 
*OASShareholderApi* | [**createShareholder**](OASShareholderApi.md#createShareholder) | **POST** /api/v1/shareholders | 
*OASShareholderApi* | [**deleteShareholder**](OASShareholderApi.md#deleteShareholder) | **DELETE** /api/v1/shareholders/{id} | 
*OASShareholderApi* | [**getShareholder**](OASShareholderApi.md#getShareholder) | **GET** /api/v1/shareholders/{id} | 
*OASShareholderApi* | [**getShareholders**](OASShareholderApi.md#getShareholders) | **GET** /api/v1/shareholders/ | 
*OASShareholderApi* | [**updateShareholder**](OASShareholderApi.md#updateShareholder) | **PUT** /api/v1/shareholders/{id} | 
*OASShipmentApi* | [**createShipment**](OASShipmentApi.md#createShipment) | **POST** /api/v1/shipments | 
*OASShipmentApi* | [**createShipmentFromOrder**](OASShipmentApi.md#createShipmentFromOrder) | **POST** /api/v1/orders/{order_number}/shipments | Create a real shipment for an order: calls the configured carrier\&#39;s label\nAPI, stores the returned tracking/label on a new shipment row, and marks\nthe order as shipped.
*OASShipmentApi* | [**deleteShipment**](OASShipmentApi.md#deleteShipment) | **DELETE** /api/v1/shipments/{shipment_id} | 
*OASShipmentApi* | [**getShipment**](OASShipmentApi.md#getShipment) | **GET** /api/v1/shipments/{shipment_id} | 
*OASShipmentApi* | [**listShipments**](OASShipmentApi.md#listShipments) | **GET** /api/v1/shipments | 
*OASShipmentApi* | [**trackOrderPublic**](OASShipmentApi.md#trackOrderPublic) | **POST** /api/v1/public/track | Customer-facing tracking lookup: order number + email → shipment status and\nlive carrier events. No auth (public storefront API).
*OASShipmentApi* | [**trackShipmentApi**](OASShipmentApi.md#trackShipmentApi) | **GET** /api/v1/shipments/{shipment_id}/tracking | 
*OASShipmentApi* | [**updateShipmentStatus**](OASShipmentApi.md#updateShipmentStatus) | **PUT** /api/v1/shipments/{shipment_id}/status | 
*OASShippingApi* | [**getCredentialsApi**](OASShippingApi.md#getCredentialsApi) | **GET** /api/v1/shipping/credentials | 
*OASShippingApi* | [**getRatesApi**](OASShippingApi.md#getRatesApi) | **POST** /api/v1/shipping/rates | 
*OASShippingApi* | [**listProvidersApi**](OASShippingApi.md#listProvidersApi) | **GET** /api/v1/shipping/providers | 
*OASShippingApi* | [**saveCredentialsApi**](OASShippingApi.md#saveCredentialsApi) | **PUT** /api/v1/shipping/credentials | 
*OASShippingRuleApi* | [**createShippingRule**](OASShippingRuleApi.md#createShippingRule) | **POST** /api/v1/shipping-rules | 
*OASShippingRuleApi* | [**deleteShippingRule**](OASShippingRuleApi.md#deleteShippingRule) | **DELETE** /api/v1/shipping-rules/{rule_id} | 
*OASShippingRuleApi* | [**getShippingRule**](OASShippingRuleApi.md#getShippingRule) | **GET** /api/v1/shipping-rules/{rule_id} | 
*OASShippingRuleApi* | [**listShippingRules**](OASShippingRuleApi.md#listShippingRules) | **GET** /api/v1/shipping-rules/ | 
*OASShippingRuleApi* | [**updateShippingRule**](OASShippingRuleApi.md#updateShippingRule) | **PUT** /api/v1/shipping-rules/{rule_id} | 
*OASShippingThresholdApi* | [**createShippingThreshold**](OASShippingThresholdApi.md#createShippingThreshold) | **POST** /api/v1/shipping-thresholds | 
*OASShippingThresholdApi* | [**deleteShippingThreshold**](OASShippingThresholdApi.md#deleteShippingThreshold) | **DELETE** /api/v1/shipping-thresholds/{threshold_id} | 
*OASShippingThresholdApi* | [**getDeliverable**](OASShippingThresholdApi.md#getDeliverable) | **GET** /api/v1/shipping-thresholds/deliverable | 
*OASShippingThresholdApi* | [**getShippingThreshold**](OASShippingThresholdApi.md#getShippingThreshold) | **GET** /api/v1/shipping-thresholds/{threshold_id} | 
*OASShippingThresholdApi* | [**listShippingThresholds**](OASShippingThresholdApi.md#listShippingThresholds) | **GET** /api/v1/shipping-thresholds/ | 
*OASShippingThresholdApi* | [**updateShippingThreshold**](OASShippingThresholdApi.md#updateShippingThreshold) | **PUT** /api/v1/shipping-thresholds/{threshold_id} | 
*OASShopApi* | [**shopEditorSave**](OASShopApi.md#shopEditorSave) | **POST** /api/v1/shop/editor | 
*OASSilentPartnerApi* | [**createSilentPartner**](OASSilentPartnerApi.md#createSilentPartner) | **POST** /api/v1/silent-partners | 
*OASSilentPartnerApi* | [**deleteSilentPartner**](OASSilentPartnerApi.md#deleteSilentPartner) | **DELETE** /api/v1/silent-partners/{id} | 
*OASSilentPartnerApi* | [**getSilentPartner**](OASSilentPartnerApi.md#getSilentPartner) | **GET** /api/v1/silent-partners/{id} | 
*OASSilentPartnerApi* | [**getSilentPartners**](OASSilentPartnerApi.md#getSilentPartners) | **GET** /api/v1/silent-partners/ | 
*OASSilentPartnerApi* | [**updateSilentPartner**](OASSilentPartnerApi.md#updateSilentPartner) | **PUT** /api/v1/silent-partners/{id} | 
*OASStilleApi* | [**stilleExportApi**](OASStilleApi.md#stilleExportApi) | **GET** /api/v1/bookkeeping/stille/export | 
*OASStilleApi* | [**stilleReportApi**](OASStilleApi.md#stilleReportApi) | **GET** /api/v1/bookkeeping/stille/report | 
*OASStockMovementApi* | [**getStockMovement**](OASStockMovementApi.md#getStockMovement) | **GET** /api/v1/stock-movements/{movement_id} | 
*OASStockMovementApi* | [**listStockMovements**](OASStockMovementApi.md#listStockMovements) | **GET** /api/v1/stock-movements/ | 
*OASStockTransferApi* | [**createStockTransfer**](OASStockTransferApi.md#createStockTransfer) | **POST** /api/v1/stock-transfers | 
*OASStockTransferApi* | [**deleteStockTransfer**](OASStockTransferApi.md#deleteStockTransfer) | **DELETE** /api/v1/stock-transfers/{stock_transfer_id} | 
*OASStockTransferApi* | [**getStockTransfer**](OASStockTransferApi.md#getStockTransfer) | **GET** /api/v1/stock-transfers/{stock_transfer_id} | 
*OASStockTransferApi* | [**listStockTransfers**](OASStockTransferApi.md#listStockTransfers) | **GET** /api/v1/stock-transfers/ | 
*OASStockTransferApi* | [**updateStockTransferStatus**](OASStockTransferApi.md#updateStockTransferStatus) | **PUT** /api/v1/stock-transfers/{stock_transfer_id}/status | 
*OASSuitabilityApi* | [**shippingSuitabilityApi**](OASSuitabilityApi.md#shippingSuitabilityApi) | **POST** /api/v1/shipping/suitability | 
*OASSupplierConditionApi* | [**createSupplierCondition**](OASSupplierConditionApi.md#createSupplierCondition) | **POST** /api/v1/supplier-conditions | 
*OASSupplierConditionApi* | [**deleteSupplierCondition**](OASSupplierConditionApi.md#deleteSupplierCondition) | **DELETE** /api/v1/supplier-conditions/{supplier_condition_id} | 
*OASSupplierConditionApi* | [**getSupplierCondition**](OASSupplierConditionApi.md#getSupplierCondition) | **GET** /api/v1/supplier-conditions/{supplier_condition_id} | 
*OASSupplierConditionApi* | [**listSupplierConditions**](OASSupplierConditionApi.md#listSupplierConditions) | **GET** /api/v1/supplier-conditions/ | 
*OASSupplierConditionApi* | [**updateSupplierCondition**](OASSupplierConditionApi.md#updateSupplierCondition) | **PUT** /api/v1/supplier-conditions/{supplier_condition_id} | 
*OASSupplierInvoiceApi* | [**createSupplierInvoice**](OASSupplierInvoiceApi.md#createSupplierInvoice) | **POST** /api/v1/supplier-invoices | 
*OASSupplierInvoiceApi* | [**deleteSupplierInvoice**](OASSupplierInvoiceApi.md#deleteSupplierInvoice) | **DELETE** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*OASSupplierInvoiceApi* | [**getSupplierInvoice**](OASSupplierInvoiceApi.md#getSupplierInvoice) | **GET** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*OASSupplierInvoiceApi* | [**listSupplierInvoices**](OASSupplierInvoiceApi.md#listSupplierInvoices) | **GET** /api/v1/supplier-invoices/ | 
*OASSupplierInvoiceApi* | [**updateSupplierInvoice**](OASSupplierInvoiceApi.md#updateSupplierInvoice) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id} | 
*OASSupplierInvoiceApi* | [**updateSupplierInvoiceStatus**](OASSupplierInvoiceApi.md#updateSupplierInvoiceStatus) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id}/status | 
*OASSupportChannelApi* | [**createChannelApi**](OASSupportChannelApi.md#createChannelApi) | **POST** /api/v1/support/channels | 
*OASSupportChannelApi* | [**deleteChannelApi**](OASSupportChannelApi.md#deleteChannelApi) | **DELETE** /api/v1/support/channels/{channel_id} | 
*OASSupportChannelApi* | [**listChannelsApi**](OASSupportChannelApi.md#listChannelsApi) | **GET** /api/v1/support/channels | 
*OASSupportChannelApi* | [**updateChannelApi**](OASSupportChannelApi.md#updateChannelApi) | **PUT** /api/v1/support/channels/{channel_id} | 
*OASSupportTicketApi* | [**createTicketApi**](OASSupportTicketApi.md#createTicketApi) | **POST** /api/v1/support/tickets | 
*OASSupportTicketApi* | [**deleteTicketApi**](OASSupportTicketApi.md#deleteTicketApi) | **DELETE** /api/v1/support/tickets/{ticket_id} | 
*OASSupportTicketApi* | [**getTicketApi**](OASSupportTicketApi.md#getTicketApi) | **GET** /api/v1/support/tickets/{ticket_id} | 
*OASSupportTicketApi* | [**listTicketsApi**](OASSupportTicketApi.md#listTicketsApi) | **GET** /api/v1/support/tickets | 
*OASSupportTicketApi* | [**updateTicketApi**](OASSupportTicketApi.md#updateTicketApi) | **PUT** /api/v1/support/tickets/{ticket_id} | 
*OASTaxApi* | [**createTaxRate**](OASTaxApi.md#createTaxRate) | **POST** /api/v1/tax-rates | Create a tax rate (&#x60;admin:settings&#x60;).
*OASTaxApi* | [**deleteTaxRate**](OASTaxApi.md#deleteTaxRate) | **DELETE** /api/v1/tax-rates/{id} | Delete a tax rate by id (&#x60;admin:settings&#x60;).
*OASTaxApi* | [**listTaxRates**](OASTaxApi.md#listTaxRates) | **GET** /api/v1/tax-rates | List the calling tenant\&#39;s tax rates.
*OASTaxApi* | [**updateTaxRate**](OASTaxApi.md#updateTaxRate) | **PUT** /api/v1/tax-rates/{id} | Update a tax rate by id (&#x60;admin:settings&#x60;). Replaces all body fields.
*OASTenantSettingsApi* | [**getTenantSettings**](OASTenantSettingsApi.md#getTenantSettings) | **GET** /api/v1/settings/tenant | 
*OASTenantSettingsApi* | [**updateTenantSettings**](OASTenantSettingsApi.md#updateTenantSettings) | **PUT** /api/v1/settings/tenant | 
*OASTicketMessageApi* | [**listMessagesApi**](OASTicketMessageApi.md#listMessagesApi) | **GET** /api/v1/support/tickets/{ticket_id}/messages | 
*OASTicketMessageApi* | [**sendMessageApi**](OASTicketMessageApi.md#sendMessageApi) | **POST** /api/v1/support/tickets/{ticket_id}/messages | 
*OASTimeEntriesApi* | [**clockInTimeEntry**](OASTimeEntriesApi.md#clockInTimeEntry) | **POST** /api/v1/time-entries | Clock in for the authenticated user (resolved via their employee profile).
*OASTimeEntriesApi* | [**clockOutTimeEntry**](OASTimeEntriesApi.md#clockOutTimeEntry) | **PATCH** /api/v1/time-entries/{id} | Clock out an entry: the entry\&#39;s owner, or anyone with &#x60;time_entries:write&#x60;.
*OASTimeEntriesApi* | [**getLaborCosts**](OASTimeEntriesApi.md#getLaborCosts) | **GET** /api/v1/labor-costs | Labor-cost report: worked hours aggregated per employee / order / day,\nvalued at the employee\&#39;s hourly cost rate.
*OASTimeEntriesApi* | [**listTimeEntries**](OASTimeEntriesApi.md#listTimeEntries) | **GET** /api/v1/time-entries | List time entries with optional date-range / active / employee filters.
*OASTrainingAssignmentApi* | [**createTrainingAssignment**](OASTrainingAssignmentApi.md#createTrainingAssignment) | **POST** /api/v1/training-assignments | 
*OASTrainingAssignmentApi* | [**deleteTrainingAssignment**](OASTrainingAssignmentApi.md#deleteTrainingAssignment) | **DELETE** /api/v1/training-assignments/{id} | 
*OASTrainingAssignmentApi* | [**getTrainingAssignment**](OASTrainingAssignmentApi.md#getTrainingAssignment) | **GET** /api/v1/training-assignments/{id} | 
*OASTrainingAssignmentApi* | [**getTrainingAssignments**](OASTrainingAssignmentApi.md#getTrainingAssignments) | **GET** /api/v1/training-assignments/ | 
*OASTrainingAssignmentApi* | [**updateTrainingAssignment**](OASTrainingAssignmentApi.md#updateTrainingAssignment) | **PUT** /api/v1/training-assignments/{id} | 
*OASTrainingsApi* | [**getMyTrainings**](OASTrainingsApi.md#getMyTrainings) | **GET** /api/v1/trainings/me | 
*OASTrainingsApi* | [**getTrainingContent**](OASTrainingsApi.md#getTrainingContent) | **GET** /api/v1/trainings/content/{code} | 
*OASTrainingsApi* | [**getTrainingOverview**](OASTrainingsApi.md#getTrainingOverview) | **GET** /api/v1/trainings/overview | 
*OASTrainingsApi* | [**submitTrainingResult**](OASTrainingsApi.md#submitTrainingResult) | **POST** /api/v1/trainings/submit-result | 
*OASUserApi* | [**changePassword**](OASUserApi.md#changePassword) | **POST** /user/change-password | Change the current user\&#39;s password (requires the current password).
*OASUserApi* | [**createTeam**](OASUserApi.md#createTeam) | **POST** /user/teams | Create a new team within the current tenant
*OASUserApi* | [**generateApiKey**](OASUserApi.md#generateApiKey) | **POST** /user/api-key | Generate a new API key for the current user
*OASUserApi* | [**inviteUser**](OASUserApi.md#inviteUser) | **POST** /user/invite | Invite a user to the current tenant/organization
*OASUserApi* | [**listTeams**](OASUserApi.md#listTeams) | **GET** /user/teams | List all teams in the current tenant
*OASUserApi* | [**removeUserFromOrg**](OASUserApi.md#removeUserFromOrg) | **DELETE** /user/remove | Remove a user from the current organization
*OASUserApi* | [**updateProfile**](OASUserApi.md#updateProfile) | **PUT** /user/profile | Update the current user\&#39;s profile
*OASUserApi* | [**userProfile**](OASUserApi.md#userProfile) | **GET** /user/profile | Get the current user\&#39;s profile
*OASUserApi* | [**userTenants**](OASUserApi.md#userTenants) | **GET** /user/tenants | List all tenants (organizations) the current user belongs to
*OASUserManagementApi* | [**getUser**](OASUserManagementApi.md#getUser) | **GET** /api/v1/users/{user_id} | 
*OASUserManagementApi* | [**listUsers**](OASUserManagementApi.md#listUsers) | **GET** /api/v1/users | 
*OASUserManagementApi* | [**removeUser**](OASUserManagementApi.md#removeUser) | **DELETE** /api/v1/users/{user_id} | 
*OASUserManagementApi* | [**updateUserPermissions**](OASUserManagementApi.md#updateUserPermissions) | **PUT** /api/v1/users/{user_id}/permissions | 
*OASUserManagementApi* | [**updateUserRole**](OASUserManagementApi.md#updateUserRole) | **PUT** /api/v1/users/{user_id}/role | 
*OASUstvaApi* | [**jahresustApi**](OASUstvaApi.md#jahresustApi) | **GET** /api/v1/bookkeeping/jahresust | 
*OASUstvaApi* | [**ustvaApi**](OASUstvaApi.md#ustvaApi) | **GET** /api/v1/bookkeeping/ustva | 
*OASVoucherApi* | [**createVoucher**](OASVoucherApi.md#createVoucher) | **POST** /api/v1/vouchers | 
*OASVoucherApi* | [**deleteVoucher**](OASVoucherApi.md#deleteVoucher) | **DELETE** /api/v1/vouchers/{voucher_id} | 
*OASVoucherApi* | [**getVoucher**](OASVoucherApi.md#getVoucher) | **GET** /api/v1/vouchers/{voucher_id} | 
*OASVoucherApi* | [**listVouchers**](OASVoucherApi.md#listVouchers) | **GET** /api/v1/vouchers/ | 
*OASVoucherApi* | [**updateVoucher**](OASVoucherApi.md#updateVoucher) | **PUT** /api/v1/vouchers/{voucher_id} | 
*OASVoucherApi* | [**voucherRestore**](OASVoucherApi.md#voucherRestore) | **POST** /api/v1/vouchers/{voucher_id}/restore | 
*OASWarehouseApi* | [**createWarehouse**](OASWarehouseApi.md#createWarehouse) | **POST** /api/v1/warehouses | 
*OASWarehouseApi* | [**deleteWarehouse**](OASWarehouseApi.md#deleteWarehouse) | **DELETE** /api/v1/warehouses/{warehouse_id} | 
*OASWarehouseApi* | [**getWarehouse**](OASWarehouseApi.md#getWarehouse) | **GET** /api/v1/warehouses/{warehouse_id} | 
*OASWarehouseApi* | [**listWarehouses**](OASWarehouseApi.md#listWarehouses) | **GET** /api/v1/warehouses/ | 
*OASWarehouseApi* | [**updateWarehouse**](OASWarehouseApi.md#updateWarehouse) | **PUT** /api/v1/warehouses/{warehouse_id} | 
*OASWarehouseStockApi* | [**createWarehouseStock**](OASWarehouseStockApi.md#createWarehouseStock) | **POST** /api/v1/warehouses/{warehouse_id}/stock | 
*OASWarehouseStockApi* | [**deleteWarehouseStock**](OASWarehouseStockApi.md#deleteWarehouseStock) | **DELETE** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
*OASWarehouseStockApi* | [**listWarehouseStock**](OASWarehouseStockApi.md#listWarehouseStock) | **GET** /api/v1/warehouses/{warehouse_id}/stock | 
*OASWarehouseStockApi* | [**updateWarehouseStock**](OASWarehouseStockApi.md#updateWarehouseStock) | **PUT** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
*OASWebhooksApi* | [**createSubscription**](OASWebhooksApi.md#createSubscription) | **POST** /api/v1/webhook-subscriptions | Create a webhook subscription (outbound hook).
*OASWebhooksApi* | [**deleteSubscription**](OASWebhooksApi.md#deleteSubscription) | **DELETE** /api/v1/webhook-subscriptions/{subscription_id} | Delete a webhook subscription.
*OASWebhooksApi* | [**emitApi**](OASWebhooksApi.md#emitApi) | **POST** /api/v1/webhooks/emit | Manually fire an event against matching hooks (for testing/flows).
*OASWebhooksApi* | [**listEvent**](OASWebhooksApi.md#listEvent) | **GET** /api/v1/webhook-events | List webhook events (inbound + outbound log).
*OASWebhooksApi* | [**listSubscriptions**](OASWebhooksApi.md#listSubscriptions) | **GET** /api/v1/webhook-subscriptions | List webhook subscriptions for the tenant.
*OASWebhooksApi* | [**updateSubscription**](OASWebhooksApi.md#updateSubscription) | **PUT** /api/v1/webhook-subscriptions/{subscription_id} | Update a webhook subscription.
*OASWorkflowsApi* | [**listWorkflowsApi**](OASWorkflowsApi.md#listWorkflowsApi) | **GET** /api/v1/workflows | 
*OASWorkflowsApi* | [**setWorkflowEnabledApi**](OASWorkflowsApi.md#setWorkflowEnabledApi) | **PUT** /api/v1/workflows/{workflow_id}/enabled | 
*OASZugferdApi* | [**generateZugferdApi**](OASZugferdApi.md#generateZugferdApi) | **GET** /api/v1/invoices/{id}/zugferd | 


## Documentation for Models

 - [OASAbsence](OASAbsence.md)
 - [OASAbsenceCreate](OASAbsenceCreate.md)
 - [OASAbsenceStatus](OASAbsenceStatus.md)
 - [OASAbsenceType](OASAbsenceType.md)
 - [OASAbsenceUpdate](OASAbsenceUpdate.md)
 - [OASAcceptInviteRequest](OASAcceptInviteRequest.md)
 - [OASAccountOverview](OASAccountOverview.md)
 - [OASActivity](OASActivity.md)
 - [OASActivityCreate](OASActivityCreate.md)
 - [OASActivityStatus](OASActivityStatus.md)
 - [OASActivityStatusUpdate](OASActivityStatusUpdate.md)
 - [OASActivityType](OASActivityType.md)
 - [OASActivityUpdate](OASActivityUpdate.md)
 - [OASAddress](OASAddress.md)
 - [OASAiConfigDto](OASAiConfigDto.md)
 - [OASAiSuggestion](OASAiSuggestion.md)
 - [OASAiSuggestionRequest](OASAiSuggestionRequest.md)
 - [OASAiWorkerConfig](OASAiWorkerConfig.md)
 - [OASAllocatePaymentRequest](OASAllocatePaymentRequest.md)
 - [OASAnlageGErgebnis](OASAnlageGErgebnis.md)
 - [OASAnlageGKfzHinweis](OASAnlageGKfzHinweis.md)
 - [OASAnlageSErgebnis](OASAnlageSErgebnis.md)
 - [OASAnlageSKfzHinweis](OASAnlageSKfzHinweis.md)
 - [OASApiResponseGdprExport](OASApiResponseGdprExport.md)
 - [OASApiResponseGdprExportData](OASApiResponseGdprExportData.md)
 - [OASApiResponseString](OASApiResponseString.md)
 - [OASApiResponseSubscriptionOverview](OASApiResponseSubscriptionOverview.md)
 - [OASApiResponseSubscriptionOverviewDa](OASApiResponseSubscriptionOverviewDa.md)
 - [OASApiResponseTeam](OASApiResponseTeam.md)
 - [OASApiResponseTeamData](OASApiResponseTeamData.md)
 - [OASApiResponseUserProfile](OASApiResponseUserProfile.md)
 - [OASApiResponseUserProfileData](OASApiResponseUserProfileData.md)
 - [OASApiResponseVecPlan](OASApiResponseVecPlan.md)
 - [OASApiResponseVecPlanDataInner](OASApiResponseVecPlanDataInner.md)
 - [OASApiResponseVecTeam](OASApiResponseVecTeam.md)
 - [OASApiResponseVecUserTenantInfo](OASApiResponseVecUserTenantInfo.md)
 - [OASApiResponseVecUserTenantInfoDataI](OASApiResponseVecUserTenantInfoDataI.md)
 - [OASApplicationFilter](OASApplicationFilter.md)
 - [OASApplicationStatus](OASApplicationStatus.md)
 - [OASApplicationStatusDto](OASApplicationStatusDto.md)
 - [OASAppointmentStatusUpdate](OASAppointmentStatusUpdate.md)
 - [OASAssignmentStatus](OASAssignmentStatus.md)
 - [OASAttachment](OASAttachment.md)
 - [OASAttachmentCreate](OASAttachmentCreate.md)
 - [OASAttachmentVersion](OASAttachmentVersion.md)
 - [OASAuthResponse](OASAuthResponse.md)
 - [OASAutomation](OASAutomation.md)
 - [OASAutomationDto](OASAutomationDto.md)
 - [OASBWAExpenses](OASBWAExpenses.md)
 - [OASBWAReport](OASBWAReport.md)
 - [OASBWARevenue](OASBWARevenue.md)
 - [OASBWASummary](OASBWASummary.md)
 - [OASBalanceItem](OASBalanceItem.md)
 - [OASBalanceSheet](OASBalanceSheet.md)
 - [OASBankLookup](OASBankLookup.md)
 - [OASBetriebsstaette](OASBetriebsstaette.md)
 - [OASBetriebsstaettenDetail](OASBetriebsstaettenDetail.md)
 - [OASBilanzItem](OASBilanzItem.md)
 - [OASBilanzReport](OASBilanzReport.md)
 - [OASBom](OASBom.md)
 - [OASBomCreate](OASBomCreate.md)
 - [OASBomStatus](OASBomStatus.md)
 - [OASBomUpdate](OASBomUpdate.md)
 - [OASBoxFit](OASBoxFit.md)
 - [OASBudget](OASBudget.md)
 - [OASBudgetErgebnis](OASBudgetErgebnis.md)
 - [OASBudgetGoalRequest](OASBudgetGoalRequest.md)
 - [OASBudgetKategorie](OASBudgetKategorie.md)
 - [OASCartItemInput](OASCartItemInput.md)
 - [OASCashflowReport](OASCashflowReport.md)
 - [OASCategoryTotal](OASCategoryTotal.md)
 - [OASChangePasswordRequest](OASChangePasswordRequest.md)
 - [OASChangelogEntry](OASChangelogEntry.md)
 - [OASCheckStatus](OASCheckStatus.md)
 - [OASCommunicationChannel](OASCommunicationChannel.md)
 - [OASCommunicationDirection](OASCommunicationDirection.md)
 - [OASCompanyType](OASCompanyType.md)
 - [OASComplianceEntry](OASComplianceEntry.md)
 - [OASComplianceTraining](OASComplianceTraining.md)
 - [OASComplianceTrainingCreate](OASComplianceTrainingCreate.md)
 - [OASComplianceTrainingUpdate](OASComplianceTrainingUpdate.md)
 - [OASConfigFieldInfo](OASConfigFieldInfo.md)
 - [OASConfigFieldKind](OASConfigFieldKind.md)
 - [OASConfigFieldKindOneOf](OASConfigFieldKindOneOf.md)
 - [OASConfigFieldKindOneOf1](OASConfigFieldKindOneOf1.md)
 - [OASConfigFieldKindOneOf2](OASConfigFieldKindOneOf2.md)
 - [OASConfigFieldKindOneOf3](OASConfigFieldKindOneOf3.md)
 - [OASConfigFieldKindOneOf4](OASConfigFieldKindOneOf4.md)
 - [OASConnectorType](OASConnectorType.md)
 - [OASContact](OASContact.md)
 - [OASContactCreate](OASContactCreate.md)
 - [OASContactHistoryResponse](OASContactHistoryResponse.md)
 - [OASContactInfo](OASContactInfo.md)
 - [OASContactTimelineResponse](OASContactTimelineResponse.md)
 - [OASContactType](OASContactType.md)
 - [OASContactUpdate](OASContactUpdate.md)
 - [OASConvertResponse](OASConvertResponse.md)
 - [OASCostingLine](OASCostingLine.md)
 - [OASCountryCode](OASCountryCode.md)
 - [OASCoupon](OASCoupon.md)
 - [OASCouponCreate](OASCouponCreate.md)
 - [OASCouponUpdate](OASCouponUpdate.md)
 - [OASCouponValidation](OASCouponValidation.md)
 - [OASCreateChannelDto](OASCreateChannelDto.md)
 - [OASCreateConnectionRequest](OASCreateConnectionRequest.md)
 - [OASCreateEmissionEntry](OASCreateEmissionEntry.md)
 - [OASCreateEmissionTarget](OASCreateEmissionTarget.md)
 - [OASCreateShipmentRequest](OASCreateShipmentRequest.md)
 - [OASCreateSubscriptionRequest](OASCreateSubscriptionRequest.md)
 - [OASCreateTicketRequest](OASCreateTicketRequest.md)
 - [OASCurrencyCode](OASCurrencyCode.md)
 - [OASCurrentInventoryValue](OASCurrentInventoryValue.md)
 - [OASCustomer](OASCustomer.md)
 - [OASCustomerCommunication](OASCustomerCommunication.md)
 - [OASCustomerCommunicationCreate](OASCustomerCommunicationCreate.md)
 - [OASCustomerCommunicationUpdate](OASCustomerCommunicationUpdate.md)
 - [OASCustomerCreate](OASCustomerCreate.md)
 - [OASCustomerGroup](OASCustomerGroup.md)
 - [OASCustomerGroupCreate](OASCustomerGroupCreate.md)
 - [OASCustomerGroupUpdate](OASCustomerGroupUpdate.md)
 - [OASCustomerInfo](OASCustomerInfo.md)
 - [OASCustomerUpdate](OASCustomerUpdate.md)
 - [OASDataQuality](OASDataQuality.md)
 - [OASDatevBookingPreview](OASDatevBookingPreview.md)
 - [OASDatevExportResponse](OASDatevExportResponse.md)
 - [OASDatevImportResponse](OASDatevImportResponse.md)
 - [OASDatevImportRow](OASDatevImportRow.md)
 - [OASDeclaration](OASDeclaration.md)
 - [OASDeclarationCreate](OASDeclarationCreate.md)
 - [OASDeclarationType](OASDeclarationType.md)
 - [OASDeclarationUpdate](OASDeclarationUpdate.md)
 - [OASDeliverableResponse](OASDeliverableResponse.md)
 - [OASDeliveryAppointment](OASDeliveryAppointment.md)
 - [OASDeliveryAppointmentCreate](OASDeliveryAppointmentCreate.md)
 - [OASDeliveryAppointmentStatus](OASDeliveryAppointmentStatus.md)
 - [OASDeliveryDate](OASDeliveryDate.md)
 - [OASDeliveryDateCreate](OASDeliveryDateCreate.md)
 - [OASDeliveryDateStatus](OASDeliveryDateStatus.md)
 - [OASDeliveryDateStatusUpdate](OASDeliveryDateStatusUpdate.md)
 - [OASDeliveryDateUpdate](OASDeliveryDateUpdate.md)
 - [OASDeliveryNote](OASDeliveryNote.md)
 - [OASDeliveryNoteCreate](OASDeliveryNoteCreate.md)
 - [OASDhlCredentials](OASDhlCredentials.md)
 - [OASDiscountType](OASDiscountType.md)
 - [OASDocumentType](OASDocumentType.md)
 - [OASDownPaymentInvoice](OASDownPaymentInvoice.md)
 - [OASDpaAcceptRequest](OASDpaAcceptRequest.md)
 - [OASDpaStatus](OASDpaStatus.md)
 - [OASDunningResult](OASDunningResult.md)
 - [OASEBilanzReport](OASEBilanzReport.md)
 - [OASEksErgebnis](OASEksErgebnis.md)
 - [OASEksMonatsWert](OASEksMonatsWert.md)
 - [OASElsterStatus](OASElsterStatus.md)
 - [OASEmailTemplate](OASEmailTemplate.md)
 - [OASEmailTemplateCreate](OASEmailTemplateCreate.md)
 - [OASEmailTemplateStatus](OASEmailTemplateStatus.md)
 - [OASEmailTemplateUpdate](OASEmailTemplateUpdate.md)
 - [OASEmissionEntry](OASEmissionEntry.md)
 - [OASEmissionFactorResponse](OASEmissionFactorResponse.md)
 - [OASEmissionMethod](OASEmissionMethod.md)
 - [OASEmissionTarget](OASEmissionTarget.md)
 - [OASEmissionTargetScope](OASEmissionTargetScope.md)
 - [OASEmissionsExportResponse](OASEmissionsExportResponse.md)
 - [OASEmissionsReport](OASEmissionsReport.md)
 - [OASEmitEventRequest](OASEmitEventRequest.md)
 - [OASEmployee](OASEmployee.md)
 - [OASEmployeeCreate](OASEmployeeCreate.md)
 - [OASEmployeeStatus](OASEmployeeStatus.md)
 - [OASEmployeeUpdate](OASEmployeeUpdate.md)
 - [OASEmploymentType](OASEmploymentType.md)
 - [OASEuerDetailErgebnis](OASEuerDetailErgebnis.md)
 - [OASEuerErgebnis](OASEuerErgebnis.md)
 - [OASEuerKatSumme](OASEuerKatSumme.md)
 - [OASEuerZeile](OASEuerZeile.md)
 - [OASEuerZeileDetail](OASEuerZeileDetail.md)
 - [OASEventSubscription](OASEventSubscription.md)
 - [OASExecutionStatus](OASExecutionStatus.md)
 - [OASExpenseItem](OASExpenseItem.md)
 - [OASExtraPayment](OASExtraPayment.md)
 - [OASFeatureSettings](OASFeatureSettings.md)
 - [OASForgotPasswordRequest](OASForgotPasswordRequest.md)
 - [OASFristEintrag](OASFristEintrag.md)
 - [OASFristenErgebnis](OASFristenErgebnis.md)
 - [OASGatewayOAuthAuthorizeRequest](OASGatewayOAuthAuthorizeRequest.md)
 - [OASGatewayOAuthAuthorizeResponse](OASGatewayOAuthAuthorizeResponse.md)
 - [OASGatewayOAuthCallbackRequest](OASGatewayOAuthCallbackRequest.md)
 - [OASGatewayType](OASGatewayType.md)
 - [OASGdprActivity](OASGdprActivity.md)
 - [OASGdprApiKey](OASGdprApiKey.md)
 - [OASGdprBillingInfo](OASGdprBillingInfo.md)
 - [OASGdprExport](OASGdprExport.md)
 - [OASGdprNotification](OASGdprNotification.md)
 - [OASGdprRefreshToken](OASGdprRefreshToken.md)
 - [OASGdprTenant](OASGdprTenant.md)
 - [OASGdprUsageEvent](OASGdprUsageEvent.md)
 - [OASGdprUser](OASGdprUser.md)
 - [OASGender](OASGender.md)
 - [OASGenerateCountRequest](OASGenerateCountRequest.md)
 - [OASGenerateVariantsRequest](OASGenerateVariantsRequest.md)
 - [OASGewerbesteuerErgebnis](OASGewerbesteuerErgebnis.md)
 - [OASGewinnverwendungsExportResponse](OASGewinnverwendungsExportResponse.md)
 - [OASGewinnverwendungsReport](OASGewinnverwendungsReport.md)
 - [OASGewinnverwendungsZeile](OASGewinnverwendungsZeile.md)
 - [OASGezReport](OASGezReport.md)
 - [OASGhgScope](OASGhgScope.md)
 - [OASGoBDExportResponse](OASGoBDExportResponse.md)
 - [OASGoodsReceipt](OASGoodsReceipt.md)
 - [OASGroupFigure](OASGroupFigure.md)
 - [OASGroupFigureCreate](OASGroupFigureCreate.md)
 - [OASGroupFigureUpdate](OASGroupFigureUpdate.md)
 - [OASGuVItem](OASGuVItem.md)
 - [OASGuVReport](OASGuVReport.md)
 - [OASHebesatzLookup](OASHebesatzLookup.md)
 - [OASHrTrainingOverview](OASHrTrainingOverview.md)
 - [OASImportJobStatus](OASImportJobStatus.md)
 - [OASImportStartRequest](OASImportStartRequest.md)
 - [OASImportStartResponse](OASImportStartResponse.md)
 - [OASImportTestRequest](OASImportTestRequest.md)
 - [OASImportTestResponse](OASImportTestResponse.md)
 - [OASIncomeStatement](OASIncomeStatement.md)
 - [OASInstituteCheckItem](OASInstituteCheckItem.md)
 - [OASInstituteDeadlines](OASInstituteDeadlines.md)
 - [OASInstituteProfile](OASInstituteProfile.md)
 - [OASInstituteProfileUpdate](OASInstituteProfileUpdate.md)
 - [OASInstituteStatus](OASInstituteStatus.md)
 - [OASInstituteType](OASInstituteType.md)
 - [OASInstrumentType](OASInstrumentType.md)
 - [OASInventoryCount](OASInventoryCount.md)
 - [OASInventoryCountCreate](OASInventoryCountCreate.md)
 - [OASInventoryCountStatus](OASInventoryCountStatus.md)
 - [OASInventoryCountStatusUpdate](OASInventoryCountStatusUpdate.md)
 - [OASInventoryCountUpdate](OASInventoryCountUpdate.md)
 - [OASInventoryValuePoint](OASInventoryValuePoint.md)
 - [OASInviteRequest](OASInviteRequest.md)
 - [OASInvoice](OASInvoice.md)
 - [OASInvoiceCreate](OASInvoiceCreate.md)
 - [OASInvoiceLineItem](OASInvoiceLineItem.md)
 - [OASInvoiceMatchRequest](OASInvoiceMatchRequest.md)
 - [OASInvoicePdfUrlResponse](OASInvoicePdfUrlResponse.md)
 - [OASInvoiceStatus](OASInvoiceStatus.md)
 - [OASInvoiceType](OASInvoiceType.md)
 - [OASJahresUstErgebnis](OASJahresUstErgebnis.md)
 - [OASJob](OASJob.md)
 - [OASJobApplication](OASJobApplication.md)
 - [OASJobPosting](OASJobPosting.md)
 - [OASJobPostingCreate](OASJobPostingCreate.md)
 - [OASJobPostingFilter](OASJobPostingFilter.md)
 - [OASJobPostingStatus](OASJobPostingStatus.md)
 - [OASJobPostingUpdate](OASJobPostingUpdate.md)
 - [OASJobStatus](OASJobStatus.md)
 - [OASJobTitleGap](OASJobTitleGap.md)
 - [OASKontoItem](OASKontoItem.md)
 - [OASKontoReport](OASKontoReport.md)
 - [OASKonzernBeteiligung](OASKonzernBeteiligung.md)
 - [OASKonzernExportResponse](OASKonzernExportResponse.md)
 - [OASKonzernStatus](OASKonzernStatus.md)
 - [OASKonzernThresholds](OASKonzernThresholds.md)
 - [OASKostenEintrag](OASKostenEintrag.md)
 - [OASKostenVorschau](OASKostenVorschau.md)
 - [OASKstErgebnis](OASKstErgebnis.md)
 - [OASKycRecord](OASKycRecord.md)
 - [OASKycRecordCreate](OASKycRecordCreate.md)
 - [OASKycRecordUpdate](OASKycRecordUpdate.md)
 - [OASLaborCostRow](OASLaborCostRow.md)
 - [OASLanguageCode](OASLanguageCode.md)
 - [OASLead](OASLead.md)
 - [OASLeadStatus](OASLeadStatus.md)
 - [OASLeadUpdate](OASLeadUpdate.md)
 - [OASLegalDocType](OASLegalDocType.md)
 - [OASLegalDocument](OASLegalDocument.md)
 - [OASLegalDocumentReset](OASLegalDocumentReset.md)
 - [OASLegalDocumentUpsert](OASLegalDocumentUpsert.md)
 - [OASLiquidityPosition](OASLiquidityPosition.md)
 - [OASLoginRequest](OASLoginRequest.md)
 - [OASMagicLinkRequest](OASMagicLinkRequest.md)
 - [OASMagicLinkVerifyRequest](OASMagicLinkVerifyRequest.md)
 - [OASMarketplaceConnection](OASMarketplaceConnection.md)
 - [OASMarketplaceSyncLog](OASMarketplaceSyncLog.md)
 - [OASMarketplaceWebhookEvent](OASMarketplaceWebhookEvent.md)
 - [OASMessageDirection](OASMessageDirection.md)
 - [OASMessageType](OASMessageType.md)
 - [OASMeteredUsage](OASMeteredUsage.md)
 - [OASMethodSuitability](OASMethodSuitability.md)
 - [OASMirrorTriggerResponse](OASMirrorTriggerResponse.md)
 - [OASModel](OASModel.md)
 - [OASMovementType](OASMovementType.md)
 - [OASMyTrainingItem](OASMyTrainingItem.md)
 - [OASNewVersionRequest](OASNewVersionRequest.md)
 - [OASNotificationDto](OASNotificationDto.md)
 - [OASOAuthAuthorizeRequest](OASOAuthAuthorizeRequest.md)
 - [OASOAuthAuthorizeResponse](OASOAuthAuthorizeResponse.md)
 - [OASOAuthCallbackRequest](OASOAuthCallbackRequest.md)
 - [OASOcrTextRequest](OASOcrTextRequest.md)
 - [OASOffenlegungItem](OASOffenlegungItem.md)
 - [OASOffenlegungReport](OASOffenlegungReport.md)
 - [OASOpenItem](OASOpenItem.md)
 - [OASOrder](OASOrder.md)
 - [OASOrderConfirmation](OASOrderConfirmation.md)
 - [OASOrderConfirmationCreate](OASOrderConfirmationCreate.md)
 - [OASOrderCreate](OASOrderCreate.md)
 - [OASOrderStateUpdate](OASOrderStateUpdate.md)
 - [OASOrderStatus](OASOrderStatus.md)
 - [OASOrderTagsRequest](OASOrderTagsRequest.md)
 - [OASOrderUpdate](OASOrderUpdate.md)
 - [OASOssDependency](OASOssDependency.md)
 - [OASOssReport](OASOssReport.md)
 - [OASPackage](OASPackage.md)
 - [OASPackingCompleteRequest](OASPackingCompleteRequest.md)
 - [OASPackingCompleteResponse](OASPackingCompleteResponse.md)
 - [OASPackingQueue](OASPackingQueue.md)
 - [OASPackingQueueItem](OASPackingQueueItem.md)
 - [OASPackingVideoResponse](OASPackingVideoResponse.md)
 - [OASPartialFeatureSettings](OASPartialFeatureSettings.md)
 - [OASParticipation](OASParticipation.md)
 - [OASParticipationCreate](OASParticipationCreate.md)
 - [OASParticipationUpdate](OASParticipationUpdate.md)
 - [OASPayGapExportResponse](OASPayGapExportResponse.md)
 - [OASPayGapInfoResponse](OASPayGapInfoResponse.md)
 - [OASPayGapReport](OASPayGapReport.md)
 - [OASPayment](OASPayment.md)
 - [OASPaymentCondition](OASPaymentCondition.md)
 - [OASPaymentCreate](OASPaymentCreate.md)
 - [OASPaymentGateway](OASPaymentGateway.md)
 - [OASPaymentGatewayCreate](OASPaymentGatewayCreate.md)
 - [OASPaymentGatewayUpdate](OASPaymentGatewayUpdate.md)
 - [OASPaymentMethod](OASPaymentMethod.md)
 - [OASPaymentStatus](OASPaymentStatus.md)
 - [OASPayrollAutopayPayload](OASPayrollAutopayPayload.md)
 - [OASPayrollCreatePayload](OASPayrollCreatePayload.md)
 - [OASPayrollEntryApi](OASPayrollEntryApi.md)
 - [OASPayrollMonth](OASPayrollMonth.md)
 - [OASPayrollPayPayload](OASPayrollPayPayload.md)
 - [OASPayrollRunApi](OASPayrollRunApi.md)
 - [OASPayrollRunStatus](OASPayrollRunStatus.md)
 - [OASPayrollSummary](OASPayrollSummary.md)
 - [OASPayrollSummaryItem](OASPayrollSummaryItem.md)
 - [OASPeppolResponse](OASPeppolResponse.md)
 - [OASPlan](OASPlan.md)
 - [OASPlanFeatures](OASPlanFeatures.md)
 - [OASPlanLimits](OASPlanLimits.md)
 - [OASPlatformInfo](OASPlatformInfo.md)
 - [OASPlausibilityCheck](OASPlausibilityCheck.md)
 - [OASPlausibilityReport](OASPlausibilityReport.md)
 - [OASPlausibilitySummary](OASPlausibilitySummary.md)
 - [OASPluginError](OASPluginError.md)
 - [OASPluginErrorOneOf](OASPluginErrorOneOf.md)
 - [OASPluginErrorOneOf1](OASPluginErrorOneOf1.md)
 - [OASPluginErrorOneOf2](OASPluginErrorOneOf2.md)
 - [OASPluginErrorOneOf3](OASPluginErrorOneOf3.md)
 - [OASPluginErrorOneOf4](OASPluginErrorOneOf4.md)
 - [OASPluginErrorOneOf5](OASPluginErrorOneOf5.md)
 - [OASPluginErrorOneOf6](OASPluginErrorOneOf6.md)
 - [OASPluginPricing](OASPluginPricing.md)
 - [OASPluginPricingOneOf](OASPluginPricingOneOf.md)
 - [OASPluginPricingOneOf1](OASPluginPricingOneOf1.md)
 - [OASPluginPricingOneOf2](OASPluginPricingOneOf2.md)
 - [OASPnLItem](OASPnLItem.md)
 - [OASPosRegister](OASPosRegister.md)
 - [OASPosRegisterCreate](OASPosRegisterCreate.md)
 - [OASPosRegisterStatus](OASPosRegisterStatus.md)
 - [OASPosTable](OASPosTable.md)
 - [OASPosTableCreate](OASPosTableCreate.md)
 - [OASPosTableStatus](OASPosTableStatus.md)
 - [OASPostingCategory](OASPostingCategory.md)
 - [OASPostingCategoryCreate](OASPostingCategoryCreate.md)
 - [OASPostingCategoryType](OASPostingCategoryType.md)
 - [OASPostingCategoryUpdate](OASPostingCategoryUpdate.md)
 - [OASPrecedingSalesVoucherType](OASPrecedingSalesVoucherType.md)
 - [OASPriceTier](OASPriceTier.md)
 - [OASPriceTierCreate](OASPriceTierCreate.md)
 - [OASPriceTierUpdate](OASPriceTierUpdate.md)
 - [OASPrintDeliveryNoteResponse](OASPrintDeliveryNoteResponse.md)
 - [OASPrintLabelResponse](OASPrintLabelResponse.md)
 - [OASProduct](OASProduct.md)
 - [OASProductAttribute](OASProductAttribute.md)
 - [OASProductAttributeCreate](OASProductAttributeCreate.md)
 - [OASProductAttributeUpdate](OASProductAttributeUpdate.md)
 - [OASProductCategory](OASProductCategory.md)
 - [OASProductCategoryCreate](OASProductCategoryCreate.md)
 - [OASProductCategoryUpdate](OASProductCategoryUpdate.md)
 - [OASProductCreate](OASProductCreate.md)
 - [OASProductStock](OASProductStock.md)
 - [OASProductUpdate](OASProductUpdate.md)
 - [OASProductVariant](OASProductVariant.md)
 - [OASProductVariantCreate](OASProductVariantCreate.md)
 - [OASProductVariantUpdate](OASProductVariantUpdate.md)
 - [OASProductionOrder](OASProductionOrder.md)
 - [OASProductionOrderCosting](OASProductionOrderCosting.md)
 - [OASProductionOrderStatus](OASProductionOrderStatus.md)
 - [OASProductionOrderStatusUpdate](OASProductionOrderStatusUpdate.md)
 - [OASProformaInvoice](OASProformaInvoice.md)
 - [OASProformaInvoiceCreate](OASProformaInvoiceCreate.md)
 - [OASProformaInvoiceStatus](OASProformaInvoiceStatus.md)
 - [OASProformaInvoiceUpdate](OASProformaInvoiceUpdate.md)
 - [OASProposedAssignment](OASProposedAssignment.md)
 - [OASProviderInfo](OASProviderInfo.md)
 - [OASPublicDeliveryAppointmentRequest](OASPublicDeliveryAppointmentRequest.md)
 - [OASPublicDeliveryAppointmentResponse](OASPublicDeliveryAppointmentResponse.md)
 - [OASPublicDeliveryAppointmentStatusRe](OASPublicDeliveryAppointmentStatusRe.md)
 - [OASPublicPosting](OASPublicPosting.md)
 - [OASPublicReturnItem](OASPublicReturnItem.md)
 - [OASPublicReturnRequest](OASPublicReturnRequest.md)
 - [OASPublicReturnResponse](OASPublicReturnResponse.md)
 - [OASPublicReturnStatusResponse](OASPublicReturnStatusResponse.md)
 - [OASPurchaseOrder](OASPurchaseOrder.md)
 - [OASPurchaseOrderCreate](OASPurchaseOrderCreate.md)
 - [OASPurchaseOrderStatus](OASPurchaseOrderStatus.md)
 - [OASPurchaseOrderStatusUpdate](OASPurchaseOrderStatusUpdate.md)
 - [OASPurchaseOrderUpdate](OASPurchaseOrderUpdate.md)
 - [OASQRCodeResponse](OASQRCodeResponse.md)
 - [OASQuartileBand](OASQuartileBand.md)
 - [OASQuizQuestion](OASQuizQuestion.md)
 - [OASQuotaOverride](OASQuotaOverride.md)
 - [OASQuotaOverrideFeatures](OASQuotaOverrideFeatures.md)
 - [OASQuotaOverview](OASQuotaOverview.md)
 - [OASQuotation](OASQuotation.md)
 - [OASQuotationCreate](OASQuotationCreate.md)
 - [OASRateRequest](OASRateRequest.md)
 - [OASRateResponse](OASRateResponse.md)
 - [OASRecurringTemplate](OASRecurringTemplate.md)
 - [OASRecurringTemplateCreate](OASRecurringTemplateCreate.md)
 - [OASRecurringTemplateType](OASRecurringTemplateType.md)
 - [OASRecurringTemplateUpdate](OASRecurringTemplateUpdate.md)
 - [OASReferenceType](OASReferenceType.md)
 - [OASRegisterRequest](OASRegisterRequest.md)
 - [OASReminderLevel](OASReminderLevel.md)
 - [OASRemoveUserRequest](OASRemoveUserRequest.md)
 - [OASReorderProposalLine](OASReorderProposalLine.md)
 - [OASReorderProposalResponse](OASReorderProposalResponse.md)
 - [OASReplenishmentResponse](OASReplenishmentResponse.md)
 - [OASReplenishmentSuggestionLine](OASReplenishmentSuggestionLine.md)
 - [OASResetPasswordRequest](OASResetPasswordRequest.md)
 - [OASResolvedPriceResponse](OASResolvedPriceResponse.md)
 - [OASReturnLogisticsQueueItem](OASReturnLogisticsQueueItem.md)
 - [OASReturnLogisticsSummary](OASReturnLogisticsSummary.md)
 - [OASReturnOrder](OASReturnOrder.md)
 - [OASReturnOrderStatus](OASReturnOrderStatus.md)
 - [OASReturnOrderStatusUpdate](OASReturnOrderStatusUpdate.md)
 - [OASReturnWarehouseSummary](OASReturnWarehouseSummary.md)
 - [OASRevenueItem](OASRevenueItem.md)
 - [OASRfq](OASRfq.md)
 - [OASRfqCreate](OASRfqCreate.md)
 - [OASRfqStatus](OASRfqStatus.md)
 - [OASRfqStatusUpdate](OASRfqStatusUpdate.md)
 - [OASRfqUpdate](OASRfqUpdate.md)
 - [OASSalesVolumeItem](OASSalesVolumeItem.md)
 - [OASSalesVolumeReport](OASSalesVolumeReport.md)
 - [OASScopeTotal](OASScopeTotal.md)
 - [OASSection](OASSection.md)
 - [OASSendMessageDto](OASSendMessageDto.md)
 - [OASSepaDirectDebitResponse](OASSepaDirectDebitResponse.md)
 - [OASSepaSequenceType](OASSepaSequenceType.md)
 - [OASServiceAssignment](OASServiceAssignment.md)
 - [OASServiceAssignmentCreate](OASServiceAssignmentCreate.md)
 - [OASServiceAssignmentStatus](OASServiceAssignmentStatus.md)
 - [OASServiceAssignmentUpdate](OASServiceAssignmentUpdate.md)
 - [OASServiceJob](OASServiceJob.md)
 - [OASServiceJobCreate](OASServiceJobCreate.md)
 - [OASServiceJobStatus](OASServiceJobStatus.md)
 - [OASServiceJobUpdate](OASServiceJobUpdate.md)
 - [OASSeverity](OASSeverity.md)
 - [OASShareholder](OASShareholder.md)
 - [OASShareholderCreate](OASShareholderCreate.md)
 - [OASShareholderUpdate](OASShareholderUpdate.md)
 - [OASShipment](OASShipment.md)
 - [OASShipmentStatusUpdate](OASShipmentStatusUpdate.md)
 - [OASShippingCredentials](OASShippingCredentials.md)
 - [OASShippingRate](OASShippingRate.md)
 - [OASShippingRule](OASShippingRule.md)
 - [OASShippingRuleCreate](OASShippingRuleCreate.md)
 - [OASShippingRuleUpdate](OASShippingRuleUpdate.md)
 - [OASShippingThreshold](OASShippingThreshold.md)
 - [OASShippingThresholdCreate](OASShippingThresholdCreate.md)
 - [OASShippingThresholdUpdate](OASShippingThresholdUpdate.md)
 - [OASSilentPartner](OASSilentPartner.md)
 - [OASSilentPartnerCreate](OASSilentPartnerCreate.md)
 - [OASSilentPartnerUpdate](OASSilentPartnerUpdate.md)
 - [OASSmtpConfig](OASSmtpConfig.md)
 - [OASSmtpEncryption](OASSmtpEncryption.md)
 - [OASStilleExportResponse](OASStilleExportResponse.md)
 - [OASStillePartnerZeile](OASStillePartnerZeile.md)
 - [OASStilleReport](OASStilleReport.md)
 - [OASStockAdjustment](OASStockAdjustment.md)
 - [OASStockMovement](OASStockMovement.md)
 - [OASStockTransfer](OASStockTransfer.md)
 - [OASStockTransferStatus](OASStockTransferStatus.md)
 - [OASStockTransferStatusUpdate](OASStockTransferStatusUpdate.md)
 - [OASStockUpdateRequest](OASStockUpdateRequest.md)
 - [OASSubmitResultDto](OASSubmitResultDto.md)
 - [OASSubmitResultResponse](OASSubmitResultResponse.md)
 - [OASSubscriptionOverview](OASSubscriptionOverview.md)
 - [OASSuitabilityRequest](OASSuitabilityRequest.md)
 - [OASSuitabilityResult](OASSuitabilityResult.md)
 - [OASSupplierCondition](OASSupplierCondition.md)
 - [OASSupplierConditionCreate](OASSupplierConditionCreate.md)
 - [OASSupplierConditionUpdate](OASSupplierConditionUpdate.md)
 - [OASSupplierInvoice](OASSupplierInvoice.md)
 - [OASSupplierInvoiceCreate](OASSupplierInvoiceCreate.md)
 - [OASSupplierInvoiceStatus](OASSupplierInvoiceStatus.md)
 - [OASSupplierInvoiceStatusUpdate](OASSupplierInvoiceStatusUpdate.md)
 - [OASSupplierInvoiceUpdate](OASSupplierInvoiceUpdate.md)
 - [OASSupportChannel](OASSupportChannel.md)
 - [OASSupportChannelType](OASSupportChannelType.md)
 - [OASSupportTicket](OASSupportTicket.md)
 - [OASSupportTicketStatus](OASSupportTicketStatus.md)
 - [OASSupportTicketUpdate](OASSupportTicketUpdate.md)
 - [OASSyncLog](OASSyncLog.md)
 - [OASSyncLogStatus](OASSyncLogStatus.md)
 - [OASSyncStatus](OASSyncStatus.md)
 - [OASSyncSummary](OASSyncSummary.md)
 - [OASSyncType](OASSyncType.md)
 - [OASTargetProgress](OASTargetProgress.md)
 - [OASTaxRateCreate](OASTaxRateCreate.md)
 - [OASTeam](OASTeam.md)
 - [OASTeamCreate](OASTeamCreate.md)
 - [OASTenantSettings](OASTenantSettings.md)
 - [OASTenantUser](OASTenantUser.md)
 - [OASTicketMessage](OASTicketMessage.md)
 - [OASTicketPriority](OASTicketPriority.md)
 - [OASTimeEntryClockIn](OASTimeEntryClockIn.md)
 - [OASTimeEntryClockOut](OASTimeEntryClockOut.md)
 - [OASTimeEntryDto](OASTimeEntryDto.md)
 - [OASTimelineEvent](OASTimelineEvent.md)
 - [OASTotpEnableRequest](OASTotpEnableRequest.md)
 - [OASTotpSetupResponse](OASTotpSetupResponse.md)
 - [OASTrackOrderRequest](OASTrackOrderRequest.md)
 - [OASTrackOrderResponse](OASTrackOrderResponse.md)
 - [OASTrackedShipment](OASTrackedShipment.md)
 - [OASTrackingEvent](OASTrackingEvent.md)
 - [OASTrackingInfo](OASTrackingInfo.md)
 - [OASTrainingAssignment](OASTrainingAssignment.md)
 - [OASTrainingAssignmentCreate](OASTrainingAssignmentCreate.md)
 - [OASTrainingAssignmentUpdate](OASTrainingAssignmentUpdate.md)
 - [OASTrainingContent](OASTrainingContent.md)
 - [OASTrainingSource](OASTrainingSource.md)
 - [OASUmsatzsteuerReport](OASUmsatzsteuerReport.md)
 - [OASUpdateAutomation](OASUpdateAutomation.md)
 - [OASUpdateChannelDto](OASUpdateChannelDto.md)
 - [OASUpdateConnectionRequest](OASUpdateConnectionRequest.md)
 - [OASUpdatePermissionsPayload](OASUpdatePermissionsPayload.md)
 - [OASUpdateProfileRequest](OASUpdateProfileRequest.md)
 - [OASUpdateRolePayload](OASUpdateRolePayload.md)
 - [OASUpdateSubscriptionRequest](OASUpdateSubscriptionRequest.md)
 - [OASUpdateSyncDirectionRequest](OASUpdateSyncDirectionRequest.md)
 - [OASUpdateTenantSettings](OASUpdateTenantSettings.md)
 - [OASUpsCredentials](OASUpsCredentials.md)
 - [OASUsageSnapshot](OASUsageSnapshot.md)
 - [OASUserProfile](OASUserProfile.md)
 - [OASUserTenantInfo](OASUserTenantInfo.md)
 - [OASUstvaErgebnis](OASUstvaErgebnis.md)
 - [OASVatDetail](OASVatDetail.md)
 - [OASVatItem](OASVatItem.md)
 - [OASVatSummary](OASVatSummary.md)
 - [OASVerfahrensdokumentation](OASVerfahrensdokumentation.md)
 - [OASVerifyEmailRequest](OASVerifyEmailRequest.md)
 - [OASVoucher](OASVoucher.md)
 - [OASVoucherCreate](OASVoucherCreate.md)
 - [OASVoucherStatus](OASVoucherStatus.md)
 - [OASVoucherType](OASVoucherType.md)
 - [OASWarehouse](OASWarehouse.md)
 - [OASWarehouseCreate](OASWarehouseCreate.md)
 - [OASWarehouseStock](OASWarehouseStock.md)
 - [OASWarehouseUpdate](OASWarehouseUpdate.md)
 - [OASWebhookDirection](OASWebhookDirection.md)
 - [OASWebhookEvent](OASWebhookEvent.md)
 - [OASWebhookEventStatus](OASWebhookEventStatus.md)
 - [OASWebhookSubscription](OASWebhookSubscription.md)
 - [OASWorkflow](OASWorkflow.md)
 - [OASWorkflowAction](OASWorkflowAction.md)
 - [OASWorkflowEnabledUpdate](OASWorkflowEnabledUpdate.md)
 - [OASXRechnungResponse](OASXRechnungResponse.md)
 - [OASYearTotal](OASYearTotal.md)
 - [OASYearlyPayrollSummary](OASYearlyPayrollSummary.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### bearer_token

- **Type**: HTTP Bearer Token authentication (JWT)


## Author

support@simplebilly.com

---

## SimpleBilly API SDK

This client was generated automatically from the [SimpleBilly OpenAPI specification](https://simplebilly.com/api/docs).

- **Homepage:** https://simplebilly.com
- **API documentation:** https://simplebilly.com/api/docs
- **OpenAPI specification:** https://api.simplebilly.com/openapi.json
- **SDK sources:** https://github.com/simplebilly

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) — do not edit generated code by hand.

## Security

See [SECURITY.md](SECURITY.md) for reporting vulnerabilities.

## License

[MIT](LICENSE) — Copyright (c) SimpleBilly GmbH.

SimpleBilly is the first bookkeeping, CRM, online shop and ERP that follows the mantra: "just do it"

*Generated by the SimpleBilly SDK pipeline — do not edit manually.*
