{{ config(
        schema='prices_base',
        alias = 'tokens',
        materialized='table',
        file_format = 'delta',
        tags=['static']
        )
}}
SELECT
    token_id
    , blockchain
    , symbol
    , contract_address
    , decimals
FROM
(
    VALUES
    ('weth-weth','base','WETH',0x4200000000000000000000000000000000000006,18),
    ('axl-axelar','base','AXL',0x23ee2343b892b1bb63503a4fabc840e0e2c6810f,6),
    ('bald-bald','base','BALD',0x27d2decb4bfc9c76f0309b8e88dec3a601fe25a8,18),
    ('usdbc-usd-base-coin','base','USDbC',0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca,6),
    ('axlusdc-axelar-wrapped-usdc','base','axlUSDC',0xeb466342c4d449bc9f53a865d5cb90586f405215,6),
    ('dai-dai','base','DAI',0x50c5725949a6f0c72e6c4a641f24049a917db0cb,18),
    ('cbeth-coinbase-wrapped-staked-eth','base','cbETH',0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22,18),
    ('mim-magic-internet-money','base','MIM',0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d,18),
    ('axlusdt-axelar-usd-tether','base','axlUSDT',0x7f5373ae26c3e8ffc4c77b7255df7ec1a9af52a6,6),
    ('boost-perpboost','base','BOOST',0x71e8f538f47397cd9a544041555cafc7a0ce9ae3,18),
    ('based-basedmarkets','base','BASED',0xba5e6fa2f33f3955f0cef50c63dcc84861eab663,18),
    ('usdc-usd-coin', 'base', 'USDC', 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913, 6),
    ('wsteth-wrapped-liquid-staked-ether-20', 'base', 'wstETH',0xc1CBa3fCea344f92D9239c08C0568f6F2F0ee452,18),
    ('aero-aerodrome-finance', 'base', 'AERO', 0x940181a94A35A4569E4529A3CDfB74e38FD98631, 18),
    ('toshi-toshi', 'base', 'TOSHI', 0xac1bd2486aaf3b5c0fc3fd868558b082a531b2b4, 18),
    ('degen-degen-base', 'base', 'DEGEN', 0x4ed4e862860bed51a9570b96d89af5e1b0efefed, 18),
    ('doginme-doginme', 'base', 'DOGINME', 0x6921B130D297cc43754afba22e5EAc0FBf8Db75b, 18),
    ('prime-echelon-prime', 'base', 'PRIME', 0xfa980ced6895ac314e7de34ef1bfae90a5add21b, 18),
    ('rsr-reserve-rights', 'base', 'RSR', 0xab36452dbac151be02b16ca17d8919826072f64a, 18),
    ('sdex-smardex', 'base', 'SDEX', 0xfd4330b0312fdeec6d4225075b82e00493ff2e3f, 18),
    ('tbtc-tbtc', 'base', 'TBTC', 0x236aa50979d5f3de3bd1eeb40e81137f22ab794b, 18),
    ('mbs-monkeyleague', 'base', 'MBS', 0x8Fbd0648971d56f1f2c35Fa075Ff5Bc75fb0e39D, 18),
    ('isk-iskra-token', 'base', 'ISK', 0x17d2628d30f8e9e966c9ba831c9b9b01ea8ea75c, 18),
    ('vela-vela-token', 'base', 'VELA', 0x5a76a56ad937335168b30df3aa1327277421c6ae, 18),
    ('tower-tower', 'base', 'TOWER', 0xf7C1CEfCf7E1dd8161e00099facD3E1Db9e528ee, 18),
    ('frame-frametoken', 'base', 'FRAME', 0x91F45aa2BdE7393e0AF1CC674FFE75d746b93567, 18),
    ('omni-omnicat', 'base', 'OMNI', 0xc48e605c7b722a57277e087a6170b9e227e5ac0a, 18),
    ('bsx-basex', 'base', 'BSX', 0xd5046b976188eb40f6de40fb527f89c05b323385, 18),
    ('fxdx-fxdx-exchange', 'base', 'FXDX', 0x30b593f8c3ab37615359b4e0e6df2e06d55bb55d, 18),
    ('ai-any-inu', 'base', 'AI', 0x2598c30330d5771ae9f983979209486ae26de875, 18),
    ('bets-betswirl', 'base', 'BETS', 0x94025780a1aB58868D9B2dBBB775f44b32e8E6e5, 18),
    ('swprs-maidsweepers', 'base', 'SWPRS', 0xa4AF354d466E8A68090DD9EB2CB7caF162f4c8c2, 18),
    ('myst-mystcl', 'base', 'MYST', 0xDC46c1e93B71fF9209A0F8076a9951569DC35855, 18),
    ('o404-omni404', 'base', 'O404', 0xB5C457dDB4cE3312a6C5a2b056a1652bd542a208, 18),
    ('squid-squid-game', 'base', 'SQUID', 0x430c67ed118f0637ffe74c98e9b90919c93b7233, 18),
    ('seam-seamless', 'base', 'SEAM', 0x1C7a460413dD4e964f96D8dFC56E7223cE88CD85, 18),
    ('usdm-mountain-protocol-usd', 'base', 'USDM', 0x59d9356e565ab3a36dd77763fc0d87feaf85508c, 18),
    ('xid-xidoltech', 'base', 'XID', 0x8d8d99dfa6814f694a7edecc18849684fbd3b645, 18),
    ('far-farlaunch', 'base', 'FAR', 0x93e6407554B2F02640aB806cD57bd83e848Ec65d, 18),
    ('troves-troves', 'base', 'TROVES', 0x67ac031540320886f2706f3e8e680919d7f547a1, 18),
    ('fren-pet-fren-pet', 'base', 'FREN PET', 0xFF0C532FDB8Cd566Ae169C1CB157ff2Bdc83E105, 18),
    ('bex-basexchange', 'base', 'BEX', 0x1b5d3a85ef27a213c73c610352a0912fd7031637, 18),
    ('dce-ducky-city-earn', 'base', 'DCE', 0x3C3Aa127e6Ee3d2F2e432d0184dD36f2D2076b52, 18),
    ('gecko-gecko-base', 'base', 'GECKO', 0xeE9E3123dbb3AC5e75C65A1fC4617B2aCC082d85, 18),
    ('sofi-rai-finance', 'base', 'SOFI', 0x703d57164ca270b0b330a87fd159cfef1490c0a5, 18),
    ('dai-overnight-dai', 'base', 'DAI+', 0x65a2508C429a6078a7BC2f7dF81aB575BD9D9275, 18),
    ('rats-ratsbase', 'base', 'RATS', 0x06c4c7f8011fbfb6a9654ee4142532f9bb3c52b8, 9),
    ('gmr1-gamer', 'base', 'GMR', 0xa617c0c739845b2941bd8edd05c9f993ecc97c18, 18),
    ('usd-plus-overnight', 'base', 'USD+', 0xb79dd08ea68a908a97220c76d19a6aa9cbde4376,18),
    ('bswap-baseswap', 'base', 'BSWAP', 0x78a087d713be963bf307b18f2ff8122ef9a63ae9,18),
    ('unidx-unidex', 'base', 'UNIDX', 0x6B4712AE9797C199edd44F897cA09BC57628a1CF, 18),
    ('brett-brett-base', 'base', 'BRETT', 0x532f27101965dd16442E59d40670FaF5eBB142E4, 18),
    ('reth-rocket-pool-eth', 'base', 'RETH', 0xb6fe221fe9eef5aba221c348ba20a1bf5e73624c, 18),
    ('bal-balancer', 'base', 'BAL', 0x4158734d47fc9692176b5085e0f52ee0da5d47f1, 18),
    ('bonk-bonk-on-base', 'base', 'BONK', 0x72499bddb67f4ca150e1f522ca82c87bc9fb18c8, 18),
    ('bento-bento', 'base', 'BENTO', 0x9de16c805a3227b9b92e39a446f9d56cf59fe640, 18),
    ('pepe-pepe-0x69-on-base', 'base', 'PEPE', 0x698dc45e4f10966f6d1d98e3bfd7071d8144c233, 9),
    ('beni-beni', 'base', 'BENI', 0xde7a416ac821c77478340eebaa21b68297025ef3, 18),
    ('bunny-based-bunny', 'base', 'BUNNY', 0x75570e1189ffc1d63b3417cdf0889f87cd3e9bd1, 18),
    ('britt-britt', 'base', 'BRITT', 0x3b1228c3ede7e0898d57054cd9b8f812d24315c1, 9),
    ('bshib2-based-shiba-inu', 'base', 'BSHIB', 0xfea9dcdc9e23a9068bf557ad5b186675c61d33ea, 18),
    ('mfercoin-mfercoin', 'base', 'mfercoin', 0xe3086852a4b125803c815a158249ae468a3254ca, 18),
    ('bsb-based-street-bets', 'base', 'BSB', 0x8a24d7260cd02d3dfd8eefb66bc17ad4b17d494c, 18),
    ('base-base-exchange-token', 'base', 'BASE', 0xd07379a755a8f11b57610154861d694b2a0f615a, 18),
    ('ccc-cute-cat-token', 'base', 'CCC', 0x1ccb4b14a11e0f2994a7ecbbd4cc69632f4c7c76, 18),
    ('fungi-fungi', 'base', 'FUNGI', 0x7d9ce55d54ff3feddb611fc63ff63ec01f26d15f, 9),
    ('dog-the-doge-nft', 'base', 'DOG', 0xafb89a09d82fbde58f18ac6437b3fc81724e4df6, 18),
    ('higher-higher', 'base', 'HIGHER', 0x0578d8a44db98b23bf096a382e016e29a5ce0ffe, 18),
    --('stg-stargate-finance', 'base', 'STG', 0xe3b53af74a4bf62ae5511055290838050bf764df, 18), -- token_id not found in API
    ('keycat-keyboard-cat-base', 'base', 'KEYCAT', 0x9a26f5433671751c3276a065f57e5a02d2817973, 18),
    ('briun-briun-armstrung', 'base', 'BRIUN', 0x8c81b4c816d66d36c4bf348bdec01dbcbc70e987, 18),
    ('benji-basenji', 'base', 'BENJI', 0xbc45647ea894030a4e9801ec03479739fa2485f0, 18),
    ('roost-roost', 'base', 'ROOST', 0xe1abd004250ac8d1f199421d647e01d094faa180, 18),
    ('tybg-base-god', 'base', 'TYBG', 0x0d97f261b1e88845184f678e2d1e7a98d9fd38de, 18),
    ('circle-burning-circle', 'base', 'CIRCLE', 0x5babfc2f240bc5de90eb7e19d789412db1dec402, 18),
    ('poncho-poncho', 'base', 'PONCHO', 0xc2fe011c3885277c7f0e7ffd45ff90cadc8ecd12, 18),
    ('babybrett-baby-brett', 'base', 'BABYBRETT', 0x52de0096836bada37c83d6648e0615c40f2d9e51, 18),
    ('coinye-coinye-west', 'base', 'COINYE', 0x0028e1e60167b48a938b785aa5292917e7eaca8b, 18),
    ('trump-maga', 'base', 'TRUMP', 0x57f5fbd3de65dfc0bd3630f732969e5fb97e6d37, 9),
    ('weeth-wrapped-eeth', 'base', 'WEETH', 0x04c0599ae5a44757c0af6f9ec3b93da8976c150a, 18),
    ('pola-pola', 'base', 'POLA', 0x76e7447bafa3f0acafc9692629b1d1bc937ca15d, 18),
    ('jogeco-jogeco-dog', 'base', 'JOGECO', 0x92fb1b7d9730b2f1bd4e2e91368c1eb6fdd2a009, 9),
    ('boshi-boshi', 'base', 'BOSHI', 0x33ad778e6c76237d843c52d7cafc972bb7cf8729, 18),
    ('doomer-doomer-on-base-cto', 'base', 'DOOMER', 0xd3741ac9b3f280b0819191e4b30be4ecd990771e, 8),
    ('rock-just-a-black-rock-on-base', 'base', 'ROCK', 0xece7b98bd817ee5b1f2f536daf34d0b6af8bb542, 18),
    ('bloom-bloomer', 'base', 'BLOOM', 0xafb5d4d474693e68df500c9c682e6a2841f9661a, 18),
    ('caw1-crow-with-knife', 'base', 'CAW', 0xdfbea88c4842d30c26669602888d746d30f9d60d, 18),
    ('keren-keren', 'base', 'KEREN', 0x174e33ef2effa0a4893d97dda5db4044cc7993a3, 18),
    ('mog-mog-coin', 'base', 'MOG', 0x2da56acb9ea78330f947bd57c54119debda7af71, 18),
    ('carlo-carlo', 'base', 'CARLO', 0x38d513ec43dda20f323f26c7bef74c5cf80b6477, 18),
    ('ski-ski-mask-dog', 'base', 'SKI', 0x768be13e1680b5ebe0024c42c896e3db59ec0149, 9),
    ('kurbi-kurbi', 'base', 'KURBI', 0x653a143b8d15c565c6623d1f168cfbec1056d872, 9),
    ('bord-base-lord', 'base', 'BORD', 0x160452f95612699d1a561a70eeeeede67c6812af, 18),
    ('rdnt-radiant-capital','base','RDNT',0xd722e55c1d9d9fa0021a5215cbb904b92b3dc5d4,18),
    ('well-moonwell', 'base', 'WELL', 0xff8adec2221f9f4d8dfbafa6b9a297d17603493d, 18),
    ('mochi3-mochi', 'base', 'MOCHI', 0xf6e932ca12afa26665dc4dde7e27be02a7c02e50, 18),
    ('bet-betbase', 'base', 'BET', 0x80F6BcedD3d4fa1035285affA30e38f464Db3895, 18),
    ('mav-maverick-token','base','MAV',0x64b88c73A5DfA78D1713fE1b4c69a22d7E0faAa7,18),
    ('aura-aura-finance','base','AURA',0x1509706a6c66ca549ff0cb464de88231ddbe213b, 18),
    ('ezeth-renzo-restaked-eth', 'base', 'ezETH', 0x2416092f143378750bb29b79ed961ab195cceea5, 18),
    ('zro-layerzero', 'base', 'ZRO', 0x6985884c4392d348587b19cb9eaaf157f13271cd, 18),
    ('btcb-bitcoin-on-base','base','BTCB',0x0c41f1fc9022feb69af6dc666abfe73c9ffda7ce, 18),
    ('void-the-void','base','VOID',0x21eceaf3bf88ef0797e3927d855ca5bb569a47fc, 18),
    ('fpepe-based-father-pepe','base','FPEPE',0x81f91fe59ee415735d59bd5be5cca91a0ea4fa69, 8),
    ('usa-based-usa','base','USA',0xb56d0839998fd79efcd15c27cf966250aa58d6d3, 18),
    ('boomer-boomer','base','BOOMER',0xcde172dc5ffc46d228838446c57c1227e0b82049, 18),
    ('boe-boe','base','BOE',0xff62ddfa80e513114c3a0bf4d6ffff1c1d17aadf, 18),
    ('9mm-shigure-ui-on-base','base','9mm',0x340c070260520ae477b88caa085a33531897145b, 18),
    ('wolf13-landwolf','base','WOLF',0x88faea256f789f8dd50de54f9c807eef24f71b16, 18),
    ('normus-normus','base','NORMUS',0xba5ede8d98ab88cea9f0d69918dde28dc23c2553, 18),
    ('balt-brett39s-cat','base','BALT',0xc9b6ef062fab19d3f1eabc36b1f2e852af1acd18, 18),
    ('summer-onchain-summer','base','SUMMER',0xf7ccb8a6e3400eb8eb0c47619134f7516e025215, 8),
    --('apetardio-apetardio','base','APETARDIO',0xe161be4a74ab8fa8706a2d03e67c02318d0a0ad6, 18),  --token inactive
    ('crash-crash-on-base','base','CRASH',0x4dd9077269dd08899f2a9e73507125962b5bc87f, 18),
    ('babycrash-babycrash','base','BABYCRASH',0x74ff3cbf86f95fea386f79633d7bc4460d415f34, 18),
    ('workie-workie','base','$WORKIE',0x7480527815ccae421400da01e052b120cc4255e9, 18),
    --('chrett-chinese-brett','base','CHRETT',0xf8a99f2bf2ce5bb6ce4aafcf070d8723bc904aa2, 18), --token inactive
    ('miggles-mister-miggles','base','MIGGLES',0xb1a03eda10342529bbf8eb700a06c60441fef25d, 18),
    ('brish-brish','base','BRISH',0x37f24b26bcefbfac7f261b97f8036da98f81a299, 18),
    ('gme5-gme-base','base','GME',0xbeb0fd48c2ba0f1aacad2814605f09e08a96b94e, 9),
    ('brrr-bucci','base','BRRR',0x1e0bb24ed6c806c01ef2f880a4b91adb90099ea7, 18),
    ('bps-base-pro-shops','base','BPS',0xda761a290e01c69325d12d82ac402e5a73d62e81, 18),
    ('timi-this-is-my-iguana','base','TIMI',0x9beec80e62aa257ced8b0edd8692f79ee8783777, 18),
    ('french-french-on-base','base','FRENCH',0x013b6451e2b2131052d3473593bd786df5143faf, 18),
    ('mrsmiggles-mrs-miggles','base','MRSMIGGLES',0x31b28012f61fc3600e1c076bafc9fd997fb2da90, 18),
    ('king-king-of-memes','base','KING',0x420b0fa3de2efcf2b2fd04152eb1df36a09717cd, 18),
    ('trump-maga','base','TRUMP',0x2e1d332893dc16124194e598a29866d2d5e8786b, 18),
    ('donuts-the-simpsons','base','DONUTS',0xcc0733b7ba63b446624002441c4816d7fec8f4e0, 18),
    ('bolt-bolt-on-base','base','BOLT',0x7cf7132ede0ca592a236b6198a681bb7b42dd5ae, 18),
    ('berf-berf','base','BERF',0xfc5462143a3178cf044e97c491f6bcb5e38f173e, 18),
    ('boda-based-yoda','base','BODA',0x6bd81aad9b25ad1e0b99c47ed01b34eacf4b8be7, 18),
    ('loa-law-of-attraction','base','LOA',0x8d3419b9a18651f3926a205ee0b1acea1e7192de, 18),
    --('brett4-brett-20','base','BRETT',0x1a475d06d967aeb686c98de80d079d72097aeacf, 9), --token inactive
    ('bchb-bitcoin-cash-on-base','base','BCHB',0x1791b55e734df69b4906a4178a83dbe63c4f8421, 18),
    ('brogg-brett39s-dog','base','BROGG',0xc36f19bccd51e3f1163eff07b5edf9d2850acec4, 18),
    --('maba-make-america-based-again','base','MABA',0xd9ea93a38d1771c870128f9134d4622d331c04c8, 18), --token inactive
    ('peepo1-peepo','base','PEEPO',0x9409c81d5bf8fd6e651f08e1c81c8b175a1e64f7, 18),
    ('polluk-jasse-polluk','base','POLLUK',0x22222bd682745cf032006394750739684e45a5f8, 18),
    ('boys-boysclubbase','base','$BOYS',0x4d58608eff50b691a3b76189af2a7a123df1e9ba, 9),
    ('aerobud-aerobud','base','AEROBUD',0xfad8cb754230dbfd249db0e8eccb5142dd675a0d, 18),
    --('normie1-normie','base','NORMIE',0x7f12d13b34f5f4f0a9449c16bcd42f0da47af200, 9), --token inactive
    ('ethb-ethereum-on-base','base','ETHB',0x8d285df5be4570097e84241090fca8034ab18547, 18),
    ('pepe-pepe-on-base','base','PEPE',0x80f45eacf6537498ecc660e4e4a2d2f99e195cf4, 18),
    ('bum-willybumbum','base','BUM',0x4b8ec286fd218adb992e3df1a8d9fcf6de38d583, 18),
    ('nippy-cat-on-catnip','base','NIPPY',0x7a31512fb17be839b24276c211e941932c9d20e1, 18),
    ('roxy-roxy-frog','base','ROXY',0x10a7a84c91988138f8dbbc82a23b02c8639e2552, 18),
    ('pov-degen-pov','base','POV',0x4c96a67b0577358894407af7bc3158fc1dffbeb5, 18),
    ('chomp-chompcoin','base','CHOMP',0xebff2db643cf955247339c8c6bcd8406308ca437, 18),
    ('birddog-bird-dog-on-base','base','BIRDDOG',0x92af6f53febd6b4c6f5293840b6076a1b82c4bc2, 18),
    ('albert-albert-the-alien','base','ALBERT',0x0c067fc190cde145b0c537765a78d4e19873a5cc, 18),
    ('tn100x-tn100x','base','TN100X',0x5b5dee44552546ecea05edea01dcd7be7aa6144a, 18),
    ('rdat-rdatadao','base','RDAT',0x4498cd8ba045e00673402353f5a4347562707e7d, 18),
    ('usdz-anzen-usdz', 'base', 'USDZ',0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938, 18)
) as temp (token_id, blockchain, symbol, contract_address, decimals)
