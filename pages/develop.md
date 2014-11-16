---
layout: page
title: Priv.ly Development School
---

{::options parse_block_html="true" /}

Want to become a Privly contributor? This guide will get you started coding,
documenting, and testing for the Privly project.
This guide assumes you want to dive deep into the extensible web.
If you just want to use the system, you should go to the ["about"](about.html) page.




<section id="Background" class="group">
<div id="BeginningKnowledge" class="subgroup">

# Beginning Knowledge #

1. *What's Privly?* Privly lets you keep your private information yours. Watch this <a href="https://vimeo.com/83073455" target="_blank">introductory video</a> (under 2 minutes). Also, watch this <a href="https://vimeo.com/83258935" target="_blank">technical teaser trailer</a> (a little over 2 minutes), but don't worry if you don't understand them. Privly is a framework for allowing you to post encrypted content anywhere on the web. Right now, Privly is essentially a bunch of browser extensions and apps. We've also provided an example content server.
2. *I want to try Privly before I start learning how to become a contributor.* Check out our <a href="https://www.privly.org/content/give-privly-try" target="_blank">Give Privly a Try</a> documentation. 
3. *How do I report bugs against this documentation?* If you see something wrong with this documentation or want something added, please <a href="https://github.com/privly/privly.github.io" target="_blank">submit an issue on GitHub</a>.
5. *How do I GitHub?* If you've never used GitHub, check out this <a href="https://help.github.com/articles/set-up-git" target="_blank">documentation</a>. We recommend using the terminal with git, not the GitHub native app.
6. *Feeling advanced?* Here's a <a href="https://github.com/privly/privly-organization/wiki/Privly-System-and-Organization-Overview" target="_blank">very technical system overview</a> on our Wiki. If you already know about extension development, we recommend you skip this guide and check out the Wiki.

</div>
<div id="First2Steps" class="subgroup">

## First 2 Steps ##

1. Join our <a href="http://groups.google.com/group/privly/" target="_blank">Privly Development Google Group</a>. We use it to broadcast announcements including information about our major development efforts.
2. <a href="https://github.com/privly" target="_blank">Follow us on GitHub</a>. Don't worry about cloning these repos yet. We'll go through that later. Each repository uses the GitHub issue queue for repository-specific issues. 
Here's a list of our repositories:
  
  * <a href="https://github.com/privly/privly-web" target="_blank">privly-web</a>: This is an example *content server* we've created.
  * <a href="http://github.com/privly/privly-test" target="_blank">privly-test</a>: This repository contains the test cases for Privly extensions.
  * Extensions with Maintainers
   * <a href="https://github.com/privly/privly-chrome" target="_blank">privly-chrome</a>: Chrome browser extension.
   * <a href="http://github.com/privly/privly-opera" target="_blank">privly-opera</a>: Opera browser extension
   * <a href="http://github.com/privly/privly-ios" target="_blank">privly-iOS</a>: iPhone app
   * <a href="http://github.com/privly/privly-android" target="_blank">privly-android</a>: Android app
  * Extensions with no Maintainers
   * <a href="http://github.com/privly/privly-firefox" target="_blank">privly-firefox</a>: Firefox browser extension
   * <a href="http://github.com/privly/privly-safari" target="_blank">privly-safari</a>: Safari browser extension
   * <a href="https://github.com/privly/privly-greasemonkey" target="_blank">privly-greasemonkey</a>: Greasemonkey script.
   * <a href="http://github.com/privly/privly-ie" target="_blank">privly-ie</a>: Internet Explorer browser extension

</div>
<div id="IRC" class="subgroup">

## IRC - Internet Relay Chat

Privly developers gather on IRC to chat informally about issues and concepts. Be prepared to wait a few hours depending on when you enter the room. Many Privly developers are on UTC -7 time.

<p>If you've never used IRC before, we recommend using the Freenode's <a href="http://webchat.freenode.net" target="_blank">web-based IRC client</a>. You can also check out this <a href="http://lug.oregonstate.edu/blog/irc/" target="_blank">documentation</a>&nbsp;on how to use IRC. When you're in your IRC client you can join us at #privly using these commands:</p><ul><li>/connect irc.freenode.net</li><li>/nick "your nick"</li><li>/join #privly</li></ul><p>Here are a few more basics:</p><ul><li>Type someone's "nick" to get their attention (i.e. jenerator: "stuff I want to say to jenerator")&nbsp;</li><li>Not everyone in the channel is actually present so be patient. They may take awhile to get back to you, but they will get back to you.</li><li>Stop by and say hi! We're here to welcome you. Feel free to ask questions anytime.</li></ul><p>You can also join Privly's IRC channel using this webchat:{::nomarkdown}<iframe height="400" src="https://webchat.freenode.net?channels=privly" width="500"></iframe>{:/nomarkdown}</p>

