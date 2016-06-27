//
//  Tests.swift
//  Tests
//
//  Created by David Lord on 27/06/2016.
//  Copyright © 2016 David Lord. All rights reserved.
//

import Quick
import Nimble

// tests functions it itself defines
class CallbackCallerTests: QuickSpec {
    func goodCallbackCaller(callback: () -> ()) { callback() }
    func badCallbackCaller(callback: () -> ()) {}
    
    override func spec() {
        describe("callbackCaller functions") {
            it("should call the callback we pass to it from goodCallbackCaller") {
                waitUntil { done in
                    self.goodCallbackCaller() {
                        done()
                    }
                }
            }
            it("should call the callback we pass to it from badCallbackCaller") {
                waitUntil { done in
                    self.badCallbackCaller() {
                        done()
                    }
                }
            }
            
        }
    }
}