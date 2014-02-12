![adBuddy Logo][1]

# adBuddy + jsBuddy

## Block adBlockers and jsBlockers on your site

With this script you can prevent users with adBlockers and jsBlockers from using your site,
showing them a nice overlay with an explainatory message. If they disable such plugins, then they're allowed to use the site normally.

### Usage:

Include **jQuery and the adBuddy** script before closing your body tag:

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>  
    <script src="js/adbuddy.min.js"></script>

Then include **jsBuddy's code** (right after the other two):

    <style type='text/css' media='screen'>#jsbuddy-no-adb-container{width: 300px;height: 350px;text-align: center;padding: 10px;-webkit-box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);-webkit-border-radius: 8px;border-radius: 8px;z-index: 90001;background-color: #f1f1f1;position: absolute;left: 50%;top: 50%;margin-left: -150px;margin-top: -225px;}p.jsbuddy-p{color: rgba(0, 0, 0, 0.5);margin: 10px 0 10px;font-size: 18px;font-weight: 200;line-height: 1.6em;}#jsbuddy-no-adb-suggestions{margin-top: 35px;color: #ccc;}#jsbuddy-donebutton{-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;box-shadow:inset 0px 1px 0px 0px #bbdaf7;background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5) );background:-moz-linear-gradient( center top, #79bbff 5%, #378de5 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5');background-color:#79bbff;-webkit-border-top-left-radius:0px;-moz-border-radius-topleft:0px;border-top-left-radius:0px;-webkit-border-top-right-radius:0px;-moz-border-radius-topright:0px;border-top-right-radius:0px;-webkit-border-bottom-right-radius:0px;-moz-border-radius-bottomright:0px;border-bottom-right-radius:0px;-webkit-border-bottom-left-radius:0px;-moz-border-radius-bottomleft:0px;border-bottom-left-radius:0px;text-indent:0;border:1px solid #84bbf3;display:inline-block;color:#ffffff !important;font-family:Courier New;font-size:15px !important;font-weight:bold;font-style:normal;height:45px;line-height:45px;width:131px;text-decoration:none;text-align:center;text-shadow:1px 1px 0px #528ecc;margin-top: -15px !important;}#jsbuddy-donebutton:active{position:relative;top:1px;}#jsbuddy-stopadblock{width: 130px;height: auto;}#jsbuddy-overlay{min-width: 100%;min-height: 100%;position: fixed;top: 0px;bottom: 0px;left: 0px;right: 0px;background-color: rgba(0,0,0,0.8);z-index: 9000;}</style>
    
    <noscript id="js-warning">
    <div id='jsbuddy-overlay'></div><div id='jsbuddy-no-adb-container'><p class='jsbuddy-p'><img id='jsbuddy-stopadblock' src='https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/var/CDN/xenodecdn/jslogo.png' alt='stop-jsblock'></p><p class='jsbuddy-p'><strong>You have JS disabled...</strong></p><p class='jsbuddy-p' style='margin-bottom: 15px;'>Notice that you need to enable javascript in order to use our site, Thanks!</p><div id='jsbuddy-no-adb-suggestions'></div></div>
    </noscript>

Give your ads a class of **adbuddy-protected** if you want to detect if a user is blocking them and a class of **not-mobile** if you don't mind them disappearing when on mobile devices (for example if you have a responsive site).  

Created by: [@Jmlevick][2]  
License: [Coffeeware][3]  
Demo: [http://xenodesystems.appspot.com/adbuddy.html][4]

[![endorse](http://api.coderwall.com/jmlevick/endorsecount.png)](http://coderwall.com/jmlevick)


  [1]: https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/var/CDN/xenodecdn/github-assets/adbuddy-logo.png
  [2]: http://twitter.com/Jmlevick
  [3]: https://github.com/Jmlevick/coffeeware-license
  [4]: http://xenodesystems.appspot.com/adbuddy.html