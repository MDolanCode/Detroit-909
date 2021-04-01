//
//  BundleExtension.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-31.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation

extension Bundle {
  private var releaseVersionNumber: String {
    return infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
  }

  private var buildVersionNumber: String {
    return infoDictionary?["CFBundleVersion"] as? String ?? ""
  }

  var bundleID: String {
    return Bundle.main.bundleIdentifier?.lowercased() ?? ""
  }

  var versionString: String {
    var scheme = ""

    // If you use different bundle IDs for different environments, code like this is helpful:
    if bundleID.contains(".dev") {
      scheme = "Dev"
    } else if bundleID.contains(".staging") {
      scheme = "Staging"
    }

    let returnValue = "Version \(releaseVersionNumber).\(buildVersionNumber) \(scheme)"

    return returnValue.trimmingCharacters(in: .whitespacesAndNewlines)
  }
}
