# Zernio::GetLinkedInMentions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **urn** | **String** | The LinkedIn URN (person or organization) | [optional] |
| **type** | **String** | The type of entity (person or organization) | [optional] |
| **display_name** | **String** | Display name (provided, from API, or derived from vanity URL) | [optional] |
| **mention_format** | **String** | Ready-to-use mention format for post content | [optional] |
| **vanity_name** | **String** | The vanity name/slug (only for organization mentions) | [optional] |
| **warning** | **String** | Only present for person mentions when displayName was not provided and the real name could not be resolved from LinkedIn | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLinkedInMentions200Response.new(
  urn: urn:li:person:4qj5ox-agD,
  type: person,
  display_name: Miquel Palet,
  mention_format: @[Miquel Palet](urn:li:person:4qj5ox-agD),
  vanity_name: microsoft,
  warning: Could not resolve real name from LinkedIn. Display name was derived from the vanity URL and may not match the profile exactly.
)
```

