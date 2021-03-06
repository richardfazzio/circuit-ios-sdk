// Apache 2.0 License
//
// Copyright 2017 Unify Software and Solutions GmbH & Co.KG.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  CKTProxyConfiguration.h
//  CircuitSDK
//
//

#import <Foundation/Foundation.h>

@interface CKTProxyConfiguration : NSObject

// The port address and port, if one was found
@property (nonatomic, readonly) NSString *address;
@property (nonatomic, readonly) int port;

// Singleton functions: get singleton, refresh proxy list
+ (CKTProxyConfiguration *)sharedInstance;

// Gets the best proxy to use for the given URL (properties |address| and |port|
// are updated)
// Returns YES if one was found, or NO if not proxy found
- (BOOL)getProxyForUrl:(NSURL *)url;

@end
