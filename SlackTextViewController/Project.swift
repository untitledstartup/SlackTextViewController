import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(name: "SlackTextViewController",
                      organizationName: BuildInfo.organizationName,
                      targets: [
                        Target(name: "SlackTextViewController",
                               platform: .iOS,
                               product: .framework,
                               productName: "SlackTextViewController",
                               bundleId: "com.slack.SlackTextViewController",
                               deploymentTarget: BuildInfo.deploymentTarget,
                               infoPlist: .file(path: "SlackTextViewController/Info.plist"),
                               sources: [
                                "../Source/**/*.m"
                               ],
                               headers: Headers(public: [
                                "SlackTextViewController/*.h",
                                "../Source/**/*.h"
                               ]),
                               settings: Settings(
                                 configurations: [
                                  .debug(name: "Debug", settings: ["EXCLUDED_ARCHS": "arm64"], xcconfig: "SlackTextViewController.xcconfig"),
                                  .release(name: "Release", xcconfig: "SlackTextViewController.xcconfig")
                                ]))
                      ])
