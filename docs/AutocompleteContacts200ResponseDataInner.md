# Zernio::AutocompleteContacts200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **emails** | **Array&lt;String&gt;** |  | [optional] |
| **phones** | **Array&lt;String&gt;** | E.164 numbers only. | [optional] |
| **company** | **String** |  | [optional] |
| **job_title** | **String** |  | [optional] |
| **photo_url** | **String** |  | [optional] |
| **source** | **String** | contacts &#x3D; saved contacts, other &#x3D; people the user mailed, directory &#x3D; the organization. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutocompleteContacts200ResponseDataInner.new(
  name: null,
  email: null,
  emails: null,
  phones: null,
  company: null,
  job_title: null,
  photo_url: null,
  source: null
)
```

