import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "SlackTextViewController",
    organizationName: BuildInfo.organizationName,
    options: .options(developmentRegion: "en"),
    targets: [
        Target(
            name: "SlackTextViewController",
            platform: .iOS,
            product: .framework,
            productName: "SlackTextViewController",
            bundleId: "com.slack.SlackTextViewController",
            deploymentTarget: BuildInfo.deploymentTarget,
            infoPlist: .file(path: "SlackTextViewController/Info.plist"),
            sources: [
                "../Source/**/*.m"
            ],
            headers: Headers.headers(public: [
                "SlackTextViewController/*.h",
                "../Source/**/*.h"
            ]),
            settings: Settings.settings(
                configurations: [
                    .debug(
                        name: "Debug",
                        xcconfig: "SlackTextViewController.xcconfig"
                    ),
                    .release(name: "Release", xcconfig: "SlackTextViewController.xcconfig")
                ]
            )
        )
    ]
)
