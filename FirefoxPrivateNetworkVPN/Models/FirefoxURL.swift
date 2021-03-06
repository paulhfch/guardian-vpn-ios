//
//  FirefoxHyperLink
//  FirefoxPrivateNetworkVPN
//
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at https://mozilla.org/MPL/2.0/.
//
//  Copyright © 2020 Mozilla Corporation.
//

import Foundation

enum FirefoxURL {
    case contact
    case support
    case terms
    case privacy
    case account
    case feedback

    private static let base = "https://fpn.firefox.com"
    private static let query = "?utm_medium=fx-vpn&utm_source=fx-vpn-iOSs&utm_campaign=download-client"

    var value: URL? {
        switch self {
        case .contact:
            return URL(string: FirefoxURL.base + "/r/vpn/contact" + FirefoxURL.query)
        case .support:
            return URL(string: "https://fpn.firefox.com/r/vpn/support")
        case .terms:
            return URL(string: FirefoxURL.base + "/r/vpn/terms" + FirefoxURL.query)
        case .privacy:
            return URL(string: FirefoxURL.base + "/r/vpn/privacy" + FirefoxURL.query)
        case .account:
            return URL(string: FirefoxURL.base + "/r/vpn/account/")
        case .feedback:
            return URL(string: FirefoxURL.base + "/r/vpn/client/feedback/")
        }
    }
}
