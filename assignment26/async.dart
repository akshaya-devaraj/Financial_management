// void main()
// 	{
//     print("Fetch started");
// 		print(fetchUser().then((value){
// 		print("Fetched user data");
// 		}));
//     print("Fetched done");
// 	}
// 	Future fetchUser()
// 	{
// 		return Future.delayed(Duration(seconds: 4));
		 
// 	}

// void main() async {
//   print("Fetch started");

//   await fetchUser(); // Waits here until the future completes
//   print("Fetched user data");

//   print("Fetched done");
// }

// Future fetchUser() {
//   return Future.delayed(Duration(seconds: 4));
// }

void main() async {
  print("Fetch started");

  try {
    await fetchUser(shouldFail: false); // Change to false to simulate success
    print("Fetched user data");
  } catch (e) {
    print("Error occurred: $e");
  }

  print("Fetched done");
}

Future fetchUser({bool shouldFail = false}) {
  if (shouldFail) {
    return Future.delayed(Duration(seconds: 4), () {
      throw Exception("Failed to fetch user data");
    });
  } else {
    return Future.delayed(Duration(seconds: 4));
  }
}

