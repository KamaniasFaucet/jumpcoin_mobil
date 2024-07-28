import 'dart:math';

import 'package:jumpcoinlib_flutter/jumpcoinlib_flutter.dart';

import 'coin.dart';

class AvailableCoins {
  static final Map<String, Coin> _availableCoinList = {
    'jumpcoin': Coin(
      name: 'jumpcoin',
      displayName: 'Jumpcoin',
      uriCode: 'jump',
      letterCode: 'JUMP',
      iconPath: 'assets/icon/sum-icon-48.png',
      iconPathTransparent: 'assets/icon/sum-icon-white-48.png',
      networkType: Network.mainnet,
      opreturnSize: 40,
      fractions: 8,
      minimumTxValue: 10000,
      fixedFee: true,
      fixedFeePerKb: 0.01,
      explorerUrl: 'https://explorer.jumpcoin.net/',
      genesisHash: '00000fa4edca746cef5d3e903ca8691f3fa9602e6055e351a53be2e109f9a4e3',
      txVersion: 1,
      electrumRequiredProtocol: 1.4,
      electrumServers: [
        'wss://explorer.nmnsc.com:50004',
       ],
      marismaServers: [
        ('marisma.ppc.lol', 8443),
      ],
    ),
  /*  'peercoinTestnet': Coin(
      name: 'peercoinTestnet',
      displayName: 'Sumcoin Testnet',
      uriCode: 'sumcoin',
      letterCode: 'tSUM',
      iconPath: 'assets/icon/sum-icon-48-grey.png',
      iconPathTransparent: 'assets/icon/sum-icon-48-grey.png',
      networkType: Network.testnet,
      opreturnSize: 256,
      fixedFee: true,
      fractions: 6,
      minimumTxValue: 10000,
      fixedFeePerKb: 0.01,
      explorerUrl: 'https://tblockbook.sumcoin.net',
      genesisHash:
          '00000001f757bb737f6596503e17cd17b0658ce630cc727c0cca81aec47c9f06',
      txVersion: 3,
      electrumRequiredProtocol: 1.4,
      electrumServers: [
        'wss://testnet-electrum.peercoinexplorer.net:50009',
        'wss://allingas.peercoinexplorer.net:50009',
      ],
      marismaServers: [
        ('test-marisma.ppc.lol', 2096),
      ],
    ), */
  };

  static Map<String, Coin> get availableCoins {
    return _availableCoinList;
  }

  static Coin getSpecificCoin(String identifier) {
    final coin = identifier.split('_').first;
    if (_availableCoinList.containsKey(coin)) {
      return _availableCoinList[coin]!;
    } else {
      throw Exception('Coin not found');
    }
  }

  static int getDecimalProduct({
    required String identifier,
  }) {
    return pow(
      10,
      getSpecificCoin(identifier).fractions,
    ).toInt();
  }
}
