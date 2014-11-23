---
layout: page
title: Content Hosts
sub_title: Sign Up
header: Servers
weight: 3
---

Privly users choose where they want to host their content. While it is a best practice for users to host their content on their own hardware, we realize that the majority of users will likely never maintain a web server. Hence, we manage a list of recommended hosts for users looking for their Privly home.

## Official Hosts ##

"Official" hosts are plugged into Privly development and abide by best practices regarding user privacy. This list is currently small, but we are working to add hosts. We would like to have a menu of hosts operating in independent jurisdictions.

* [PrivlyAlpha.org](https://privlyalpha.org): This server is operated by the Privly Foundation, which is a United States based non-profit organization. The servers are donated by Rackspace, inc and are located in a United States-based facility.
* [dev.privly.org](https://dev.privly.org): This host is primarily for developers actively contributing to the Privly Project. It has more frequent down time, but often has the newest functionality. This server is not for the uninitiated. It is operated by the Privly Foundation, which is a United States based non-profit organization. The servers are donated by Rackspace, inc and are located in a United States-based facility.
* **YourServerHere.** You can [open an issue](https://github.com/privly/privly.github.io/issues) to request that your server be listed on this page. To be listed you need to abide by best practices for protecting user content. Initially we will likely put you in the "Community Hosts" section.

## Community Hosts ##

These servers properly integrate with Privly's family of applications, but they don't have the same level of scrutiny as the "official" hosts. Since malicious hosts could use Privly's content injection to track users (see below), Privly does not automatically fetch content associated with these servers unless you tell it to.

* There are currently no known unaffiliated servers. **Be the first!**

Privly servers currently know when the content they store has been accessed. To prevent malicious hosts from tracking Privly users, only servers that are "whitelisted" by Privly can automatically inject content. A forthcoming peer-to-peer network will eliminate the necessity for a whitelist in many cases .
