# CyberSource::Ptsv2paymentsTravelInformationTransitAirline

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**booking_reference_number** | **String** | Reference number for the airline booking. Required if ticket numbers are not issued.  | [optional] 
**carrier_name** | **String** | Airline that generated the ticket. Format: English characters only. Optional request field.  | [optional] 
**ticket_issuer** | [**Ptsv2paymentsTravelInformationTransitAirlineTicketIssuer**](Ptsv2paymentsTravelInformationTransitAirlineTicketIssuer.md) |  | [optional] 
**ticket_number** | **String** | Ticket number. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field.  | [optional] 
**check_digit** | **String** | Check digit for the ticket number. CyberSource recommends that you validate the check digit. With Discover and Diners Club, a valid ticket number has these characteristics: - The value is numeric. - The first three digits are a valid IATA2 license plate carrier code. - The last digit is a check digit or zero (0). - All remaining digits are nonzero.  | [optional] 
**restricted_ticket_indicator** | **Integer** | Flag that indicates whether or not the ticket is restricted (nonrefundable). Possible values: - 0: No restriction (refundable) - 1: Restricted (nonrefundable) Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field.  | [optional] 
**transaction_type** | **Integer** | Type of charge. Possible values: - 01: Charge is for an airline ticket - 02: Charge is for an item that is not an airline ticket  | [optional] 
**extended_payment_code** | **String** | The field is not currently supported.  | [optional] 
**passenger_name** | **String** | Name of the passenger to whom the ticket was issued.  This will always be a single passenger&#39;s name. If there are more than one passengers, provide only the primary passenger&#39;s name. Do not include special characters such as commas, hyphens, or apostrophes. Only ASCII characters are supported. Format: English characters only. Optional request field.  | [optional] 
**customer_code** | **String** | Reference number or code that identifies the cardholder. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field.  | [optional] 
**document_type** | **String** | Airline document type code that specifies the purpose of the transaction. Format: English characters only. Optional request field.  | Code | Description | | --- | --- | | 01 | Passenger ticket | | 02 | Additional collection | | 03 | Excess baggage | | 04 | Miscellaneous charge order (MCO) or prepaid ticket authorization | | 05 | Special service ticket | | 06 | Supported refund | | 07 | Unsupported refund | | 08 | Lost ticket application | | 09 | Tour order voucher | | 10 | Ticket by mail | | 11 | Undercharge adjustment | | 12 | Group ticket | | 13 | Exchange adjustment | | 14 | SPD or air freight | | 15 | In-flight adjustment | | 16 | Agency passenger ticket | | 17 | Agency tour order or voucher | | 18 | Agency miscellaneous charge order (MCO) | | 19 | Agency exchange order | | 20 | Agency group ticket | | 21 | Debit adjustment for duplicate refund or use | | 22 | In-flight merchandise order | | 23 | Catalogue merchandise order | | 24 | In-flight phone charges | | 25 | Frequent flyer fee or purchase | | 26 | Kennel charge | | 27 | Animal transportation charge | | 28 | Firearms case | | 29 | Upgrade charge | | 30 | Credit for unused transportation | | 31 | Credit for class of service adjustment | | 32 | Credit for denied boarding | | 33 | Credit for miscellaneous refund | | 34 | Credit for lost ticket refund | | 35 | Credit for exchange refund | | 36 | Credit for overcharge adjustment | | 37 | Credit for multiple Unused tickets | | 38 | Exchange order | | 39 | Self-service ticket | | 41 | In-flight duty-free purchase | | 42 | Senior citizen discount booklets | | 43 | Club membership fee | | 44 | Coupon book | | 45 | In-flight charges | | 46 | Tour deposit | | 47 | Frequent flyer overnight delivery charge | | 48 | Frequent flyer fulfillment | | 49 | Small package delivery | | 50 | Vendor sale | | 51 | Miscellaneous taxes or fees | | 52 | Travel agency fee | | 60 | Vendor refund or credit | | 64 | Duty free sale | | 65 | Preferred seat upgrade | | 66 | Cabin upgrade | | 67 | Lounge or club access or day pass | | 68 | Agent assisted reservation or ticketing fee | | 69 | Ticket change or cancel fee | | 70 | Trip insurance | | 71 | Unaccompanied minor | | 72 | Standby fee | | 73 | Curbside baggage | | 74 | In-flight medical equipment | | 75 | Ticket or pass print fee | | 76 | Checked sporting or special equipment | | 77 | Dry ice fee | | 78 | Mail or postage fee | | 79 | Club membership fee or temporary trial | | 80 | Frequent flyer activation or reinstatement | | 81 | Gift certificate | | 82 | Onboard or in-flight prepaid voucher | | 83 | Optional services fee | | 84 | Advance purchase for excess baggage | | 85 | Advance purchase for preferred seat upgrade | | 86 | Advance purchase for cabin upgrade | | 87 | Advance purchase for optional services | | 88 | WiFi | | 89 | Packages | | 90 | In-flight entertainment or internet access | | 91 | Overweight bag fee | | 92 | Sleep sets | | 93 | Special purchase fee |  | [optional] 
**document_number** | **String** | The field is not currently supported.  | [optional] 
**document_number_of_parts** | **Integer** | The field is not currently supported.  | [optional] 
**invoice_number** | **String** | Invoice number for the airline transaction.  | [optional] 
**invoice_date** | **Integer** | Invoice date. The format is YYYYMMDD. If this value is included in the request, it is used in the creation of the invoice number. See \&quot;Invoice Number,\&quot;  | [optional] 
**additional_charges** | **String** | Description of the charge if the charge does not involve an airline ticket. For example: Excess baggage.  | [optional] 
**total_fee_amount** | **String** | Total fee for the ticket. This value cannot exceed &#x60;99999999999999999999&#x60; (twenty 9s). Format: English characters only. Optional request field.  | [optional] 
**clearing_sequence** | **String** | Number that identifies the clearing message when multiple clearing messages are allowed per authorized transaction. Each clearing message linked to one authorization request must include a unique clearing sequence number between 1 and the total number of clearing records. Format: English characters only. Optional request field.  | [optional] 
**clearing_count** | **String** | Total number of clearing messages associated with the authorization request. Format: English characters only. Optional request field.  | [optional] 
**total_clearing_amount** | **String** | Total clearing amount for all transactions in the clearing count set. This value cannot exceed &#x60;99999999999999999999&#x60; (twenty 9s). Format: English characters only. If this field is not set and if the total amount from the original authorization is not NULL, the total clearing amount is set to the total amount from the original authorization.  | [optional] 
**number_of_passengers** | **Integer** | Number of passengers for whom the ticket was issued. Format: English characters only. Optional request field.  | [optional] 
**reservation_system_code** | **String** | Code that specifies the computerized reservation system used to make the reservation and purchase the ticket. Format: English characters only. Restricted string data type that indicates a sequence of letters, numbers, and spaces; special characters are not included. Optional request field.  | [optional] 
**process_identifier** | **String** | Airline process identifier. This value is the airline’s three-digit IATA1 code which is used to process extended payment airline tickets.  | [optional] 
**ticket_issue_date** | **String** | Date on which the transaction occurred. Format: &#x60;YYYYMMDD&#x60; Format: English characters only. Optional request field.  | [optional] 
**electronic_ticket_indicator** | **BOOLEAN** | Flag that indicates whether an electronic ticket was issued. Possible values: - &#x60;true&#x60; - &#x60;false&#x60; Optional request field.  | [optional] 
**original_ticket_number** | **String** | Original ticket number when the transaction is for a replacement ticket.  | [optional] 
**purchase_type** | **String** | Type of purchase. Possible values: - &#x60;EXC&#x60;: Exchange ticket - &#x60;MSC&#x60;: Miscellaneous (not a ticket purchase and not a transaction related to an exchange ticket) - &#x60;REF&#x60;: Refund - &#x60;TKT&#x60;: Ticket Format: English characters only. Optional request field.  | [optional] 
**credit_reason_indicator** | **String** | Reason for the credit. Possible values: - &#x60;A&#x60;: Cancellation of the ancillary passenger transport purchase. - &#x60;B&#x60;: Cancellation of the airline ticket and the passenger transport ancillary purchase. - &#x60;C&#x60;: Cancellation of the airline ticket. - &#x60;O&#x60;: Other. - &#x60;P&#x60;: Partial refund of the airline ticket. Format: English characters only.  Optional request field.  | [optional] 
**ticket_change_indicator** | **String** | Type of update. Possible values: - &#x60;C&#x60;: Change to the existing ticket. - &#x60;N&#x60;: New ticket. Format: English characters only Optional request field.  | [optional] 
**plan_number** | **String** | Plan number based on the fare. This value is provided by the airline. Format: English characters only. Optional request field.  | [optional] 
**arrival_date** | **String** | Date of arrival for the last leg of the trip. Format: &#x60;MMDDYYYY&#x60; English characters only. Optional request field.  | [optional] 
**restricted_ticket_desciption** | **String** | Text that describes the ticket limitations, such as _nonrefundable_. Format: English characters only. Optional request field.  | [optional] 
**exchange_ticket_amount** | **String** | Amount of the exchanged ticket. Format: English characters only.  | [optional] 
**exchange_ticket_fee_amount** | **String** | Fee for exchanging the ticket. Format: English characters only. Optional request field.  | [optional] 
**reservation_type** | **String** | The field is not currently supported.  | [optional] 
**boarding_fee_amount** | **String** | Boarding fee.  | [optional] 
**legs** | [**Array&lt;Ptsv2paymentsTravelInformationTransitAirlineLegs&gt;**](Ptsv2paymentsTravelInformationTransitAirlineLegs.md) |  | [optional] 
**ancillary_information** | [**Ptsv2paymentsTravelInformationTransitAirlineAncillaryInformation**](Ptsv2paymentsTravelInformationTransitAirlineAncillaryInformation.md) |  | [optional] 

