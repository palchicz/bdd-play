#
# Setup
## Dir structure
+-- features/
|     +-- steps/
|     |    +-- website_steps.py
|     |    +-- utils.py
|     |
|     +-- environment.py      # -- Environment file with behave hooks, etc.
|     +-- signup.feature
|     +-- login.feature
|     +-- account_details.feature


## Calling it
Just run `behave`

* It prints out pretty stuff to evaluate
* Gives you snippets to implement if need be

## Dependencies
It can be useful to also include an assert library like `PyHamcrest` for better
asserts

# Resources
* General Async: https://realpython.com/async-io-python/
* aiohttp library example: https://www.terriblecode.com/blog/asynchronous-http-requests-in-python/
* aiohttp code: https://aiohttp.readthedocs.io/en/stable/
* behave library: https://behave.readthedocs.io/en/latest/
* hamcrest lib: https://github.com/hamcrest/PyHamcrest
