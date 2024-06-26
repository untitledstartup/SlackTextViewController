import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "SlackTextViewController",
    organizationName: BuildInfo.organizationName,
    options: .options(developmentRegion: "en"),
    targets: [
        Target.target(
            name: "SlackTextViewController",
            destinations: .iOS,
            product: .framework,
            productName: "SlackTextViewController",
            bundleId: "com.slack.SlackTextViewController",
            deploymentTargets: BuildInfo.deploymentTargets,
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
