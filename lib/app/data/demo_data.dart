import 'package:cucumia_admin/app/modules/utils/action_log/models/activity_log_model.dart';
import 'package:cucumia_admin/models/AdvertisementBanner.dart';
import 'package:cucumia_admin/models/Magazines.dart';
import 'package:cucumia_admin/models/Shop.dart';
import 'package:get/get.dart';

import '../../models/InvitedUser.dart';

class DemoData {
  static List<String> demoImages = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];

  static List<DemoUser> userData = [
    DemoUser(
      imageurl:
          "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      userName: "Myra Foster",
      userID: "wiwlirug@cucumia.com",
      country: "USA",
      contact: "+1 438348887",
      status: "Active",
    ),
    DemoUser(
      imageurl:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      userName: "Sweden",
      userID: "nilrebfocucumia.com",
      country: "India",
      contact: "+91 974848473",
      status: "Pending",
    ),
    DemoUser(
      imageurl:
          "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      userName: "Matilda Robertson",
      userID: "besew@cucumia.com",
      country: "UK",
      contact: "+976 34848663",
      status: "Inactive",
    ),
  ];

  static List<Magazines> demomagazines = [
    Magazines(
      id: "1",
      title: "Fotex Magazine",
      website_url: "Expiry in Feb-2022",
      usersID: "Week 52 Mag",
      thumbnail:
          "https://images.unsplash.com/photo-1504198322253-cfa87a0ff25f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
    ),
    Magazines(
      id: "2",
      title: "Noted Magazine",
      usersID: "Week 52 Mag",
      website_url: "Expiry in Feb-2022",
      thumbnail:
          "https://images.unsplash.com/photo-1549298222-1c31e8915347?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    ),
    Magazines(
      id: "3",
      title: "Fotex Magazine",
      usersID: "Week 52 Mag",
      website_url: "Expiry in Feb-2022",
      thumbnail:
          "https://images.unsplash.com/photo-1538035323718-63409b754ce7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
    ),
    Magazines(
      id: "4",
      title: "Fotex Magazine",
      usersID: "Week 52 Mag",
      website_url: "Expiry in Feb-2022",
      thumbnail:
          "https://images.unsplash.com/photo-1598043596827-fd992a2f137a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
    ),
  ];

  static RxList<ActivityLogItem> ActivityLogsdata = [
    ActivityLogItem(
      userName: "May Gautier",
      Actions: "Log in",
      Role: "Country Admin",
      country: "USA",
      state: "Okalahoma",
      createdDate: "February 14,, 2021",
      RequestTime: "10:30 PM",
      status: "Active",
    ),
    ActivityLogItem(
      userName: "Luis vitamin",
      Actions: "Log in",
      Role: "Merchant",
      country: "India",
      state: "Delhi",
      createdDate: "February 14, 2021",
      RequestTime: "10:30 PM",
      status: "Active",
    ),
    ActivityLogItem(
      userName: "Ben Parker",
      Actions: "Log in",
      Role: "Affiliate",
      country: "Denmark",
      state: "Copenhagena",
      createdDate: "February 14, 2021",
      RequestTime: "10:30 PM",
      status: "Inactive",
    )
  ].obs;

  static RxList<DemoAffiliate> DemoAffiliatedata = [
    DemoAffiliate(
        imageurl:
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Myra Foster",
        userID: "wiwlirug@cucumia.com",
        state: "Karnataka",
        InvitedBy: "Sweden",
        revenue: "23829",
        CreatedDate: "14 Apr 2021, 8:43 PM"),
    DemoAffiliate(
        imageurl:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Matilda Robertson",
        userID: "besew@cucumia.com",
        state: "Haryana",
        InvitedBy: "Monaco",
        revenue: "23829",
        CreatedDate: "14 Oct 2021, 10:20 AM"),
    DemoAffiliate(
        imageurl:
            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "French Southern",
        userID: "vo@cucumia.com",
        state: "Gurgoan",
        InvitedBy: "Minnie Hoffman",
        revenue: "23829",
        CreatedDate: "14 May 2021, 12:10 PM")
  ].obs;

  static RxList<DemoMerchants> DemoMerchantsdata = [
    DemoMerchants(
        imageurl:
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Myra Foster",
        userID: "wiwlirug@cucumia.com",
        shopname: "Navaratna Supermarket",
        Location: "Edapally,Kochi",
        state: "Haryana",
        status: "Active",
        CreatedDate: "14 Apr 2021, 8:43 PM"),
    DemoMerchants(
        imageurl:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Matilda Robertson",
        userID: "besew@cucumia.com",
        shopname: "Fresh Home Bakes",
        Location: "Kakkanad ,Kochi",
        state: "Gurgoan",
        status: "Active",
        CreatedDate: "14 Oct 2021, 10:20 AM"),
    DemoMerchants(
        imageurl:
            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "French Southern",
        userID: "vo@cucumia.com",
        shopname: "Lulu Hypermarket",
        Location: "MG Road, Thrissur",
        state: "Gurgoan",
        status: "Inactive",
        CreatedDate: "14 May 2021, 12:10 PM")
  ].obs;

  static RxList<AdvertisementBanner> DemoBanner = [
    AdvertisementBanner(
        id: "1",
        img_token:
            "https://images.unsplash.com/photo-1511268559489-34b624fbfcf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        discription: "India",
        link_url: "14 May 2022 ",
        usersID: "Active"),
    AdvertisementBanner(
        id: "2",
        img_token:
            "https://images.unsplash.com/photo-1558818498-28c1e002b655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        discription: "Delhi, India",
        link_url: "14 May 2022 ",
        usersID: "Active"),
    AdvertisementBanner(
        id: "3",
        img_token:
            "https://images.unsplash.com/photo-1511268559489-34b624fbfcf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        discription: "India",
        link_url: "14 May 2022 ",
        usersID: "Inactive"),
  ].obs;

  static RxList<DemoSubscription> DemoSubscriptiondata = [
    DemoSubscription(
        imageurl:
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Myra Foster",
        userID: "wiwlirug@cucumia.com",
        shopname: "Navaratna Supermarket",
        Location: "India",
        subscriptionID: "#1222244442",
        status: "Paid",
        Plan: "14 Apr to 13 May",
        Amount: "430"),
    DemoSubscription(
        imageurl:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "Matilda Robertson",
        userID: "besew@cucumia.com",
        shopname: "Fresh Home Bakes",
        Location: "USA",
        subscriptionID: "#1222244442",
        status: "Not Paid",
        Plan: "14 Apr to 13 May",
        Amount: "430"),
    DemoSubscription(
        imageurl:
            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        userName: "French Southern",
        userID: "vo@cucumia.com",
        shopname: "Lulu Hypermarket",
        Location: "Germany",
        subscriptionID: "#1222244442",
        status: "Paid",
        Plan: "14 Apr to 13 May",
        Amount: "430")
  ].obs;

  static RxList<InviteMechantData> DemoInvitedMerchants = [
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Completed",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteMechantData> DemoalreadyaddedMerchants = [
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteMechantData> DemoNotaddedMerchants = [
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteMechantData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  // Inviting Country partner dummy data
  static RxList<InviteCPData> DemoInvitedCPs = [
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Completed",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteCPData> DemoalreadyaddedCPs = [
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteCPData> DemoNotaddedCPs = [
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteCPData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  // Inviting Affiliates data
  static RxList<InviteAffiliateData> DemoInvitedAffiliates = [
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Completed",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteAffiliateData> DemoalreadyaddedAffiliates = [
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InviteAffiliateData> DemoNotaddedAffiliates = [
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
    InviteAffiliateData(
      imageurl:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      merchantName: "Ben Parker",
      merchantEmail: "benparker@cucumia.com",
      stats: "Pending",
      invitedDate: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

// create shop Dummy_data
  static RxList<InvitedUser> DemoInvitedShop = [
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "14 Apr 2021, 8:43 PM",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "14 Apr 2021, 8:43 PM",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "14 Apr 2021, 8:43 PM",
    ),
  ].obs;

  static RxList<InvitedUser> DemoalreadyaddedShop = [
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "benparker@cucumia.com",
    ),
  ].obs;

  static RxList<InvitedUser> DemoNotaddedShop = [
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "mike@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "tom@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "thomas@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "peter@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "parker@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "gwen@cucumia.com",
    ),
    InvitedUser(
      img_token:
          "https://images.unsplash.com/photo-1505253892657-6fcc8796949c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      fullname: "Ben Parker",
      usersID: "benparker@cucumia.com",
      saved_location: 'Pending',
      email: "tony@cucumia.com",
    ),
  ].obs;

// Shop listing
  static List<Shop> demoshops = [
    Shop(
      id: "1",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
    Shop(
      id: "2",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
    Shop(
      id: "3",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
    Shop(
      id: "4",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
    Shop(
      id: "5",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
    Shop(
      id: "6",
      img_token: const <String>[
        "https://images.unsplash.com/photo-1551162685-ef4c27fdd699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"
      ],
      name: "Lulu Hypermarket",
      usersID: "Abu Sailm",
    ),
  ];
  static List<Plan> demoPlans = [
    Plan(
      title: "Silver",
      monthlyPrice: 10,
      yearlyPrice: 120,
      point1: " 10 shop",
      point2: "",
    ),
    Plan(
      title: "Gold",
      monthlyPrice: 50,
      yearlyPrice: 600,
      point1: " 50 shop",
      point2: "5 Ads/month",
    ),
    Plan(
      title: "Platinum",
      monthlyPrice: 90,
      yearlyPrice: 1080,
      point1: " 100 shop",
      point2: "5 Ads/month",
    ),
  ];
}

class DemoUser {
  String imageurl;
  String? userName;
  String? userID;
  String? contact;
  String? country;
  String? status;

  DemoUser({
    required this.imageurl,
    this.userName,
    this.userID,
    this.contact,
    this.country,
    this.status,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imageurl'] = imageurl;
    data['userName'] = userName;
    data['userID'] = userID;
    data['contact'] = contact;
    data['country'] = country;
    data['status'] = status;
    return data;
  }
}

class DemoAffiliate {
  String imageurl;
  String? userName;
  String? userID;
  String? state;
  String? InvitedBy;
  String? revenue;
  String? CreatedDate;

  DemoAffiliate({
    required this.imageurl,
    this.userName,
    this.userID,
    this.state,
    this.InvitedBy,
    this.revenue,
    this.CreatedDate,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imageurl'] = imageurl;
    data['userName'] = userName;
    data['userID'] = userID;
    data['InvitedBy'] = InvitedBy;
    data['revenue'] = revenue;
    data['state'] = state;
    data['CreatedDate'] = CreatedDate;
    return data;
  }
}

class DemoMerchants {
  String imageurl;
  String? userName;
  String? userID;
  String? shopname;
  String? Location;
  String? state;
  String? status;
  String? CreatedDate;

  DemoMerchants({
    required this.imageurl,
    this.userName,
    this.userID,
    this.shopname,
    this.Location,
    this.state,
    this.status,
    this.CreatedDate,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imageurl'] = imageurl;
    data['userName'] = userName;
    data['userID'] = userID;
    data['Location'] = Location;

    data['shopname'] = shopname;
    data['state'] = state;
    data['status'] = status;
    data['CreatedDate'] = CreatedDate;
    return data;
  }
}

class DemoSubscription {
  String imageurl;
  String? userName;
  String? userID;
  String? shopname;
  String? Location;
  String? subscriptionID;
  String? Plan;
  String? status;
  String? Amount;

  DemoSubscription({
    required this.imageurl,
    this.userName,
    this.userID,
    this.shopname,
    this.Location,
    this.subscriptionID,
    this.Plan,
    this.status,
    this.Amount,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imageurl'] = imageurl;
    data['userName'] = userName;
    data['userID'] = userID;
    data['Location'] = Location;

    data['shopname'] = shopname;
    data['subscriptionID'] = subscriptionID;
    data['Plan'] = Plan;
    data['status'] = status;
    data['Amount'] = Amount;
    return data;
  }
}

class InviteMechantData {
  String? imageurl;
  String? merchantName;
  String? merchantEmail;
  String? stats;
  String? invitedDate;

  InviteMechantData({
    this.imageurl,
    this.merchantName,
    this.merchantEmail,
    this.stats,
    this.invitedDate,
  });
}

class InviteCPData {
  String? imageurl;
  String? merchantName;
  String? merchantEmail;
  String? stats;
  String? invitedDate;

  InviteCPData({
    this.imageurl,
    this.merchantName,
    this.merchantEmail,
    this.stats,
    this.invitedDate,
  });
}

class InviteAffiliateData {
  String? imageurl;
  String? merchantName;
  String? merchantEmail;
  String? stats;
  String? invitedDate;

  InviteAffiliateData({
    this.imageurl,
    this.merchantName,
    this.merchantEmail,
    this.stats,
    this.invitedDate,
  });
}

class UserProfile {
  final String? email;
  final String? name;
  final String? image_url;
  final String? mobileNumber;
  final String? address;
  final String? city;
  final String? country;
  final String? postalCode;
  final String? role;
  final String? education;
  final int? merchants;
  final int? countryPartners;
  final int? affiliates;

  UserProfile({
    this.email,
    this.name,
    this.image_url,
    this.mobileNumber,
    this.address,
    this.education,
    this.city,
    this.country,
    this.postalCode,
    this.role,
    this.merchants,
    this.countryPartners,
    this.affiliates,
  });
}

class DummyProduct {
  final String? name;
  final String? image_url;
  final String? brand;
  final String? offerPrice;

  final String? originalPrice;
  final String? bestBefore;

  DummyProduct({
    this.name,
    this.image_url,
    this.brand,
    this.offerPrice,
    this.originalPrice,
    this.bestBefore,
  });
}

class Plan {
  String title;
  double monthlyPrice;
  double yearlyPrice;
  String point1;
  String? point2;

  Plan({required this.title, required this.monthlyPrice, required this.yearlyPrice, required this.point1, this.point2});
}
