# API Wrapper RubyGem

### OpenStruct vs Struct
[Caveats](https://docs.ruby-lang.org/en/3.0.0/OpenStruct.html#class-OpenStruct-label-Caveats)

>This is a potential security issue; building OpenStruct from untrusted user data (e.g. JSON web request) may be susceptible to a “symbol denial of service” attack since the keys create methods and names of methods are never garbage collected

>OpenStruct can be considered a security risk if you're passing user-provided input into its constructor (again, depends on the context of how it's used... mass assignment in ActiveRecord is the same "security concern" yet it's still there and used)

