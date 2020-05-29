inform_test
=====

An OTP application showing the timeout difference when `inform` is used for a request.
The 2.7.0 branch can be used to use cowboy 2.7.0.

Run
-----

    $ rebar3 shell

Cowboy 2.7.0:

```
rebar3 shell
===> Verifying dependencies...
===> Compiling inform_test
Erlang/OTP 22 [erts-10.4.4] [source] [64-bit] [smp:16:16] [ds:16:16:10] [async-threads:1] [hipe]

Eshell V10.4.4  (abort with ^G)
1> ===> The rebar3 shell is a development tool; to deploy applications in production, consider using releases (http://www.rebar3.org/docs/releases)
===> Booted cowlib
===> Booted ranch
===> Booted cowboy
===> Booted idna
===> Booted hackney
===> Booted inform_test
1> inform_test:request().
{5,103,[{<<"link">>,<<"</style.css>; rel=preload; as=style">>}]}
true
```

Cowboy 2.8.0:

```
rebar3 shell
===> Verifying dependencies...
===> Compiling inform_test
Erlang/OTP 22 [erts-10.4.4] [source] [64-bit] [smp:16:16] [ds:16:16:10] [async-threads:1] [hipe]

Eshell V10.4.4  (abort with ^G)
1> ===> The rebar3 shell is a development tool; to deploy applications in production, consider using releases (http://www.rebar3.org/docs/releases)
===> Booted cowlib
===> Booted ranch
===> Booted cowboy
===> Booted idna
===> Booted hackney
===> Booted inform_test
1> inform_test:request().
{60,103,[{<<"link">>,<<"</style.css>; rel=preload; as=style">>}]}
true
```

The main difference is the time taken for the response (5s for 2.7.0 and 60s for 2.8.0)
