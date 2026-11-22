# Zernio::AutocompleteContacts200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **sources** | [**Array&lt;AutocompleteContacts200ResponseMetaSourcesInner&gt;**](AutocompleteContacts200ResponseMetaSourcesInner.md) | Each source searched. A source the provider refused, such as the directory of a personal Google account, has searched false and an error. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutocompleteContacts200ResponseMeta.new(
  account_id: null,
  sources: null
)
```

