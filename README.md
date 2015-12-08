# OAuthable

Most APIs these days require OAuth to authenticate to use them. This can
often become a real pain to setup. OAuthable helps you setup, test, and
implement the OAuth connections to over 70 different APIs.

![APIs](https://s3.amazonaws.com/f.cl.ly/items/142l1P3W1A1l343L0A3B/Screen%20Shot%202015-12-08%20at%202.56.39%20PM.png?v=866aa042)

## Usage

You can simply use OAuthable.com to setup and test your APIs.

If you'd like to deploy OAuthable to your own server, you can easily
deploy this to Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/excid3/oauthable)

## Supported Services

Name | Fully Tested | Fully Documented
---- | ------------ | ----------------
23andMe | No | No
500px | No | No
Amazon | No | No
AngelList | No | No
App.net | No | No
Automatic | No | No
Azure | No | No
Bitly | No | No
Box | No | No
Buffer | No | No
Clef | No | No
Cobot | No | No
Concur | No | No
Constant Contact | No | No
Coinbase | No | No
Dash | No | No
Deezer | No | No
Desk.com | No | No
Disqus | No | No
DigitalOcean | No | No
Dribbble | No | No
Dwolla | No | No
Dropbox | No | No
eBay | No | No
Eventbrite | No | No
Evernote | No | No
Facebook | No | No
Fitbit | No | No
Flattr | No | No
Flickr | No | No
Foursquare | No | No
FreshBooks | No | No
Genius | No | No
GitHub | No | No
GitLab | No | No
Google | No | No
Gumroad | No | No
Harvest | No | No
Heroku | No | No
Imgur | No | No
Instagram | *Yes* | No
Instapaper | No | No
Jawbone | No | No
JIRA | No | No
Last.FM | No | No
LinkedIn OAuth2 | No | No
Mailchimp | No | No
Meetup.com | No | No
Netflix | No | No
PayPal | No | No
Paymill | No | No
Photobucket | No | No
Producthunt | No | No
Quickbooks | No | No
Rdio OAuth2 | No | No
Shopify | No | No
SoundCloud | No | No
Spotify | No | No
Stripe Connect | *Yes* | No
Steam | No | No
Trello | No | No
Tumblr | No | No
Twitch.TV | No | No
Twitter | *Yes* | No
Uber | No | No
Venmo | No | No
Vimeo | No | No
Windows Live ID | No | No
Xero | No | No
Yahoo | No | No
Yammer | No | No
Zendesk | No | No

## Contributing

There are a ton of APIs that could use verification that they're
working. It's really time consuming to try testing all these APIs so if
you have used any of these services with OAuthable and want to verify
they work in the README, just create a pull request to let the community
know!

If you'd like to add an API, just create a pull request with the
omniauth gem for it and the config for the seeds.rb file.

There are also plenty of tweaks that need to be made in the UI.

* Show users how to best setup API keys for Heroku
* Test support for all the services
* Better documentation for the urls that help users setup accounts/apps
* Better documentation for integrating the APIs into things outside of
  Rails / Omniauth
