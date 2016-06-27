# The issue I was going to file with [Quick](https://github.com/Quick/Quick/issues/new)

Hey team,

I'm playing with Q&N to decide whether to switch from XCTest and have run into some weird behaviour within Xcode. When I click the diamond next to `CallbackCallerTests`, it runs both tests. The first passes, as intended. The second fails, as intended. This displays as Xcode's "Test Failed" popup (like the volume icon) for a second, and the test run finishes. The diamond next to the test class is green, as though it passed, and this is true in the results view too. It's as though the failure was forgotten.

[I've created a sample repo displaying this behaviour.](https://github.com/d-lord/QN-odd-behaviour)

Setup:
- Xcode version 7.3 (7D175)
- Nimble 4.1.0
- Quick 0.9.2

I'm not at all familiar with rspec-style testing, so this could be PEBCAK.

# However:

It's stopped displaying it after a bunch of `git` fiddling (so more likely to be time).

I don't know why. I'm leaving the repo up in case it comes back, and I can add the word "sometimes" in here.
