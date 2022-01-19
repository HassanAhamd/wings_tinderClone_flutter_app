import 'package:equatable/equatable.dart';

class User extends Equatable {
final int id;
final String name;
final int age;
final List<String> imageUrls;
final String bio;
final String jobTitle;

const User( this.id, this.name, this.age, this.imageUrls, this.bio, this.jobTitle);

  @override
  List<Object?> get props =>  [
    id,
    name,
    age,
    imageUrls,
    bio,
    jobTitle
  ];

  static List<User> users = [
    User(
        0,
        'Hassan Shabir',
        24,
        [
      'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p526x296/269938137_3056075687993259_5819736042281903073_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=58ytUiZazc0AX8QgGhW&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_w9ffQOkfEUd21jn7-W83_TJWq789uWC00rR3o-8fzEA&oe=61EC7623',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/p526x296/270215567_3055406961393465_6072198678768410667_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=Xfgip3Dr8bcAX_vNlt6&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-zxnTml6srnSDvK6sJky2kbF5njCJhrkQo5JWBzMO8Dg&oe=61EBD09A',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/189089956_2902626596671503_862161373460251359_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=9svhqNcAzrEAX-7gmY3&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-40YsHToSXyOkbTzF46nRyv0oyrRDH_CY7ehxjBpRiRA&oe=620B433F',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/35430772_2077867765814061_4016876878072643584_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_eui2=AeHM2GOphaJ0-fu9hHqeKv2lk1cXdePB0peTVxd148HSl8QFPfujq-Fc0ZNDpruh87hI77LP7hywV7Z_aDM2U034&_nc_ohc=6w7qmaIFP6cAX9cqbam&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9Q_0Yc6EkXoNBFmzHFY5PpWoX6jwddCpD5MtMyqe4qQg&oe=620EDFDE',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/s960x960/83719218_2505638093037024_2712968254896209920_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=84a396&_nc_eui2=AeG0_HcV1vIvvbbnTBeXGATeZjBklAnqRkNmMGSUCepGQ544Z0J7IH6R6j_sj8v7Z8UhbLECPkAtoWPII8UpVl2a&_nc_ohc=kLhggE8yYyMAX9OQM3G&_nc_oc=AQlxFWP0ljzFjc7qece2Yf5D2Hg-YxE6vDJGalTjtDCu6WadzzNp-C8c8K1jayP8ZZE&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-q1WPq8HUIMetim9zzJVWEwRTeaUCAoIViQukDFxjHaQ&oe=620C03B1',
        ],
        'Love Programming and love to listen Music',
        'Software Engineer'
    ),
    User(
        1,
        'Zohaib Hassan',
        27,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-1/p200x200/265717570_4698530040215239_167902073170669759_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_ohc=TeVuMMfpfD0AX-ND3yA&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-hF_EOrQQsX631FTbvYMQAbadmA9sMvzXSLJf6hNen9A&oe=61EADC6C',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/193306910_4106849312716651_5750956100388623682_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=B2dpsDLcPK4AX_HpseJ&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8ntMjx6WeZqAhsyh--J3b8foIGPiCF-nr5Dwm9sQ899A&oe=620B4277',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/132389916_3663484507053136_4571922956767140662_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=uOHi-yltvtEAX_TU6f2&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8nYXH4hTpCUCryieDI8y1GEGRQTRZo1v4C0Pg-jLQ3hQ&oe=620C2621',
       'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/131931223_3655487227852864_8751809857371126715_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH03P9gd0rkRsLyAYPN85W6C2G4BXSWaIQLYbgFdJZohAT3M9W3BWpH4D0nOUZzD4HTqYHTm-5XKsks4dCIDhWK&_nc_ohc=CEJqY_xbkdIAX_Xfzz3&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-mcrb25oecJ_nI1yhpK3f5gtUOOf9HA68dbR_ch3j49w&oe=620BA270',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/49464979_2105691199499149_3085294094998568960_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHwjz1781daq8bIkIs_CU9MyqayCnw6jhTKprIKfDqOFDYWlvekznbLqOsFTBTSMrMyLFQN03eIttwsXUkeE4wf&_nc_ohc=SKQ-YhXk2_cAX8m98zJ&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9ejJTZAmx-S4Gr8oC8K5A23oVOmR1hIzgUNHHAGfCv-Q&oe=620BDEC2',
        ],
        'Love making Videos',
        'YouTuber'
    ),
    User(
        2,
        'Ali Arslan',
        25,
        [
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/271654022_2587396534736990_5605736271089604122_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=CgnoAITXvWAAX8V2PJT&_nc_ht=scontent.flhe9-1.fna&oh=00_AT8cc0oWtBn7jLpk3bVnwgrozv4Ykyu9ZkVHfV4eiiRe6Q&oe=61EBD1EA',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/268470522_2566599283483382_1459972634633626919_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=174925&_nc_ohc=aDyqC9A8hVIAX8HqFoU&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_wleVOIu6YW5bn8U6pRSZu7Qqfb_ZLqcygqzAjzDrRlw&oe=61EB07EE',
          'https://scontent.flhe9-1.fna.fbcdn.net/v/t39.30808-6/264095553_2555492211260756_2992125229547064870_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_ohc=bMyEovx1bqIAX-c34_r&_nc_ht=scontent.flhe9-1.fna&oh=00_AT9asz983Cl7wT0S7cxL8wyU5dQ67va7MyaSyqYvWqmVbw&oe=61ECB8B4',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.6435-9/56219874_1624276867715633_4787852206676115456_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHQGBBgNK4e5jcj07X5X0R-22ZXfCWZgvzbZld8JZmC_K1tsxJQyRHUZ-6ohFdiP-v0pBuDD6os7z8znwsM153x&_nc_ohc=Kgp_YzBMgCgAX-y0Ahp&_nc_ht=scontent.flhe9-1.fna&oh=00_AT-QBBS8CPlnvLoQ_yWF_MTTFWNw0jGcahNa5ZEa_6ee6A&oe=620BE6AA',
        'https://scontent.flhe9-1.fna.fbcdn.net/v/t1.18169-9/11890969_911664522235162_2813939620157200340_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=cdbe9c&_nc_eui2=AeEad4N9-FlktWlUl_3J5iYDZktq9Mj1O8tmS2r0yPU7y1kws_pU6RrIT_iLGJK4zd0jFhMPVFo3T64rDfpMkpCC&_nc_ohc=QO5Ft64NqPwAX8iGTKa&tn=nscoSL9XYIw9TnpI&_nc_ht=scontent.flhe9-1.fna&oh=00_AT_6yBza3baszp_f4OGGMs4nSGmqiVrZ_K5qZzc565d6iw&oe=620DCBA3',
        ],
        'Love being free',
        'Free Agent'
    ),
  ];
}