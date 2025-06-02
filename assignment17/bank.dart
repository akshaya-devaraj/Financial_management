class Bank {
   String? name;
   String? image;
  String? subtitle;

  Bank({
     this.name,
     this.image,
     this.subtitle,
  });
}

List banks = [
  Bank(
    name: "Canara Bank",
    image: "assets/images/canara.png",
    subtitle: "Branches: 6,310+ | Since 1906",
  ),
  Bank(
    name: "State Bank of India",
    image: "assets/images/sbi.png",
    subtitle: "Branches: 22,000+ | Since 1806",
  ),
  Bank(
    name: "HDFC Bank",
    image: "assets/images/hdfc.png",
    subtitle: "Branches: 7,800+ | Since 1994",
  ),
  Bank(
    name: "ICICI Bank",
    image: "assets/images/icici.png",
    subtitle: "Branches: 5,400+ | Since 1994",
  ),
  Bank(
    name: "Axis Bank",
    image: "assets/images/axis.png",
    subtitle: "Branches: 4,800+ | Since 1993",
  ),
  Bank(
    name: "Kotak Mahindra Bank",
    image: "assets/images/kotak.png",
    subtitle: "Branches: 1,750+ | Since 2003",
  ),
];
