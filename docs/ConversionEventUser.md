# Zernio::ConversionEventUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Plaintext email. Hashed server-side. | [optional] |
| **phone** | **String** | Phone number, ideally E.164. Hashed server-side. | [optional] |
| **first_name** | **String** | Plaintext first name. Hashed server-side. | [optional] |
| **last_name** | **String** | Plaintext last name. Hashed server-side. | [optional] |
| **external_id** | **String** | Stable customer identifier (e.g. CRM user ID). Hashed server-side for Meta and Google. Sent as plaintext to LinkedIn (LinkedIn&#39;s Conversions API spec requires the raw value). Maximum effective list size on LinkedIn is 1.  | [optional] |
| **ip_address** | **String** | Client IP address. Sent plaintext (Meta, Pinterest, Reddit, OpenAI, Google Ads). | [optional] |
| **user_agent** | **String** | Client user-agent string. Sent plaintext (Meta, Pinterest, Reddit, OpenAI, Google Ads). | [optional] |
| **country** | **String** | ISO 3166-1 alpha-2 country code, e.g. &#39;us&#39;. | [optional] |
| **city** | **String** | Meta advanced matching (ct). Plaintext city; normalized + SHA-256 hashed server-side. Meta only. | [optional] |
| **state** | **String** | Meta advanced matching (st). 2-letter ANSI for US; hashed server-side. Meta only. | [optional] |
| **zip** | **String** | Postal code. Meta advanced matching (zp; US uses first 5 digits; hashed server-side). Google Ads sends it plain in an address identifier with firstName, lastName and country, only when all four are present. | [optional] |
| **dob** | **String** | Meta advanced matching (db). YYYYMMDD; hashed server-side. Meta only. | [optional] |
| **gender** | **String** | Meta advanced matching (ge). &#39;f&#39; or &#39;m&#39;; hashed server-side. Meta only. | [optional] |
| **lead_id** | **String** | Meta lead ID from a Lead Ad submission, as a string. Required for Conversion Leads CRM events: send it with &#x60;actionSource: &#39;crm&#39;&#x60; and &#x60;platformData: { event_source: &#39;crm&#39;, lead_event_source: &#39;&lt;CRM name&gt;&#39; }&#x60;. Forwarded unhashed to Meta&#39;s &#x60;user_data.lead_id&#x60;. Meta only.  | [optional] |
| **visitor_id** | **String** | The Zernio tag&#39;s visitor id, from the &#x60;_zid&#x60; cookie the tag sets on your site. Zernio adds the click ids and browser ids of that visit that the event lacks, before storing and forwarding it.  Without it, Zernio finds the visit by the &#x60;email&#x60;, &#x60;phone&#x60; or &#x60;externalId&#x60; the tag saw. Ids you send always win. Never sent to a platform. Read only by &#x60;POST /v1/events&#x60;, for a profile with a tracking site.  | [optional] |
| **click_ids** | [**ConversionEventUserClickIds**](ConversionEventUserClickIds.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionEventUser.new(
  email: null,
  phone: null,
  first_name: null,
  last_name: null,
  external_id: null,
  ip_address: null,
  user_agent: null,
  country: null,
  city: null,
  state: null,
  zip: null,
  dob: null,
  gender: null,
  lead_id: null,
  visitor_id: 4f9c2e1a-7b3d-4c8e-9a1f-2d6b5e8c0a73,
  click_ids: null
)
```

