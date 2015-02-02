---
layout: page
header: Priv.ly Development School
sub_title: Create Privacy
title: Develop
group: navigation
weight: 3
---

{::options parse_block_html="true" /}

Want to become a Privly contributor? This guide will get you started coding,
documenting, and testing for the Privly project.
This guide assumes you want to dive deep into the extensible web.
If you just want to use the system, you should go to the ["about"](about.html) page.

<section id="Background" class="group">
<div id="BeginningKnowledge" class="subgroup">

# Beginning Knowledge #

1. *What's Privly?* Privly gives users control over their private information. Watch this <a href="https://vimeo.com/83073455" target="_blank">introductory video</a> (under 2 minutes). Also, watch this <a href="https://vimeo.com/83258935" target="_blank">technical teaser trailer</a> (a little over 2 minutes), but don't worry if you don't understand them. Privly is a framework for allowing you to post encrypted content anywhere on the web. Privly is a protocol and suite of applications for controlling personal data shared via any site on the web. For consumer-focused information on what Privly is, visit [priv.ly/pages/about](https://priv.ly/pages/about). We also have a [blog post](http://radar.oreilly.com/2013/07/securing-user-content-in-the-javascriptable-web.html) on O'Reilly about Privly's design philosophy.
2. *I want to try Privly before I start learning how to become a contributor.* Check out our <a href="https://www.privly.org/content/give-privly-try" target="_blank">Give Privly a Try</a> documentation. 
3. *How do I report bugs against this documentation?* If you see something wrong with this documentation or want something added, please <a href="https://github.com/privly/privly.github.io/issues/new" target="_blank">submit an issue on GitHub</a> or
[fork and edit it yourself](https://github.com/privly/privly.github.io/blob/master/pages/develop.md).
4. *How do I GitHub?* If you've never used GitHub, check out this <a href="https://help.github.com/articles/set-up-git" target="_blank">documentation</a>. We recommend using the terminal with git, not the GitHub native app.

</div>
<div id="TechnicalVision" class="subgroup">

## Technical Vision ##

Every website has its own navigation structure, layout, and audience, but when you strip away these unique attributes of websites, you are left with data-- chats, emails, photos-- that can be treated uniformly across all websites. Operations on these data like encryption and signing, can be performed with indifference to their context and their contents.

Privly uses data indifference to create the notion of ``Injectable Applications'' (Privly Applications), which are full web applications that are injected into the context of other web application. Since these applications are scoped to data and not layout, their properties are simplified and usable across the web.

Privly works within browser extensions by scanning web pages for specially formatted hyperlinks. When the extension detects the hyperlink, it ``injects'' the link into an iframe that is served locally from the browser extension. Since the injected application is a full web application, the app could potentially support any web-implementable feature.

**Development Status**

* [Privly Applications](https://github.com/privly/privly-applications) - In Alpha - Under development
* [Chrome and Opera](https://github.com/privly/privly-chrome) - In Alpha - Under development
* [Firefox](https://github.com/privly/privly-firefox) - In Alpha - Under development
* [Safari](https://github.com/privly/privly-safari) - Development stalled (no maintainer)
* [Internet Explorer](https://github.com/privly/privly-ie) - Not under development (no maintainer)
* [Reference Implementation Content Server](https://github.com/privly/privly-web) - Not currently a focus of development since the Privly Applications repository houses most of the functionality client-side.

Each Privly version will be released "when it's ready."

</div>
<div id="WheresTheDocumentation" class="subgroup">

## Where's the Documentation? ##

This guide has much of the documentation you'll need, but we also have documentation in three other locations (we know, that's a lot, hear us out).

1. [privly.org](www.privly.org)- Privly.org is the official home of the Privly Foundation. It contains:
* Development Blog
* Privly Foundation organization information

1. [Github Wiki](https://github.com/privly/privly-organization/wiki)- The wiki permits anyone to contribute and improve content. The wiki contains:
* Developer Information
* Working Draft Specifications

1. In application-specific repositories. These are mostly in the form of READMEs for installing specific components, but in the case of [privly-applications](https://github.com/privly/privly-applications) several of the sub folders contain doc directories with threat models. A threat model details the security assumptions of an application and the appropriate use cases for the application.

</div>
<div id="Communication" class="subgroup">

## Communication and Getting Help ##

**First two Steps**

1. Join our <a href="http://groups.google.com/group/privly/" target="_blank">Privly Development Google Group</a>. We use it to broadcast announcements including information about our major development efforts.
2. Follow us on <a href="https://github.com/privly" target="_blank">GitHub</a>. Don't worry about cloning these repos yet. We'll go through that later. Each repository uses the GitHub issue queue for repository-specific issues. We recommend you follow the [reference implementation content server](https://github.com/privly/privly-web), the [Chrome extension](https://github.com/privly/privly-chrome) and the [Privly-Applications](http://github.com/privly/privly-android).

**IRC - Internet Relay Chat**

Privly developers gather on IRC to chat informally about issues and concepts. Be prepared to wait a few hours depending on when you enter the room. Many Privly developers are on UTC -7 time.

<p>If you've never used IRC before, we recommend using the Freenode's <a href="http://webchat.freenode.net" target="_blank">web-based IRC client</a>. You can also check out this <a href="http://lug.oregonstate.edu/blog/irc/" target="_blank">documentation</a>&nbsp;on how to use IRC. When you're in your IRC client you can join us at #privly using these commands:</p><ul><li>/connect irc.freenode.net</li><li>/nick "your nick"</li><li>/join #privly</li></ul><p>Here are a few more basics:</p><ul><li>Type someone's "nick" to get their attention (i.e. smcgregor: "stuff I want to say to smcgregor")&nbsp;</li><li>Not everyone in the channel is actually present so be patient. They may take awhile to get back to you, but they will get back to you.</li><li>Stop by and say hi! We're here to welcome you. Feel free to ask questions anytime.</li></ul><p>You can also join Privly's IRC channel using this webchat:{::nomarkdown}<iframe height="400" src="https://webchat.freenode.net?channels=privly" width="500"></iframe>{:/nomarkdown}</p>

**List of All Communication Resources**

* Mailing Lists
  * [Developers Mailing List](http://groups.google.com/group/privly)
  * [Tester Mailing List](http://groups.google.com/group/privly-test)
  * [Announcement Mailing List](http://groups.google.com/group/privly-announce)
* IRC
  * Privly developers gather on irc.freenode.net, in the #privly room
* Social Networks
  * [Diaspora](https://diasp.org/u/privly)
  * [Twitter](https://twitter.com/Privly)
  * [Facebook](https://www.facebook.com/shareprivately)
  * [Google+](https://plus.google.com/u/0/b/116408437159289879477/116408437159289879477)
* Direct Emails
  * Sean McGregor: privly@privly.org
* GitHub
  * [Create an Issue in a Repository](http://github.com/privly/)

</div>
<div id="StartingWithBasics" class="subgroup">

## Starting with Basics ##

It can be overwhelming to contribute to a new Open Source project. To make it easier,
we have a set of tasks that will help you bootstrap your Privly development skills.
Even if you are a seasoned web dev we recommend starting with the "level 0" because
Privly has many differences from the typical web development approach.

**Level 0:** Improve programatic code quality. _([Setup](#Setup))_  
[CodeClimate](http://codeclimate.com) gives reports on code quality that
highlight simplistic issues across the whole code base. We recommend cloning the
[Privly-Applications repository](https://github.com/privly/privly-applications)
and improving the code based on the recommendations found
[on code climate](https://codeclimate.com/github/privly/privly-applications).
Then open a pull request! Don't be afraid to submit a small pull request.

**Level 1:** Run the Privly-Applications build system. _([Build System](#BuildSystem))_  
Privly packages multiple Javascript applications into a bundle of privacy applications.
Understanding this [build system](#BuildSystem) will allow you to make changes across
all applications. A good starting point is to change the text in the footer to be
more visually appealing. See the [build system](#BuildSystem) docs for more details.

**Level 2:** Unit testing. _(Javascript, [Jasmine, Karma](#UnitTesting))_  
Privacy software requires strong test coverage to guard the security of the
applications. To complete this level we recommend adding test coverage to one of the
existing specs. See the [unit testing](#UnitTesting) docs for more details.

**Level 3:** Integration testing. _([Selenium](#Testing))_  
Unit tests examine a tiny part of Privly and integration tests examine the system
as a whole. It is important to programmatically perform all the activities supported
by the application (creating, updating, destroying, etc) to prevent regressions.
To achieve this level, you should
See the [integration testing](#Testing) docs for more details.

**Level 4:** Add continuous integration. _([TravisCI](#SauceLabs), [SauceLabs](#SauceLabs))_  
Continuous integration runs the full suite of unit and integration tests every time
you push commits to GitHub. Setting up Continuous Integration for your fork
requires a few additions to the .travis.yml file that is shared by all the forks.
See the [continuous integration](#TravisCI) docs for more details.

**Level 5:** Make a new Privly App. _(Everything Related to Apps)_  
At this point you have all the infrastructure in place to develop a new Privly App.
Copy an existing application to a new directory, edit the manifest.json to reference the
proper paths, and get experimenting!

**Level 6:** Hack on content scripts. _([Hacking Host Page DOM](#ContentScripts))_  
Want to change how Privly interacts with social networks? This requires
hacking on the
[privly.js](https://github.com/privly/privly-chrome/blob/master/javascripts/content_scripts/privly.js)
[content script](#ContentScripts). We won't tell you what to change here since it is
up to you to experiment at this "max level."

</div>
</section>

---

<section id="Setup" class="group">
<div id="Prerequisites" class="subgroup">

# Development Setup #

## Prerequisites ##

If you want to develop either the content server or an extension, you'll need to install the development versions of the extensions. Each extension has a different way to load an "unpacked extension," which means you can edit the source files without needing to ZIP the extension into a single archive.

The Chrome development version is the most up to date extension at this time.

**Prerequisite**: You have
[git setup](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
on your local machine.

**Potential Pitfall**: When cloning the extensions or content servers, make sure you
use the `--recursive` option. Otherwise you will not get all the required modules.

</div>
<div id="ChromeExtension" class="subgroup">

### <a name="chrome"></a>Chrome Extension Development Installation

1. Get the source code from GitHub. You can download it by cloning the repository,
`git clone --recursive git@github.com:privly/privly-chrome.git`.
2. Open Chrome and click the wrench icon (or go to Preferences).
3. Select Extensions
4. Check "Developer Mode" box if unchecked. 
5. Click "Load Unpacked Extension..."
6. Select the directory containing the chrome extension (where you just cloned it to).

</div>
<div id="FirefoxExtension" class="subgroup">

### <a name="firefox"></a>Firefox Extension Development Installation

Adding a development extension to Firefox is more complex than adding one to
Chrome. You must add the extension to a Firefox "profile."

1. Clone the Git Repository, `git clone --recursive https://github.com/privly/privly-firefox.git`
1. In your terminal, find your Firefox profile directory.  
[Windows](http://support.mozilla.org/en-US/questions/941548),  
Mac: `cd ~/Library/Application\ Support/Firefox/profiles/`  
Linux:  `cd ~/.mozilla/`  
In that location, you will find your Firefox profile directories, e.g. 12a3bc4d.dev., change directories to your profile folder, for example `cd 12a3bc4d.dev`
1. Create a file to include a pointer to your code. For this, you need the path of where you cloned the Git Repository for the extension. Use vim (or your preferred editor) to create a filename with privly@priv.ly. On some systems (no, we're not sure which ones) this won't work and your filename will need to be {ec8030f7-c20a-464f-9b0e-13a3a9e97384}.
1. Type in the path your newly cloned git repository from earlier, e.g. C:\path\to\extension\privly-firefox\ (Windows) or /path/to/extension/privly-firefox/ (Linux, Mac), and save the file. 
1. Open Firefox.
1. You should see a dialog asking to confirm the Privly extension installation. 
1. Success! If it didn't work, see the tip from above, where the filename in your development profile folder may need to be privly@priv.ly or {ec8030f7-c20a-464f-9b0e-13a3a9e97384}.

</div>
<div id="TestingExtension" class="subgroup">

### <a name="test"></a>Test your Development Extension

In whatever browser you just installed the development extension into, visit <a href="http://test.privly.org/test_pages/whitelist.html" target="_blank">test.privly.org.</a> This will test if the Privly extension is injecting content properly.

</div>
</section>
<section id="ContentServer" class="group">

## Content Server Setup

<div id="WhyContentServer" class="subgroup">

Your browser extension contains all the code you need to develop, but Privly doesn't assume its users have the extension installed. In some cases it may be important for you to install the content server to your local machine to develop the content server. **Only get a local version of the content server if you must have it.** It is a useful exercise to stop thinking of web applications as something served from a web server, because extension-less operation is not the use case we want to emphasize.

**You still need a content server account to develop!** We grant accounts on <a href="http://dev.privly.org" target="_blank">dev.privly.org</a> to anyone who is working on the Privly project. You can visit the [dev.privly.org](https://dev.privly.org/) invite page and the server will send you the invite.

If you **must** install a local content server we have a basic setup guide that assumes you already have a working rails environment. Check out the <a href="https://github.com/privly/privly-web#development-server-installation">readme on GitHub</a>.

</div>
</section>

---

<section id="SystemOverviewHeading" class="group">
<div id="SystemOverview" class="subgroup">

## Component Outline

Privly is composed of three primary components:

1. A set of Javascript privacy applications called "Privly Applications." [Repo](https://github.com/privly/privly-applications).
1. A Client-Side Extension (your browser extended by Privly), which changes the websites you view to support the secure injection of Privly applications. [Chrome](https://github.com/privly/privly-chrome), [Firefox](https://github.com/privly/privly-firefox).
2. A content server, which holds the information required by privly-applications. [Ruby on Rails](https://github.com/privly/privly-web), [Python Flask](https://github.com/privly/privly-firefox).

You can learn more about how these components plug together on the [development wiki](https://github.com/privly/privly-organization/wiki/System-Hierarchy).

In the following sections, we are going to cover the current implementation of the Privly server, then move onto the design considerations for the extensions.

</div>
<div id="ReferenceImplementation" class="subgroup">

### Reference Implementation Content Server

We have two instances of the content server live on the internet:

1. <a href="http://dev.privly.org " target="_blank">dev.privly.org</a> hosts the most recent development release of the Privly server, and supports all the current functionality.
2. <a href="https://privlyalpha.org" target="_blank">privlyalpha.org</a> hosts the public instance of the Privly applications.

*Note: The domain "priv.ly" is used primarily for marketing purposes and is in the process of turning into a hub for Privly content servers. Developers can get an account on <a href="http://dev.privly.org" target="_blank">dev.privly.org</a> by signing up for an invitation.*

</div>
<div id="API" class="subgroup">

**Content Server API**

You can read through the <a href="https://github.com/privly/privly-web/blob/master/API.md" target="_blank">content server API on GitHub</a>. The content server is intended to be a simple key-value store that also serves a hosted version of the Privly-applications (if desired). The privly-applications repository handles most of the API integration with
the content server for sessions and other considerations. It is best to copy an
existing application before referring to this API.

</div>
<div id="ContentScripts" class="subgroup">

### Content Scripts

Are you a DOM hacker looking to integrate with the whole web? Content scripts are for you!
Otherwise, you should skip this section.

Content scripts are added by browser extensions to the sites you visit.
Every browser has its own set of extension capabilities and security restrictions, which makes simultaneous development on many platforms difficult. Although running scripts within different browsers is a mess, they all support injecting privileged applications into the context of an unprivileged host page like a social network.
Most of this "magic" happens inside the Privly.js file.
The current version of the privly.js file can be found in the [Chrome repository](https://github.com/privly/privly-chrome/tree/master/javascripts/content_scripts). Privly.js performs the following steps when it is loaded into the host page, but unless you are extension hacking you don't need to learn this process:

1. Find all plain text URLs pointing to a Privly server and turn them into hyperlinks
2. Correct possible indirection on Privly links by:
  * Checking the text that is displayed in the link for a URL and replace the href attribute with the displayed URL
  * Look at all attributes on the anchor element and replace the href element with Privly URLs found on other attributes. This handles cases where the anchor element has a tracking URL for the href, but the final URL is still an attribute
3. Replace Privly links with an iframe element pointing to the linked content
4. When the iframe content is rendered, it posts a message containing the height of the content in the iframe.
5. Privly.js receives the posted message and resizes the iframe to match the size of its contents

</div>
<div id="UserInterface" class="subgroup">

### Privly User Interface

A noteworthy design goal of the Privly extensions is to make the extension operation
invisible to the user. If the end user is not aware that the extension is installed
and they are viewing Privly-protected content, then the system is properly architected.
When developing for Privly, always ask yourself whether it is necessary for your user
to see your development work. For instance, you should try to **avoid** anything that:

* Adds configuration steps.
* Requires the user to read text to understand what the system is doing.
* Requires the user to _understand_ the system-- most users will not understand Privly.
* Results in an easiest path that makes the user compromise their data. Users are "lazy" and will do whatever is easiest.

To illustrate these challenges, we recommend following any significant development effort
with a [think aloud](http://en.wikipedia.org/wiki/Think_aloud_protocol) study. You will
be sobered by the results when the user clicks exactly where they shouldn't.

</div>
<div id="URLs" class="subgroup">

### Privly URLs

Privly shares content based on sharing URLs. Only two parameters are currently
required of any link that will be injected into the page:

* `privlyInject1` This is a string whose presence will result in the injection of the application associated with the link.
* `privlyApp=APP_NAME` This parameter determines which application should be injected with the associated URL.

We have more details on the URL specification [on the wiki.](https://github.com/privly/privly-organization/wiki/URL-Specification).
The typical process for generating a Privly URL is to post content to a
content server, which then returns a URL for post processing by the
Privly-application.

If you create a new Privly Application, you need to make its directory "web accessible"
in Chrome before it will successfully inject. See the examples
in the [Chrome](https://github.com/privly/privly-chrome/blob/master/manifest.json#L18)
manifest.

</div>
<div id="LinkBasedEncryption" class="subgroup">

### Link-Based Encryption

We want to make it computationally impossible for someone to decrypt content
without having access to the link a user shares on social media.
"Link discoverability" as a security property requires the server not
have access to _part_ of URLs that store the key. The realization of the
requirement is subtle since it employs a hack on
little-known web standards.

Web browsers don't send the anchor (the part to the right of the "#") when the client
requests web content. This allows for users with a browser extension (Privly) to
decrypt content they encounter on the web without the content server ever seeing the
decryption key. In the event the user does not have the browser extension installed,
they can still read the content by clicking the link. The content will be decrypted, but
if the content server is *actively* attacking the content, it will be able to recover the
key. A more thorough discussion
of the security properties of this approach can be [found on GitHub](http://github.com/privly/privly-organization/wiki/ZeroBin) or on the [safety page](safety.html).

**The Advantages of Link-Passwords Only**

* Users don't need to have an extension to view content, but we can prompt them to install the extension every time they click on Privly-type content. Without this sharing model as the starting point, it will be difficult to get users to adopt the extension. This is the first step of our roll-out strategy.
* The data is protected from the host page by a terms-of-service on the content server
* Compromising a post requires compromising the host page

**The Disadvantages of Link-Passwords Only**

* The remote server has access to the password if the link is read without the extension
* If someone compromises the security of the host page they have access to the decrypted content

</div>
</section>

---

<section id="PrivlyApplications" class="group">
<div id="BuildSystem" class="subgroup">

# Privly Applications #

Privly Applications are included in your browser extension or content server as a
git module. This means if you used the `--recursive` option when you cloned the extension
you have the Privly Apps automatically. If you don't see files in the directories
listed below, you should open the terminal in your privly-applications directory
and issue `git submodule init` then `git submodule update`.

The paths are:

* privly-chrome: /privly-applications
* privly-firefox: /chrome/content/privly-applications
* privly-web: /public/apps

## Build System

Privly abstains from using any server-side templating of applications because this
would represent an attack vector on the user's privacy. However, since applications
must live together in a coherent set of Privly Apps, it is necessary to render
applications from template files to static HTML.

You can find the setup instructions for installing the build system in the
[build.py](https://github.com/privly/privly-applications/blob/master/build.py) file.

Once you have all the prerequisites installed, navigate to your privly-applications
directory and issue:

> `python build.py --platform=chrome`

The apps will then be built for the Chrome extension. Now you can change a template
and it will change all the apps. You can also copy an existing app, update the
manifest.json file, and build the apps for your "new" app to automatically
be included in the navigation.

</div>
<div id="UnitTesting" class="subgroup">

## Unit Testing ##

Unit testing breaks the components of the applications into the smallest testable pieces.
In the case of the Priv.ly Project the smallest testable pieces are individual Javascript functions.

When developing for Privly, you should strive for 100 percent unit test coverage and
reasonable integration tests. The testing infrastructure will then run these tests on the multitude of supported platforms.

**Specs: Jasmine**

Specs for unit testing are written using a Javascript library called [Jasmine](http://jasmine.github.io/2.0/introduction.html). This is essentially a library
of functions to make unit testing easier. Current Privly specs can be found in the
"test" directories of the privly-applications repository ([example](https://github.com/privly/privly-applications/blob/master/shared/test/local_storage.js)).

Specs are intended to be run independent of HTML files, meaning if the function
you are testing interacts with the DOM you will need to create the required DOM
elements using Javascript before the test executes.

**Unit Test Runner: Karma**

The unit tests run in a variety of web browsers using the
[Karma test runner](http://karma-runner.github.io/0.12/index.html),
which is a system that opens all the test files in web browsers.
When you are developing a new Javascript function, we recommend opening
Firefox and Chrome with Karma. Anytime you save a "watched" file, the
unit tests will re-run and tell you which tests pass and fail. No more
hitting refresh in the browser!

For more details on running your unit tests on Karma, you should read the
[README](https://github.com/privly/privly-applications/blob/master/test/README.md).

</div>
<div id="TestCoverage" class="subgroup">

## Test Coverage ##

Your goal as a Privly developer is to have 100 percent unit test coverage on your code.
[CodeClimate](http://codeclimate.com) will record test coverage information for you
if you configure it. When code contributions are merged they will be merged into the
project's code coverage statistics.

</div>
<div id="ThreatModels" class="subgroup">

## Threat Models

Threat models detail the security expectations of a Privly App. Since every Privly
App has different capabilities, these threat models are specific to particular
Privly Apps. While threat models are an industry standard, the Privly project
views them with suspicion because they often assume the user is a strong agent of
their own security. However, while technical users can reasonably be expected
to use privacy software properly, this is not the case for "mass market" software.
All Threat Models should take into account the propensity for a user to
do the worst possible thing for their privacy. For instance, if your application
relies on the user protecting their own private key you can expect the
app to not test very well against the general user base.

You can view the current threat models in their application "doc" directories
of the privly-applications repository.
Here are the Threat Models for
[PlainPost](https://github.com/privly/privly-applications/tree/master/PlainPost/docs) and
[ZeroBin](https://github.com/privly/privly-applications/tree/master/ZeroBin/docs).

When writing a new application, you should be explicit about the
application's threat model. Otherwise people will unfairly criticize your application,
or worse: you will endanger your users.

</div>
</section>
<section id="TestingOverview" class="group">
<div id="Integrations" class="subgroup">

---

# Integrations #

Privly is built for extension frameworks on many different web browsers
running on several different operating systems. This increases the complexity
of testing Privly beyond what is reasonable for a local development
environment. To facilitate more robust cross-platform development we have a
cloud-based testing infrastructure capable of testing across the multiplicity
of browsers, extensions, and operating systems. In these sections you will
learn about setting up this cloud infrastructure.

</div>
<div id="IntegrationTesting" class="subgroup">

## Integration Testing ##

Integration tests are built around "activities," like creating or destroying content,
or viewing content injected into a web page. Where unit tests breaks Javascript
components into individual functions and tests them, integration tests ensure
everything is plugged together properly.

Running integration tests on many different browsers, operating systems, and especially
different extensions is a challenging task that Privly's architecture has made easy.
First, you should become acquainted with the constituent parts.

**Test Runner: Selenium Webdriver**

Selenium Webdriver is an excellent testing framework for programmatically controlling
user actions in a web browser. If you do any serious web development, you should become
well aquatinted with Selenium for running scripts (specs) that describe the
expected behavior of tests.

**Specs: Ruby Unit Tests and Capybara**

Selenium Webdriver needs a scripting language to run the tests because
vanilla Webdriver doesn't handle AJAX requests very well. Ruby's
[Capybara](https://github.com/jnicklas/capybara) supplies the functions for
interacting with the browser. We then write the expectations for these tests
using Ruby's unit testing framework.

So in summary, Privly uses Selenium Webdriver to control webbrowsers as they execute
a script written with Capybara. The tests will fail if there is an error or if
the Ruby Unit Test fails.

You can view
[examples](https://github.com/privly/privly-applications/blob/master/test/selenium/specs/tc_show_injected.rb)
of testing specs in the privly-applications test directory

For more details on running the integration tests locally, you should read the
[README](https://github.com/privly/privly-applications/blob/master/test/selenium/README.md).
You can also run the tests *remotely* using SauceLabs.

</div>
<div id="SauceLabs" class="subgroup">

## SauceLabs ##

Everyone has bugs they can't replicate because the devs don't have access to
a particular browser and OS combination. It is even more difficult to develop
against all the potential platforms.
[SauceLabs](https://saucelabs.com/opensauce) makes many different
browsers and operating systems available in a browser
virtualization service. This will be the coolest thing you learn today.

Another important aspect of our integration with SauceLabs is that we are able to
load the browser extensions and test this **more privileged** scripting context.
You don't need to learn how we accomplished this since it can be started with a
command.

For more details on running tests on SauceLabs, you should
[read the readme](https://github.com/privly/privly-applications/tree/master/test/selenium).

</div>
<div id="TravisCI" class="subgroup">

## TravisCI ##

TravisCI is a continuous integration service that runs every time commits are pushed to
GitHub. You should setup this service to make integration testing easy and automatic on
the privly-web, privly-chrome, and privly-firefox repositories.
The steps below assume you already have an account with SauceLabs.

1. [Sign up for an account](https://travis-ci.org/) on TravisCI.
1. Tell TravisCI to monitor your repositories for commits. We recommend monitoring all
of your Privly forks.
1. Install TravisCI's [command line utility](https://github.com/travis-ci/travis.rb#installation)
1. Find your SauceLabs username, [access key](https://saucelabs.com/account), and
[API URL](https://docs.saucelabs.com/reference/rest-api/) (https://YOUR_USERNAME:YOUR_ACCESS_KEY@saucelabs.com/rest/v1/users/YOUR_USERNAME).
1. Change into the directory containing the .travis.yml file (usually at the root of the repository).
1. [Update the .travis.yml file](http://docs.travis-ci.com/user/encryption-keys/)
to include your secure environment variables. The current .travis.yml files
all have numerous examples of the secured variables, so you should add the
results of the commands below to the appropriate line.
    `travis encrypt SAUCE_USERNAME=YOUR_USERNAME`  
    `travis encrypt SAUCE_ACCESS_KEY=YOUR_ACCESS_KEY`  
    `travis encrypt SAUCE_URL=YOUR_API_URL`  
1. Push commits to GitHub then watch it build in TravisCI!

**Potential pitfall:** The "secure environment variables" you added to the .travis.yml
file will not be displayed by Travis regardless of whether you encrypted them properly.
If you are having trouble with adding the variables, you should try
[SauceLabs configuration guide](https://docs.saucelabs.com/ci-integrations/travis-ci/)
since it will encrypt the tokens for you if you enter the proper repo.

**Potential pitfall:** Not many tests will run on SauceLabs on *pull requests* because
TravisCI's secure environment variables will not be decrypted by Travis. This means
tests will need to run on your fork instead of the pull request. Since these integrations
are immensely complex, we recommend opening pull requests early so you can get help
setting things up.


</div>
</section>

# Final Notes

Thats it! Please remember:

* When you encounter a problem, don't hesitate to mail the mailing list or drop into Privly's IRC channel.
* You can improve this guide by [forking it on GitHub](https://github.com/privly/privly.github.io/blob/master/pages/develop.md) and adding/editing details.