</div>
</section>
<section id="Background" class="group">
<div id="ExtensionSetup" class="subgroup">

## Setting Up Extensions for Development ##

If you want to develop either the content server or an extension, you'll need to install the development versions of the extensions. Each extension has a different way to work with changing code.

*Prerequisite*: You have git set up on your local machine. 

The Chrome development version is the most up to date extension at this time, but you can work with any of the browsers listed below.

</div>
<div id="ChromeExtension" class="subgroup">

**<a name="chrome"></a>Chrome Extension Development Installation**

1. Get the source code from GitHub. You can download it by cloning the repository.
2. Open Chrome and click the wrench icon (or go to Preferences).
3. Select Extensions
4. Check "Developer Mode" box if unchecked. 
5. Click "Load Unpacked Extension..."
6. Select the directory containing the chrome extension (where you just cloned it to).

</div>
<div id="FirefoxExtension" class="subgroup">

**<a name="firefox"></a>Firefox Extension Development Installation**

1. Clone the Git Repository, `git clone --recursive https://github.com/privly/privly-firefox.git`
1. In your terminal, find your Firefox profile directory.  
[Windows](http://support.mozilla.org/en-US/questions/941548),  
Mac: `cd ~/Library/Application\ Support/Firefox/profiles/`  
Linux:  cd ~/.mozilla/  
In that location, you will find your Firefox profile directories, e.g. 12a3bc4d.dev., change directories to your profile folder, for example `cd 12a3bc4d.dev`
1. Create a file to include a pointer to your code. For this, you need the path of where you cloned the Git Repository for the extension. Use vim (or your preferred editor) to create a filename with privly@priv.ly. On some systems (no, we're not sure which ones) this won't work and your filename will need to be {ec8030f7-c20a-464f-9b0e-13a3a9e97384}.
1. Type in the path your newly cloned git repository from earlier, e.g. C:\path\to\extension\privly-firefox\ (Windows) or /path/to/extension/privly-firefox/ (Linux, Mac), and save the file. 
1. Open Firefox.
1. You should see a dialog asking to confirm the Privly extension installation. 
1. Success! If it didn't work, see the tip from above, where the filename in your development profile folder may need to be privly@priv.ly or {ec8030f7-c20a-464f-9b0e-13a3a9e97384}.

</div>
<div id="TestingExtension" class="subgroup">

**<a name="test"></a>Test your Development Extension**

In whatever browser you just installed the development extension into, visit <a href="http://test.privly.org" target="_blank">test.privly.org</a> and click on any of the links under "Current Test Files". This will test if the Privly extension is injecting content properly. *Interested in developing more tests like this?* See our <a href="https://github.com/privly/privly-test" target="_blank">privly-test</a> repository. 

</div>
</section>
<section id="ContentServer" class="group">

## Content Server Setup

<div id="WhyContentServer" class="subgroup">

Your browser extension contains all the code you need to develop, but Privly doesn't assume its users have the extension installed. In some cases it may be important for you to install the content server to your local machine to develop the content server or an application. **Only get a local version of the content server if you must have it.** It is a useful exercise to stop thinking of web applications as something served from a web server, because extension-less operation is not the use case we want to emphasize.

**You still need a content server account to develop!** We grant accounts on <a href="http://dev.privly.org" target="_blank">dev.privly.org</a> to anyone who is working on the Privly project. You can visit the [dev.privly.org](https://dev.privly.org/) invite page and the server will send you the invite.

If you **must** install a local content server we have a basic setup guide that assumes you already have a working rails environment. Check out the <a href="https://github.com/privly/privly-web#development-server-installation">readme on GitHub</a>.

</div>
</section>
<section id="SystemOverviewHeading" class="group">
<div id="SystemOverview" class="subgroup">

## Component Outline

If you prefer more technical documentation about how the system works, check out the <a href="https://github.com/privly/privly-organization/wiki" target="_blank">wiki on GitHub</a>. 

Privly is composed of two primary components:

1. A Client-Side Extension (your browser extended by Privly), which changes the websites you view to support the secure injection of private information.
2. A content server, which holds the information that Privly injects into websites.

In principle, any webserver could return information for injection into Privly-type links. So we are referring to our content server as the "<a href="http://en.wikipedia.org/wiki/Reference_implementation" target="_blank">Reference Implementation</a>." It will support all the standard functionality of the browser extensions, and will exemplify the highest levels of content and browsing privacy. In the following sections, we are going to cover the current implementation of the Privly server, then move onto the targeted design for the alpha version of the extensions.

</div>
<div id="ReferenceImplementation" class="subgroup">

### Reference Implementation Content Server

We have two instances of the content server live on the internet:

1. <a href="http://dev.privly.org " target="_blank">dev.privly.org</a> hosts the most recent development release of the Privly server, and supports all the current functionality.
2. <a href="https://privlyalpha.org" target="_blank">privlyalpha.org</a> hosts the Kickstarter instance of the Privly application.

*Note: The domain "priv.ly" is used primarily for marketing purposes and is in the process of turning into a hub for Privly content servers. Developers can get an account on <a href="http://dev.privly.org" target="_blank">dev.privly.org</a> by signing up for an invitation.*

</div>
<div id="API" class="subgroup">

**Content Server API**

You can read through the <a href="https://github.com/privly/privly-web/blob/master/API.md" target="_blank">content server API on GitHub</a>. 

You can use this as a reference, but unless you understand the design considerations of the content server, you probably should not interface with it. The Privly system is not bound to a particular server technology, so you should only need to learn this if you are interfacing with the server developed by Privly developers.

</div>
<div id="ContentScripts" class="subgroup">

### Content Scripts

Every browser has its own set of extension capabilities and security restrictions, which makes simultaneous development on many platforms difficult. Although running scripts within different browsers is a mess, they all support inserting unprivileged scripts into web pages. To speed cross platform development, we built the core of Privly's functionality into a script that is injected into host pages. The current version of the privly.js file can be found in the [Chrome repository](https://github.com/privly/privly-chrome/tree/master/javascripts/content_scripts). Privly.js performs the following steps when it is loaded into the host page, but unless you are extension hacking you don't need to learn this process:

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
to see your development work. For instance, you should try to avoid anything that:

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

The extensions respond to numerous parameters that may be defined on the host page. For the current parameter set, you should view the [wiki](https://github.com/privly/privly-organization/wiki/URL-Specification).

There are two broad types of parameters:

1. Privly application parameters: These are usually parameters specified on Privly-type URLs (basically, URLs that are meant to be injected into the host page). They are specific to the application that will be injected into the page.
1. Host page directives: This are primarily attributes that a page can specify in order to alter the way Privly functions. One example is the `data-privly-exclude` attribute, which can tell the extension not to inject any content on the page.

[Read More.](https://github.com/privly/privly-organization/wiki/URL-Specification)

</div>
<div id="LinkBasedEncryption" class="subgroup">

### Link-Based Encryption

Cryptography provides many ways to secure private information. Each one has its own benefits and drawbacks. A layer of encryption across many Privly applications is worth
noting in this guide. Inspired by the link-based encryption of ZeroBin <a href="github.com/privly/privly-organization/wiki/ZeroBin" target="_blank">(ZeroBin)</a>,
many applications have a link that is shared with a decryption key not stored on the
content server. You can explore why this is a good idea by walking through the
various contexts in which a Privly URL may be generated. Here we are abusing web standards
by putting a decryption key to the right of the "#" symbol of a URL. This part of the
URL is not sent to the content server even if the user does not have the extension
installed. The processes are:

**Posting Content with the Extension**

1. Before submitting content to the web server, the extension encrypts the content according to a new random password
2. The extension sends the ciphertext to the remote server and receives back a link to the ciphertext
3. The extension adds the password to the link and submits it to the host page

**Posting Content without the Extension**

1. The user submits content to the content server's web application
2. The server encrypts the content with a random password and gives the end user the link with the password appended. The server does not log the random password without mounting an active attack against the user.
3. The user pastes the link with the password to any website

**Reading Content with an Extension**

1. The browser extension discovers a Privly-type link on a host page visited by the user
2. The extension requests the ciphertext from the remote server without sending the password found on the link
3. The extension decrypts the ciphertext according to the Link-Password

**Reading Content without an Extension**

1. The user clicks the Privly-type link
2. The application is downloaded from the content server without sending the link to the content server.
3. The application decrypts the content. Here the content server can compromise the key only if it mounts an active attack on the key.
4. The user views the decrypted content on the content server's web application

**The Advantages of Link-Passwords Only**

* Users don't need to have an extension to view content, but we can prompt them to install the extension every time they click on Privly-type content. Without this sharing model as the starting point, it will be difficult to get users to adopt the extension. This is the first step of our roll-out strategy.
* The data is protected from the host page by a terms-of-service on the storage server and optional sharing rules placed on the content
* Compromising the data requires compromising both the host page, and the content server
* Extensions that don't support the cryptography library yet can use the decryption facilities of the remote server

**The Disadvantages of Link-Passwords Only**

* The remote server has access to the password if the link is read without the extension
* If someone compromises the security of the host page they have access to the decrypted content

# Final Notes

Thats it! Please remember:

* When you encounter a problem, don't hesitate to mail the mailing list or drop into Privly's IRC channel.
* You can improve this guide by [forking it on GitHub](https://github.com/privly/privly.github.io) and adding/editing details.
