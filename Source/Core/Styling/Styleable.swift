//
//  Styleable.swift
//  Reactant
//
//  Created by Tadeas Kriz on 5/2/17.
//  Copyright © 2017 Brightify. All rights reserved.
//

import UIKit

public protocol Styleable { }

extension UIView: Styleable { }

public typealias Style<T> = (T) -> Void

extension Styleable {

    /**
     * Applies a method destructively. Recommended to be used on views to synchronize their appearance.
     * ## Example
     * ```
     * struct Styles {
     *   static func infoLabel(label: UILabel) {
     *     label.textColor = .white
     *     label.fontSize = 12
     *   }
     * }
     * ```
     *
     *     emailLabel.apply(style: Styles.infoLabel)
     *     passwordLabel.apply(style: Styles.infoLabel)
     */
    public func apply(style: Style<Self>) {
        style(self)
    }

    /**
     * Applies multiple methods destructively. Recommended to be used on views to synchronize their appearance.
     * - NOTE: For an example, see **apply(style:)**.
     */
    public func apply(styles: Style<Self>...) {
        styles.forEach(apply(style:))
    }

    /**
     * Applies multiple methods destructively. Recommended to be used on views to synchronize their appearance.
     * - NOTE: For an example, see **apply(style:)**.
     */
    public func apply(styles: [Style<Self>]) {
        styles.forEach(apply(style:))
    }

    /**
     * Applies multiple methods non-destructively. Recommended to be used on views to synchronize their appearance during initialization.
     * - NOTE: For an example, see **with(style:)**.
     */
    public func styled(using styles: Style<Self>...) -> Self {
        styles.forEach(apply(style:))
        return self
    }

    /**
     * Applies multiple methods non-destructively. Recommended to be used on views to synchronize their appearance during initialization.
     * - NOTE: For an example, see **with(style:)**.
     */
    public func styled(using styles: [Style<Self>]) -> Self {
        apply(styles: styles)
        return self
    }

    /**
     * Applies a method non-destructively. Recommended to be used on views to synchronize their appearance during initialization.
     * ## Example
     * ```
     * struct Styles {
     *   static func infoLabel(label: UILabel) {
     *     label.textColor = .white
     *     label.fontSize = 12
     *   }
     * }
     *
     * let emailLabel = UILabel(text: "Email").with(style: Styles.infoLabel)
     * let passwordLabel = UILabel(text: "Password").with(style: Styles.infoLabel)
     * ```
     */
    public func with(_ style: Style<Self>) -> Self {
        apply(style: style)
        return self
    }
}
