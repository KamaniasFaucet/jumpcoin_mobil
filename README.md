[![Sumcoin Donate](https://badgen.net/badge/sumcoin/Donate/green?icon=https://raw.githubusercontent.com/sumcoin/media/84710cca6c3c8d2d79676e5260cc8d1cd729a427/Sumcoin%202020%20Logo%20Files/01.%20Icon%20Only/Inside%20Circle/Transparent/Green%20Icon/sumcoin-icon-green-transparent.svg)](https://sumexplorer.com/address/SiKHm23qe5y4XDkmXE1op9oXbVYax7wrG8)
<a href="https://weblate.sumcoinwallet.org/engage/sumcoin-flutter/">
<img src="https://weblate.sumcoinwallet.org/widgets/sumcoin-flutter/-/translations/svg-badge.svg" alt="Übersetzungsstatus" /></a>
[![Codemagic build status](https://api.codemagic.io/apps/61012a37d885ed7a8c3e8b25/61012a37d885ed7a8c3e8b24/status_badge.svg)](https://codemagic.io/apps/61012a37d885ed7a8c3e8b25/61012a37d885ed7a8c3e8b24/latest_build)
[![Static analysis and unit tests](https://github.com/sumcoinlabs/sumcoin_flutter/actions/workflows/static_analysis_and_unit_test.yml/badge.svg)](https://github.com/sumcoinlabs/sumcoin_flutter/actions/workflows/static_analysis_and_unit_test.yml)
[![E2E Tests](https://github.com/sumcoinlabs/sumcoin_flutter/actions/workflows/e2e_tests.yml/badge.svg)](https://github.com/sumcoinlabs/sumcoin_flutter/actions/workflows/e2e_tests.yml)
# sumcoin_flutter
Wallet for Sumcoin using Electrumx as backend.  
**App in constant development**  

**Use at own risk.**  


<p align="center">
     <a href="https://f-droid.org/packages/com.sumcoinwallet/">
<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png"
     alt="Get it on F-Droid"
     height="80"></a>
<a href="https://play.google.com/store/apps/details?id=com.sumcoinwallet"><img src="https://play.google.com/intl/en_us/badges/images/generic/en-play-badge.png"
     alt="Get it on Google Play" height="80"></a>
</p>
<p align="center">
     <a href="https://apps.apple.com/app/sumcoin-wallet/id1571755170?itsct=apps_box_badge&amp;itscg=30200" style="display: inline-block; overflow: hidden; border-radius: 13px; width: 250px; height: 83px;"><img src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&amp;releaseDate=1626912000&h=8e86ea0b88a4e8559b76592c43b3fe60" alt="Download on the App Store" style="border-radius: 13px; width: 250px; height: 83px;"></a>
</p>

You can also sign up for our open beta testing here:

* [Android](https://play.google.com/apps/testing/com.sumcoinwallet)
* [iOS](https://testflight.apple.com/join/MdYIC0K3)

![Screenshot_small](https://.png)

## Help Translate
<a href="https://weblate.sumcoinwallet.org/engage/sumcoin-flutter/">
<img src="https://weblate.sumcoinwallet.org/widgets/sumcoin-flutter/-/translations/multi-auto.svg" alt="Translation status" />
</a>

## Known Limitations
- will not mint

## Development
**Build sumcoinlib**  
This repository relies on
[sumcoinlib.](https://github.com/sumcoinlabs/sumcoinlib "https://github.com/sumcoinlabs/sumcoinlib")  
Please follow the build instructions for your OS here:
[README](https://github.com/sumcoinlabs/sumcoinlib/blob/master/coinlib/README.md)

**Update icons**  
`dart run flutter_launcher_icons:main`

**Update Hive adapters**  
`dart run build_runner build`

**Update splash screen**  
`dart run flutter_native_splash:create`

**Generate proto files**  
`protoc --dart_out=grpc:lib/generated -Iprotos protos/marisma.proto`

**Build for web**  
`flutter pub global activate peanut`  
`flutter pub global run peanut -b production`  
Web files are now on the production branch and ready to be deployed.  
This will use the html renderer by default. Add *--web-renderer canvas* to peanut if you want to switch to the canvas renderer.

## Run e2e tests
`flutter drive --target=test_driver/app.dart --driver=test_driver/key_new.dart`  
`flutter drive --target=test_driver/app.dart --driver=test_driver/key_imported.dart`
