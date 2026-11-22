# Zernio::CrmContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The CRM&#39;s own id. |  |
| **object_type** | **String** | &#x60;lead&#x60; only on Salesforce. |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** | The phone, else the mobile phone, as stored in the CRM. |  |
| **company** | **String** | HubSpot &#x60;company&#x60;; Salesforce Lead &#x60;Company&#x60; or Contact Account name; HighLevel &#x60;companyName&#x60;. |  |
| **owner_id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **url** | **String** | Opens the record in the CRM. |  |
| **properties** | **Hash&lt;String, Object&gt;** | The native fields asked for with &#x60;properties&#x60;, by name. |  |
| **raw** | **Hash&lt;String, Object&gt;** | The CRM&#39;s own record, only with &#x60;includeRaw&#x3D;true&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CrmContact.new(
  id: null,
  object_type: null,
  first_name: null,
  last_name: null,
  email: null,
  phone: null,
  company: null,
  owner_id: null,
  created_at: null,
  updated_at: null,
  url: null,
  properties: null,
  raw: null
)
```

