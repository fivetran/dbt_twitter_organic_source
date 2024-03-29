# dbt_twitter_organic_source v0.UPDATE.UPDATE

## Under the Hood:
- Incorporated the new `fivetran_utils.drop_schemas_automation` macro into the end of each Buildkite integration test job. ([#9](https://github.com/fivetran/dbt_twitter_organic_source/pull/9))
- Updated the pull request [templates](/.github). ([#9](https://github.com/fivetran/dbt_twitter_organic_source/pull/9))

# dbt_twitter_organic_source v0.2.0

## 🚨 Breaking Changes 🚨:
[PR #7](https://github.com/fivetran/dbt_twitter_organic_source/pull/7/) includes the following breaking changes:
- Dispatch update for dbt-utils to dbt-core cross-db macros migration. Specifically `{{ dbt_utils.<macro> }}` have been updated to `{{ dbt.<macro> }}` for the below macros:
    - `any_value`
    - `bool_or`
    - `cast_bool_to_text`
    - `concat`
    - `date_trunc`
    - `dateadd`
    - `datediff`
    - `escape_single_quotes`
    - `except`
    - `hash`
    - `intersect`
    - `last_day`
    - `length`
    - `listagg`
    - `position`
    - `replace`
    - `right`
    - `safe_cast`
    - `split_part`
    - `string_literal`
    - `type_bigint`
    - `type_float`
    - `type_int`
    - `type_numeric`
    - `type_string`
    - `type_timestamp`
    - `array_append`
    - `array_concat`
    - `array_construct`
- For `current_timestamp` and `current_timestamp_in_utc` macros, the dispatch AND the macro names have been updated to the below, respectively:
    - `dbt.current_timestamp_backcompat`
    - `dbt.current_timestamp_in_utc_backcompat`
- Dependencies on `fivetran/fivetran_utils` have been upgraded, previously `[">=0.3.0", "<0.4.0"]` now `[">=0.4.0", "<0.5.0"]`.

# dbt_twitter_organic_source v0.1.1
## Under the Hood
- The `user_id` field within the `tweet_user_history` and `tweet` source tables can sometimes be of type bigint. Therefore, the staging models now leverage the `dbt_utils.type_bigint()` macro to cast accordingly. ([#6](https://github.com/fivetran/dbt_twitter_organic_source/pull/6))
# dbt_twitter_organic_source v0.1.0

The original release! This package contains staging models, designed to work simultaneously with our [Twitter Organic modeling package](https://github.com/fivetran/dbt_twitter_organic) and our [Social Media Reporting package](https://github.com/fivetran/dbt_social_media_reporting). The staging models name columns consistently across all packages:
 * Boolean fields are prefixed with `is_` or `has_`
 * Timestamps are appended with `_timestamp`
 * ID primary keys are prefixed with the name of the table. For example, the account table's ID column is renamed `account_id`.