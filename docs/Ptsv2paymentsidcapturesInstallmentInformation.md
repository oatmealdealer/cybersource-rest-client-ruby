# CyberSource::Ptsv2paymentsidcapturesInstallmentInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_installment_date** | **String** | Date of the first installment payment. Format: YYMMDD. When you do not include this field, CyberSource sends a string of six zeros (000000) to the processor. See Installment Payments on CyberSource through VisaNet.  This field is supported only for Crediario installment payments in Brazil on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR9 - Position: 42-47 - Field: Date of First Installment  | [optional] 
**invoice_data** | **String** | Invoice information that you want to provide to the issuer. This value is similar to a tracking number and is the same for all installment payments for one purchase.  This field is supported only for installment payments with Mastercard on CyberSource through VisaNet in Brazil.  See Installment Payments on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR4 - Position: 51-70 - Field: Purchase Identification  | [optional] 
**payment_type** | **String** | Payment plan for the installments.  Possible values: - 0 (default): Regular installment. This value is not allowed for airline transactions. - 1: Installment payment with down payment. - 2: Installment payment without down payment. This value is supported only for airline transactions. - 3: Installment payment; down payment and boarding fee will follow. This value is supported only for airline transactions. - 4: Down payment only; regular installment payment will follow. - 5: Boarding fee only. This value is supported only for airline transactions.  This field is supported only for installment payments with Visa on CyberSource through VisaNet in Brazil.  See Installment Payments on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR1 - Position: 9 - Field: Merchant Installment Supporting Information  | [optional] 
**additional_costs** | **String** | Additional costs charged by the issuer to fund the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 128-139 - Field: Total Other Costs  | [optional] 
**additional_costs_percentage** | **String** | Additional costs divided by the amount funded.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 140-143 - Field: Percent of Total Other Costs  | [optional] 
**amount_funded** | **String** | Amount funded.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 48-59 - Field: Total Amount Funded  | [optional] 
**amount_requested_percentage** | **String** | Amount requested divided by the amount funded.  For example: - A value of 90.0 specifies 90%. - A value of 93.7 specifies 93.7%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 60-63 - Field: Percent of Amount Requested  | [optional] 
**annual_financing_cost** | **String** | Annual cost of financing the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 158-164 - Field: Annual Total Cost of Financing  | [optional] 
**annual_interest_rate** | **String** | Annual interest rate.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 151-157 - Field: Annual Interest Rate  | [optional] 
**expenses** | **String** | Expenses charged by the issuer to fund the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 64-75 - Field: Total Expenses  | [optional] 
**expenses_percentage** | **String** | Expenses divided by the amount funded.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 76-79 - Field: Percent of Total Expenses  | [optional] 
**fees** | **String** | Fees charged by the issuer to fund the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 80-91 - Field: Total Fees  | [optional] 
**fees_percentage** | **String** | Fees divided by the amount funded.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for Crediario installment payments in Brazil on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 92-95 - Field: Percent of Total Fees  | [optional] 
**insurance** | **String** | Insurance charged by the issuer to fund the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 112-123 - Field: Total Insurance  | [optional] 
**insurance_percentage** | **String** | Insurance costs divided by the amount funded.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 124-127 - Field: Percent Of Total Insurance  | [optional] 
**monthly_interest_rate** | **String** | Monthly interest rate.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 144-150 - Field: Monthly Interest Rate  | [optional] 
**taxes** | **String** | Taxes collected by the issuer to fund the installment payments.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 96-107 - Field: Total Taxes  | [optional] 
**taxes_percentage** | **String** | Taxes divided by the amount funded.  For example: - A value of 1.0 specifies 1%. - A value of 4.0 specifies 4%.  This field is included in the authorization reply for the Crediario eligibility request when the issuer approves the cardholder&#39;s request for Crediario installment payments in Brazil. See Installment Payments on CyberSource through VisaNet.  This field is supported only for &#x60;Crediario&#x60; installment payments in Brazil on **CyberSource through VisaNet**.  The value for this field corresponds to the following data in the TC 33 capture file1: - Record: CP01 TCR9 - Position: 108-111 - Field: Percent of Total Taxes  | [optional] 

