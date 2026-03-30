# Late::WhatsAppTemplateButton

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **text** | **String** |  |  |
| **url** | **String** | Required when type is URL | [optional] |
| **example** | **Array&lt;String&gt;** | Example values for URL suffix variables | [optional] |
| **phone_number** | **String** | Required when type is PHONE_NUMBER | [optional] |
| **otp_type** | **String** | Required when type is OTP | [optional] |
| **autofill_text** | **String** |  | [optional] |
| **package_name** | **String** |  | [optional] |
| **signature_hash** | **String** |  | [optional] |
| **flow_id** | **String** |  | [optional] |
| **flow_name** | **String** |  | [optional] |
| **flow_json** | **String** |  | [optional] |
| **flow_action** | **String** |  | [optional] |
| **navigate_screen** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::WhatsAppTemplateButton.new(
  type: null,
  text: null,
  url: null,
  example: null,
  phone_number: null,
  otp_type: null,
  autofill_text: null,
  package_name: null,
  signature_hash: null,
  flow_id: null,
  flow_name: null,
  flow_json: null,
  flow_action: null,
  navigate_screen: null
)
```

