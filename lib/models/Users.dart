import 'package:equatable/equatable.dart';

class User extends Equatable {
final int id;
final String name;
final int age;
final List<String> imageUrls;
final List<String> interests;
final String bio;
final String jobTitle;

const User(this.id, this.name, this.age, this.imageUrls, this.bio, this.jobTitle, this.interests);

  @override
  List<Object?> get props =>  [
    id,
    name,
    age,
    imageUrls,
    bio,
    jobTitle,
    interests
  ];

  static List<User> users = [
    User(
        0,
        'Hassan',
        24,
        [
      'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p526x296/269938137_3056075687993259_5819736042281903073_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=58ytUiZazc0AX8QgGhW&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_w9ffQOkfEUd21jn7-W83_TJWq789uWC00rR3o-8fzEA&oe=61EC7623',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p526x296/270215567_3055406961393465_6072198678768410667_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=Xfgip3Dr8bcAX_vNlt6&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-zxnTml6srnSDvK6sJky2kbF5njCJhrkQo5JWBzMO8Dg&oe=61EBD09A',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/189089956_2902626596671503_862161373460251359_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=9svhqNcAzrEAX-7gmY3&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-40YsHToSXyOkbTzF46nRyv0oyrRDH_CY7ehxjBpRiRA&oe=620B433F',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/35430772_2077867765814061_4016876878072643584_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_eui2=AeHM2GOphaJ0-fu9hHqeKv2lk1cXdePB0peTVxd148HSl8QFPfujq-Fc0ZNDpruh87hI77LP7hywV7Z_aDM2U034&_nc_ohc=6w7qmaIFP6cAX9cqbam&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9Q_0Yc6EkXoNBFmzHFY5PpWoX6jwddCpD5MtMyqe4qQg&oe=620EDFDE',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/s960x960/83719218_2505638093037024_2712968254896209920_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=84a396&_nc_eui2=AeG0_HcV1vIvvbbnTBeXGATeZjBklAnqRkNmMGSUCepGQ544Z0J7IH6R6j_sj8v7Z8UhbLECPkAtoWPII8UpVl2a&_nc_ohc=kLhggE8yYyMAX9OQM3G&_nc_oc=AQlxFWP0ljzFjc7qece2Yf5D2Hg-YxE6vDJGalTjtDCu6WadzzNp-C8c8K1jayP8ZZE&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-q1WPq8HUIMetim9zzJVWEwRTeaUCAoIViQukDFxjHaQ&oe=620C03B1',
        ],
        'Love Programming and love to listen Music',
        'Software Engineer',
        [
          'Developing',
          'Gaming',
          'Music',
          'Robotics',
        ],
    ),
    User(
        1,
        'Zohaib',
        27,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-1/p200x200/265717570_4698530040215239_167902073170669759_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_ohc=TeVuMMfpfD0AX-ND3yA&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-hF_EOrQQsX631FTbvYMQAbadmA9sMvzXSLJf6hNen9A&oe=61EADC6C',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/193306910_4106849312716651_5750956100388623682_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=B2dpsDLcPK4AX_HpseJ&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8ntMjx6WeZqAhsyh--J3b8foIGPiCF-nr5Dwm9sQ899A&oe=620B4277',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/132389916_3663484507053136_4571922956767140662_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=uOHi-yltvtEAX_TU6f2&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8nYXH4hTpCUCryieDI8y1GEGRQTRZo1v4C0Pg-jLQ3hQ&oe=620C2621',
       'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/131931223_3655487227852864_8751809857371126715_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH03P9gd0rkRsLyAYPN85W6C2G4BXSWaIQLYbgFdJZohAT3M9W3BWpH4D0nOUZzD4HTqYHTm-5XKsks4dCIDhWK&_nc_ohc=CEJqY_xbkdIAX_Xfzz3&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-mcrb25oecJ_nI1yhpK3f5gtUOOf9HA68dbR_ch3j49w&oe=620BA270',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/49464979_2105691199499149_3085294094998568960_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHwjz1781daq8bIkIs_CU9MyqayCnw6jhTKprIKfDqOFDYWlvekznbLqOsFTBTSMrMyLFQN03eIttwsXUkeE4wf&_nc_ohc=SKQ-YhXk2_cAX8m98zJ&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9ejJTZAmx-S4Gr8oC8K5A23oVOmR1hIzgUNHHAGfCv-Q&oe=620BDEC2',
        ],
        'Love making Videos',
        'YouTuber',
      [
        'Film Making',
        'Acting',
        'Rest',
      ],
    ),
    User(
        2,
        'Ali',
        25,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/271654022_2587396534736990_5605736271089604122_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=CgnoAITXvWAAX8V2PJT&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8cc0oWtBn7jLpk3bVnwgrozv4Ykyu9ZkVHfV4eiiRe6Q&oe=61EBD1EA',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/268470522_2566599283483382_1459972634633626919_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=174925&_nc_ohc=aDyqC9A8hVIAX8HqFoU&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_wleVOIu6YW5bn8U6pRSZu7Qqfb_ZLqcygqzAjzDrRlw&oe=61EB07EE',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/264095553_2555492211260756_2992125229547064870_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_ohc=bMyEovx1bqIAX-c34_r&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9asz983Cl7wT0S7cxL8wyU5dQ67va7MyaSyqYvWqmVbw&oe=61ECB8B4',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/56219874_1624276867715633_4787852206676115456_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHQGBBgNK4e5jcj07X5X0R-22ZXfCWZgvzbZld8JZmC_K1tsxJQyRHUZ-6ohFdiP-v0pBuDD6os7z8znwsM153x&_nc_ohc=Kgp_YzBMgCgAX-y0Ahp&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-QBBS8CPlnvLoQ_yWF_MTTFWNw0jGcahNa5ZEa_6ee6A&oe=620BE6AA',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.18169-9/11890969_911664522235162_2813939620157200340_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=cdbe9c&_nc_eui2=AeEad4N9-FlktWlUl_3J5iYDZktq9Mj1O8tmS2r0yPU7y1kws_pU6RrIT_iLGJK4zd0jFhMPVFo3T64rDfpMkpCC&_nc_ohc=QO5Ft64NqPwAX8iGTKa&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_6yBza3baszp_f4OGGMs4nSGmqiVrZ_K5qZzc565d6iw&oe=620DCBA3',
        ],
        'Love being free',
        'Free Agent',
      [
        'Relaxing',
        'Gaming',
        'Music',
        'Party',
      ],
    ),
    User(
        3,
        'Shahbaz',
        26,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/s206x206/266971499_3226344480930375_2593507138838274045_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeECVwvLdH08zb9fgUDk7wTNaS6bVQciDxxpLptVByIPHLzCmPmkNbYliEzds64RQXlIemKX6T8iWaKoUMAQeJd5&_nc_ohc=gBrFH30rv8sAX8er8yP&_nc_oc=AQlNmzWeCg6b4RTsTXwFricgfgdb0Nh-vTMmrSGDCn1ERpZQvRTiBJ0JoYXEhY0Wv0o&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9FjmZ8SjYWp9P2bZ9_Nmc1RoHEt3yoybuFc4mTAL17SA&oe=61EEAE96',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p206x206/269598276_3232546930310130_5429787631792780227_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeHc1-vmsVhjB4PiGG6yOlt6kEn5c-i9fG-QSflz6L18b72stxG6S9pFvB8I48pJkfIU5dwjU1dIjXTulJTJyl1I&_nc_ohc=zZzi4zk38HsAX--EVoR&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8TOQgQ_H5tNkR-QpptEK3ZBAIbXt4bl3PGWjHOKUuiug&oe=61F0033D',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/s206x206/123511574_2914292488802244_4499761074723331369_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeHKvnirjvJlHsojR9M_ak7ZZNAFVxAlElRk0AVXECUSVGwWDMIj2QJZ8GN_WFARvAiy9C6EignqGj0RQcvwWxX7&_nc_ohc=PIA_dddH3RgAX_Zecps&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9knO-_Rqi6N8Xmwcu3N3zZYO3bm46iXXRMiXkgLBmsNA&oe=620FBC40',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/p206x206/117382265_2832887560276071_4802853003312299250_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeHSrvblVGm7dLeaJjcKm2HbNahH1fF-6ec1qEfV8X7p5w7XVvY9Ff6MV2yF-YSnoy3hoQCoqzAkddx6ryeB6CV5&_nc_ohc=ZT3WHK7kM3MAX_960uQ&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_hSLHsW83ygsJ_Fg_DUpoZIkTUuEsEqrO-HJNOAbC9vg&oe=6211D8B7',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/p206x206/79833049_2626293467602149_2511152010854662144_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeEaN05qms6yQZBoBugd8lEBMhKhq0QZcY8yEqGrRBlxjwW9HfsOJuZY-4X9Pstztvh-cxmM8BvXSJ-Gz5SER2QK&_nc_ohc=3cr78AaLb5sAX-XWe-S&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8vi3n-ocjJ2hDUnU0r8uyLOny0Xyx-MER28bE8m13aug&oe=6211C279',
        ],
        'Love being free',
        'Banker',
      [
        'Fashion',
        'Cloths',
        'Girls',
      ],
    ),
    User(
        4,
        'Hamza',
        29,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t31.18172-8/27628711_747321205460849_3982449387026141898_o.jpg?_nc_cat=103&ccb=1-5&_nc_sid=a4a2d7&_nc_eui2=AeE-KA1opoA3Aupj3tWruOuBwVGKUfwA6vrBUYpR_ADq-pYqliAQO4bL-DfkaeKn2oZwQAWoIneE8EKXKS8tHHsQ&_nc_ohc=meji6ime7wYAX_swz9x&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8yRn1OTJKl4_KTVx42QNVenJzvn_XeLmDNeINVRD5ROQ&oe=620EEC75',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.18169-9/15356571_567162953476676_8789593474644654066_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=a4a2d7&_nc_eui2=AeHO1upMw7iVplvneW0phWcXMxgVZo3kf2szGBVmjeR_a6EWrj7E8ls41xOZKwWvdsX-7_Es8egn6OMeEBCdKkUP&_nc_ohc=zQSlWln6aJEAX9QeFDM&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9QTskg8CLQ5UKD9JT_Xuet2uW1DmR0Tzt-FPSQDi_yZA&oe=62109EC3',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/74696638_1146511188875180_2164315526048776192_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=a4a2d7&_nc_eui2=AeFEScpfthSqGxTj34CppcL6dDx78wAI3HV0PHvzAAjcdciAFJnb9lfR1a4MfyUAQCk9LlQCCQBQkFz9DR-NnfGs&_nc_ohc=eqSQMv9BTFoAX_pdAnF&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-w7swVQxFS8EMx3k-dNCjjwffCtsNyMtCd8sZgzLwi1g&oe=620F9292',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/76765501_1146511205541845_5715273754850885632_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=a4a2d7&_nc_eui2=AeEZpvmDP-vMNZtXFx1s7lhQZXxqZuXm0eVlfGpm5ebR5b9UWynyfNqOgajJMLgMCBKRuifdhlY9m4TzmRxtHpzo&_nc_ohc=g_1smG2UPaYAX9uIdnP&_nc_oc=AQmHbwQ6syyCaEjMGe7M5VMgfykssW8BdaBGav_3PK1KgV2D5UJWkgtZbymPqM3qTlQ&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8dYRM3XO7f7z1P7zpu8mPjRAeX6lLUjAb4IDWT9Iwv3g&oe=621128F4',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/73198328_1146511192208513_73312854064758784_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=a4a2d7&_nc_eui2=AeEiXCiWHOOuqB15wnv3YlC6cWYgDaS4GGtxZiANpLgYa78CEEKScTZuA2NYN9EVBXxm4jGXsMoNlX0A5GXLoQ8r&_nc_ohc=gq3War65aCYAX8zPJiY&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_1u8IKGj_qk5ST-aBCGM6s646TXiVu40FdpoL0YoFyKA&oe=6210E5AD',
        ],
        'Love being free',
        'BussinerMan',
      [
        'Earning',
        'Music',
        'Remixs',
        'Gambling',
        'Party',
      ],
    ),
    User(
        5,
        'Faaz',
        25,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/s640x640/267803828_2148915735257684_6865708874099354452_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF87-ywaNzL5c_h1pL_GB5nXdeGoKbK5N9d14agpsrk36PD-KavGz_L1PscF3NtbmnBaUprgjM59PlyPiVgaAbV&_nc_ohc=8IaE1uaJ5O8AX_R4cd5&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-XDHDv7zxF6L4-Xv_BmMqgOWb4DpWJz1s5aFiwUzjQxg&oe=61EFB721',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/90272317_1597900217025908_3451889374986240000_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEQs8Vv_RCKlim3hHYFP0VI5bGOcf-7bhLlsY5x_7tuEv9R6L1TJSSemhRxSqoI7JwQB4nSB7zDF3aK67pl1k6c&_nc_ohc=zTyN2qw-1UcAX8HfnRX&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8Xy0xNoFIN5yhYnZSelOAmFicgyXGBMW8UyYbZO4gMvQ&oe=6210642C',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p206x206/252384338_2117568675059057_4769915302499506350_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeHc6TR_I2Fq8s7xcgJ2HycfIr_cIjRZnD4iv9wiNFmcPoY80j1TMRGXKk0x5bJ2iIvOESfwaE28zl3fprsFOK5e&_nc_ohc=siQRlONsz9cAX_LWrGe&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-Fj8vcXPhFVWuGMnaWtVAmz2Uz492LozM6NQMeu0kxEw&oe=61EF6246',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/c0.34.206.206a/p206x206/144827762_1898781280271132_8137716630440273310_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeFAiUTQB91PPt_Ae2DKLB4U6oaCrZ2p1QHqhoKtnanVASw0g3ldB1hYDo58aLvFn1nHtq9wgoABYcY1a5iCHlcI&_nc_ohc=6Zc7_DZq8dkAX9X16tj&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9bQSDLOhc3DWrIpu3RXZIOJbI3mRN81x1WfmdTWhpXeg&oe=620EEDD6',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/s206x206/98363274_1650562268426369_3673941499176812544_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeFO-1hCCK-BVCWB1NhM-IrEwAo6cmqcAPPACjpyapwA82XqB1ML0GcdTS09nuTS9DfEQCoPU2y2QNVI5hhpsKFv&_nc_ohc=TDHgOh2KfsIAX-VgUnu&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8jd4yhKmx0EgLKYDjmixBITnPf2jrVAzM8OGZdIG0fLg&oe=6211B9E6',
        ],
        'Love being free',
        'Programmer',
      [
        'Developing',
        'Gaming',
        'Music',
      ],
    ),
  ];
}