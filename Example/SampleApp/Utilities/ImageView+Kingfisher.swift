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
//  ImageView+Kingfisher.swift
//  SampleApp
//
//

import UIKit
import Kingfisher

extension UIImageView {

    func setImage(url: URL) {
        let modifier = AnyModifier { request in
            var r = request
            if let cookies = HTTPCookieStorage.shared.cookies(for: url) {
                let headers = HTTPCookie.requestHeaderFields(with: cookies)
                r.allHTTPHeaderFields = headers
            }
            return r
        }
        self.kf_setImage(with: url, placeholder: nil, options: [.requestModifier(modifier)], progressBlock: nil, completionHandler: nil)
    }

    func setImage(url: URL, completionHandler: @escaping CompletionHandler) {
        let modifier = AnyModifier { request in
            var r = request
            if let cookies = HTTPCookieStorage.shared.cookies(for: url) {
                let headers = HTTPCookie.requestHeaderFields(with: cookies)
                r.allHTTPHeaderFields = headers
            }
            return r
        }
        self.kf_setImage(with: url, placeholder: nil, options: [.requestModifier(modifier)], progressBlock: nil, completionHandler: completionHandler)
    }

}
