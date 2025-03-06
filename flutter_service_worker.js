'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "f2a2663bf985b9775172e633489fe697",
"/": "f2a2663bf985b9775172e633489fe697",
"main.dart.js": "5e3665651fe27ee38aa51f771ee2943d",
"version.json": "4de78f671f9de8323095f5c7b027865a",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/index.html": "83b554cf3fb7e6f302866616a96d09f8",
"web/main.dart.js": "8cff906157f7a3dcb67a2645c3736ca1",
"web/version.json": "4de78f671f9de8323095f5c7b027865a",
"web/assets/NOTICES": "b22abac343d0222cb65e9cdcee905a61",
"web/assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"web/assets/AssetManifest.bin.json": "a1e227c993914528395fa782d2f452d2",
"web/assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"web/assets/AssetManifest.json": "f70d9dd1bf216788ab12df360bb6a158",
"web/assets/assets/text.json": "07df69251d5e7c27b88d1e2530fecdae",
"web/assets/assets/images/picture1.png": "e82b5b209299896c391002ef3e2157cd",
"web/assets/assets/images/itch.svg": "d756e0c414844186c789b1ca66a658b3",
"web/assets/assets/images/picture.jpg": "df38258cba400df4671f1d769983c807",
"web/assets/assets/images/youtube.svg": "fbae9fa0bf72b79e967ca4537eaf6795",
"web/assets/assets/images/github.svg": "8dc66f6f6f62dcd1661b79ac93910a05",
"web/assets/fonts/MaterialIcons-Regular.otf": "307d513c2d9de75edc63e49bed05043c",
"web/assets/AssetManifest.bin": "a3b0528a919e4c03d70da7ae508aba10",
"web/flutter_bootstrap.js": "f855fd0252f6d4dc6b92323fa85c4011",
"web/manifest.json": "c9724d479dc7704d816c23ac35a4e9cb",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"web/canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"web/canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"web/canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"web/canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"web/canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"web/canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"web/canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"web/canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"web/canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"web/canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"web/canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"web/flutter.js": "76f08d47ff9f5715220992f993002504",
".git/COMMIT_EDITMSG": "551622f573978e5ed157f964b2fa93bb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/FETCH_HEAD": "7e75696d052c2a4ee7858ce555b80931",
".git/config": "74c093dd9aa9353c89bbf73a29c2abb9",
".git/ORIG_HEAD": "31bf89c08a157f43f23b6de16be8eac2",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/index": "386daa3f9f68cb8ff7b9217d8ac4842e",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/logs/HEAD": "8b250993513b8bbe949657f2039b19a6",
".git/logs/refs/heads/main": "d98e7b0dae37741eb0e9c62ff7864b32",
".git/logs/refs/remotes/origin/main": "05b8d08d050dae970d5a8547ae08f7ff",
".git/refs/heads/main": "a133a1e927bf424657ea3bc3e35763ae",
".git/refs/remotes/origin/main": "a133a1e927bf424657ea3bc3e35763ae",
".git/objects/1f/c4d58f0598057a1d7571c7ab4da794f32c52fd": "e3ac34a0e6de4d7af0c2f5b329a68201",
".git/objects/87/d4b8290aa99429311bd3dbed821a880e25ce80": "529fbf851344817f61b5213675fbb8d1",
".git/objects/87/fd05b1e8020030111863c2021edd3feeaaa494": "e33e3ea8e30639c64a5ff0d54f099f32",
".git/objects/97/e56632674bdb15be86f8fb6ce567dae682fc1b": "47d584a098b5a74623ed2708d5fc02e7",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/b7/da216c89009ceb5fa7f1b4ccb9e5ea584fa5b6": "87b0c4cbc0d8b799df3a50cce3dd305e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/08/e100945a76b98ba8509209c27c99744a8e76f3": "21250dca150d3285d31e45d85342c3a8",
".git/objects/55/c86bd92911071a66d7d56c17569660da9158ef": "199fa7196e49866a89de4f122e362237",
".git/objects/fe/74b0e3c1c3efdff54ca41b8d67a36ed90bf59e": "d0407182f7b6dc12d6711c138f6e2454",
".git/objects/90/9d5f9780a7b5a1b88928a1945ecfc6e2b385f8": "9322da4f7f2c2c324bbd120997ca79c2",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/9f/b8f7b025edf6860112778772656e863180c246": "c1ad4c388a8f681713b6a2e455dfd818",
".git/objects/b6/8a2f6a6362ba2a387a8d5abb7fd364b7d299a1": "10b1750f4f0bf50ee256fcc2bbc34410",
".git/objects/b6/187f4924de1a857c5571b7fe06e2e5ebb08664": "646c3fdd6ed8a3cca1908ed31f6494d1",
".git/objects/b6/854b77a2e06cda3077bc57c29971cf9302a04a": "c8eb36854f1b5b5b28db638ce7f05b2e",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/c7/7663172ca915a99a594ca17d06f527db05657d": "6335b074b18eb4ebe51f3a2c609a6ecc",
".git/objects/f1/f2e0812989e1ccef160ea819922d23846ece4e": "b24215a262d64ad2ce360d37f6113a44",
".git/objects/cb/619890d92f7474b8232c2e779f1ee276216178": "5529da0cbfbe70db6c6f288f56932c08",
".git/objects/53/8ec5bf2a9a5724899daf728577cd0b8beaae90": "91a402a18f3471147ce264a747cc188a",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e0/89479f5c7324855b6c782e55f24ea2b20fc931": "7614650b76d15e1f96c7f058e128ec39",
".git/objects/3b/b0860a0981211a1ab11fced3e6dad7e9bc1834": "3f00fdcdb1bb283f5ce8fd548f00af7b",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/95/79dad0019f915c2416b20ed037b22c8f1b0ed5": "29494b3b7456e963948eadae4c1a62f3",
".git/objects/92/c16b8ded3f9dd619e4bde82dd9738e659a0b25": "af37af31e15a2e96745608d55f4751ea",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/2ef1a0033dab7d309b875e9e83642303866125": "5445b26e4b574f2a5c6b4873f30bebfe",
".git/objects/43/489c48641fafbce64cdc5462a751a98e7b1025": "471c4874cdda53d7104767ff1faa315f",
".git/objects/43/3a099f3f7375575a4cdc1d127e0fcc6bf1158e": "6a5b9ef2d33141135a6cba754401f87a",
".git/objects/c5/d7b8847df752432b83d220b97531f0e2cd5fba": "1c4022fd06aaa0e631803c5109174c00",
".git/objects/6d/2d1ffd97e23a3d6a486747fc4e8cf7a8b12b51": "d4835ebd2bf4186111be0c3a9b2975a6",
".git/objects/1e/4ad6c12065d4641b68a4f3d32fd49a1daa8294": "a526f42c80e0a974aeb4f3c2b567034a",
".git/objects/48/e854b1fbf5d0c593fab252441862329ea89f59": "eb6c4ee5f12e6488833ebd7c5d4cb934",
".git/objects/78/2c2660760c440fc32c551e3eb952d0abd0a79d": "827cee06520f171902bf613154bea30f",
".git/objects/8a/1b84eff81d255665a16b2d5552a251e713d0ea": "8da8820ace0ff4e96a6986eac62fb1bc",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/77/4a09a924c4375d75109b31331e5dbfe8e14260": "50764ea0cd033918e9b0b483e21c37ea",
".git/objects/63/3697e310a2a9b7ab78d0d7f2ce98e18a1cf9f3": "86432f3c7f51107c49c15af322b35de6",
".git/objects/ec/6d86500fe0fcf596e97bcf0c3801d11ef84fa3": "69c17b9f3f2efcbcd7212554f5cd6a9b",
".git/objects/5f/07d3377e65b19e168c7076a2e503816c7eeb73": "363f9b093a2447bf926dd15606f4d334",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/f4/41d6aff39588c04be57185e593d4fa8de0e218": "bbe2225a46a3d5ee0ef151b171289d0e",
".git/objects/47/3901158157f8bed6da43a7b69fe6cac83dbb42": "05a8ff513e70a4e3e51f4b84c62309c1",
".git/objects/27/e8bce3695bcd9c49d8510ac698e40a2bcf18d0": "eb10be3e8340ee2cca56dd8467a6b6f0",
".git/objects/27/dd1a3967f53517966f357458b5ec25b1f7ce3f": "5195f942feb1ee28608fc082af1a5e53",
".git/objects/04/92366a2be42c6f0372a64b8c6f4f6b2cb660f7": "c83e5631cc2c6476bee434004362b723",
".git/objects/ca/d69d3c6246703b9b3d4740f70ce636f82a3b95": "6cee7f4117f77013d577ba86aaa96508",
".git/objects/06/5a156ad876ae75d08bca0aabc8c1e01f285abb": "1338ac20d12542d14345378e2fe2be26",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/4d/9c7e3d4e14d465ebc35ab0cb54cdc6ba66d585": "5117e5f8e48a7aef9d6cce2c3fea4973",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/e2/1f84ef36250d8df7d8b70da9a1b8ca6c9a775c": "1413372decbb57d430017c556faddd88",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/ab/039e1dc814188a9535dfd2de1e3b19e717a1c5": "19286b60166bb06903adc2aaf4decab9",
".git/objects/cc/6ec0c5843bb1d4c65c5d454443782debddad50": "c4bbbab6a595b2962b1c49949f44ecc4",
".git/objects/cc/67541dec37d11ec25998acd1615fffd1bcd017": "4a6f0bbe9c3e2d4f3d6e7c02b98a90bf",
".git/objects/ea/ac01dae7305d6d7e0161a76d582fd38f033fb8": "6f88dcebed54cc50d51177ab875db7d6",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/a2/ad913939c134c26ed4659d1ea2f8900bee2e07": "b1a4def713a79c2d2e9b826128ae0c1c",
".git/objects/f5/bb1963ee4d0c6b95960e7390f81de9bcbb64f6": "be8b24356242b69427ee40354141f8aa",
".git/objects/b4/1acb71b2f9084d199f9c2605ba44d2a1650b7d": "23fb704fc0227306085c4076ea729b9e",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/c1/4e90e88642fa0a0a0243ffa6c57fd3c28e9040": "712e775106028f085702fec50b5f3618",
".git/objects/c8/71a62223790ad3a336aa988541f6f80f7e3eaa": "c1f63d4405761ce52ce2b9fa3150c7a6",
".git/objects/4b/01013c6e5e93ddbf2f5c5ce6c580f76168171e": "bbc86a1882f34f115aa03da7ed43ac6b",
".git/objects/4b/2cc03c9bf88fccc6706b2de99adf9fc9ff9410": "237b404c2579777d42e094d93b3604e8",
".git/objects/a7/86f8f99bd4fedfee0a6c9ab154986fdf38ebb9": "893b1de1d8f7869fef030f453cc789ba",
".git/objects/c6/e8cf21030e0c255808f9eb0e50017eb6faf236": "05381cc7d6babb145233a1d57cd8857c",
".git/objects/eb/b0c285057c8a70bcad281622600fa44c54470c": "f56df3823770d4343da0393909a33a73",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/59/87683ce52c10541ab2bdfa734aca8a1c53bf27": "31f362ce019d3f1fcbdb1a3ec975b387",
".git/objects/20/49a89906ed86bee92d1eea88ca538191483400": "d63531d83a3a9042ca91312c512c51b0",
".git/objects/b3/a60490dd6fe371e2be9fc6735d5fb4fc1b92ff": "3b89f5b54ecbeef23f3bb132591ca1f5",
".git/objects/3f/9491e657ef23c6c1e3d444144b0d27989b7634": "fb535c07809d146d1b0dd91df8787d51",
".git/objects/1d/468b85698a60041b450286f31b3264b3bbd6f7": "5c8c497111befde32ac151f14cf92f85",
".git/objects/99/31f5cd8ddcd57ea5be2075f33c140663f2af4b": "6fa84dc9fb1f92887d97532a9bf952e1",
".git/objects/1a/ffd35fee61ae3196763fbbbf75b2b5755b85bf": "17f862ad8c0358c1bd146c09dbf6d114",
".git/objects/76/2999653bb047c56dfb6183713ce7e603093c53": "d65e1b8b5f62a2be52cd0d2a4c375827",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/23/06523b5647dcbe298b301a562d2d456965ad07": "470403e5e4599d6e7db1412267b96f27",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/ee/8b72f51015219cecd5478a024d9511be2fc18d": "25d1fb7a0403804df9cd7dac17f434c5",
".git/objects/72/3d030bc89a4250e63d16b082affe1998618c3f": "e4299c419434fc51f64a5266659918fa",
".git/objects/8f/c8be62f202c40e7d3e2e16242fb065cfc4e1a7": "6fda1b80da67a8d96186cf8ab8b24087",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/50/7beb59f82f1bcbaffbb952db31cde6a49d62ee": "ee97ec251de613d216c2df40d694952a",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/NOTICES": "a7fe350cfa315f8d043225b9a73857ae",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "8d09cf53952709ccc7216dfa9e98c65c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "7d7d1d4a02978b872cfadefae1fa6b63",
"assets/assets/text.json": "07df69251d5e7c27b88d1e2530fecdae",
"assets/assets/images/picture1.png": "e82b5b209299896c391002ef3e2157cd",
"assets/assets/images/itch.svg": "d756e0c414844186c789b1ca66a658b3",
"assets/assets/images/youtube.svg": "fbae9fa0bf72b79e967ca4537eaf6795",
"assets/assets/images/github.svg": "8dc66f6f6f62dcd1661b79ac93910a05",
"assets/fonts/MaterialIcons-Regular.otf": "762a20649d473cef3acb061bd32ef94f",
"assets/AssetManifest.bin": "52e06a5b4304a0faa3a51d92edd87617",
"README.md": "0a97c4447410d97dac65c1b8fd56910c",
"flutter_bootstrap.js": "489c23333d226aabed9370da76425ab2",
"manifest.json": "c9724d479dc7704d816c23ac35a4e9cb",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"flutter.js": "76f08d47ff9f5715220992f993002504"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
