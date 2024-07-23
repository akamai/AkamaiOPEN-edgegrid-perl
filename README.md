# EdgeGrid for Perl

This library implements an Authentication handler for the Akamai EdgeGrid Authentication scheme for LWP Perl.

## Install

To install this module and all dependencies:

```bash
cpan .
```

To install only this module, run these commands:

```bash
perl Makefile.PL
make
make test
make install
```

## Authentication

We provide authentication credentials through an API client. Requests to the API are signed with a timestamp and are executed immediately.

1. [Create authentication credentials](https://techdocs.akamai.com/developer/docs/set-up-authentication-credentials).
   
2. Place your credentials in an EdgeGrid resource file, `.edgerc`, under a heading of `[default]` at your local home directory or the home directory of a web-server user.

    ```
    [default]
    client_secret = C113nt53KR3TN6N90yVuAgICxIRwsObLi0E67/N8eRN=
    host = akab-h05tnam3wl42son7nktnlnnx-kbob3i3v.luna.akamaiapis.net
    access_token = akab-acc35t0k3nodujqunph3w7hzp7-gtm6ij
    client_token = akab-c113ntt0k3n4qtari252bfxxbsl-yvsdj
    ```

## Use

To use the library, provide the path to your local `.edgerc` resource file, your credentials' section header, and the appropriate endpoint information.

```perl
use Akamai::Edgegrid;
 
my $agent = new Akamai::Edgegrid(
                config_file => "$ENV{HOME}/.edgerc",
                section   => "default");
my $baseurl = "https://" . $agent->{host};
 
my $resp = $agent->get("$baseurl/identity-management/v3/user-profile");
print $resp->content;
```


## Support and documentation

After installing, you can find documentation for this module with the `perldoc` command.

```
perldoc Akamai::Edgegrid
```

You can also look for information at:

- [Akamai Community](https://community.akamai.com/customers/s/?language=en_US)

- [RT, CPAN's request tracker](http://rt.cpan.org/NoAuth/Bugs.html?Dist=edgegrid-perl) (report bugs here)

- [Search CPAN](http://search.cpan.org/dist/edgegrid-perl/)

## Reporting issues

To report an issue or make a suggestion, create a new [GitHub issue](https://github.com/akamai/AkamaiOPEN-edgegrid-perl/issues).

## License

Copyright 2024 Akamai Technologies, Inc. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

