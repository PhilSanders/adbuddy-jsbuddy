adBuddy = ->

  adBuddytokenizer = ->
    text = ""
    possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    i = 0
    while i < 8
      text += possible.charAt(Math.floor(Math.random() * possible.length))
      i++
    window.adBuddycaptcha = text

  $(".adbuddy-protected").each(->
    if screen.width < 1024
      if $(this).is(':visible') == false and $($(this))[0].className.indexOf("not-mobile") is -1
        adBuddytokenizer()
        window.adBuddytoken = ["mobile", adBuddycaptcha]
    else
      if $(this).is(':visible') == false
        adBuddytokenizer()
        window.adBuddytoken = ["desktop", adBuddycaptcha]
      )

  if adBuddytoken? and adBuddytoken[0] == "mobile"
    $("body").append("<style type='text/css' media='screen'>#adbuddy-no-adb-container{width: 300px;height: 450px;text-align: center;padding: 10px;-webkit-box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);-webkit-border-radius: 8px;border-radius: 8px;z-index: 90001;background-color: #f1f1f1;position: absolute;left: 50%;top: 50%;margin-left: -150px;margin-top: -225px;display: none;}p.adbuddy-p{color: rgba(0, 0, 0, 0.5);margin: 10px 0 10px;font-size: 18px;font-weight: 200;line-height: 1.6em;}#adbuddy-no-adb-suggestions{margin-top: 35px;color: #ccc;}#adbuddy-donebutton{-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;box-shadow:inset 0px 1px 0px 0px #bbdaf7;background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5) );background:-moz-linear-gradient( center top, #79bbff 5%, #378de5 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5');background-color:#79bbff;-webkit-border-top-left-radius:0px;-moz-border-radius-topleft:0px;border-top-left-radius:0px;-webkit-border-top-right-radius:0px;-moz-border-radius-topright:0px;border-top-right-radius:0px;-webkit-border-bottom-right-radius:0px;-moz-border-radius-bottomright:0px;border-bottom-right-radius:0px;-webkit-border-bottom-left-radius:0px;-moz-border-radius-bottomleft:0px;border-bottom-left-radius:0px;text-indent:0;border:1px solid #84bbf3;display:inline-block;color:#ffffff !important;font-family:Courier New;font-size:15px !important;font-weight:bold;font-style:normal;height:45px;line-height:45px;width:131px;text-decoration:none;text-align:center;text-shadow:1px 1px 0px #528ecc;margin-top: -15px !important;}#adbuddy-donebutton:active{position:relative;top:1px;}#adbuddy-stopadblock{width: 230px;height: auto;}#adbuddy-overlay{min-width: 100%;min-height: 100%;position: fixed;top: 0px;bottom: 0px;left: 0px;right: 0px;background-color: rgba(0,0,0,0.8);z-index: 9000;display: none;}</style><div id='adbuddy-overlay'></div><div id='adbuddy-no-adb-container'><p class='adbuddy-p'><img id='adbuddy-stopadblock' src='https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/var/CDN/xenodecdn/stop-adblock.png' alt='stop-adblock'></p><p class='adbuddy-p'><strong>Your AdBlocker seems to be enabled...</strong></p><p class='adbuddy-p' style='margin-bottom: 15px;'>Notice that advertising helps us to mantain this project, so please disable your adblocking software in order to use our site, Thanks!</p><div id='adbuddy-no-adb-suggestions'><a href='#' id='adbuddy-donebutton' onclick='location.reload();'>Reload now</a></div></div>")
    $("#adbuddy-overlay").show()
    $("#adbuddy-no-adb-container").show()
  else
    if adBuddytoken? and adBuddytoken[0] == "desktop"
      $("body").append("<style type='text/css' media='screen'>#adbuddy-no-adb-container{width: 600px;height: 400px;text-align: center;padding: 10px;-webkit-box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);box-shadow: 0 0 15px 1px rgba(0,0,0,0.2);-webkit-border-radius: 8px;border-radius: 8px;z-index: 90001;background-color: #f1f1f1;position: absolute;left: 50%;top: 50%;margin-left: -300px;margin-top: -175px;display: none;}p.adbuddy-p{color: rgba(0, 0, 0, 0.5);margin: 10px 0 10px;font-size: 18px;font-weight: 200;line-height: 1.6em;}#adbuddy-no-adb-suggestions{margin-top: 35px;color: #ccc;}#adbuddy-donebutton{-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;box-shadow:inset 0px 1px 0px 0px #bbdaf7;background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5) );background:-moz-linear-gradient( center top, #79bbff 5%, #378de5 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5');background-color:#79bbff;-webkit-border-top-left-radius:0px;-moz-border-radius-topleft:0px;border-top-left-radius:0px;-webkit-border-top-right-radius:0px;-moz-border-radius-topright:0px;border-top-right-radius:0px;-webkit-border-bottom-right-radius:0px;-moz-border-radius-bottomright:0px;border-bottom-right-radius:0px;-webkit-border-bottom-left-radius:0px;-moz-border-radius-bottomleft:0px;border-bottom-left-radius:0px;text-indent:0;border:1px solid #84bbf3;display:inline-block;color:#ffffff !important;font-family:Courier New;font-size:15px !important;font-weight:bold;font-style:normal;height:45px;line-height:45px;width:131px;text-decoration:none;text-align:center;text-shadow:1px 1px 0px #528ecc;margin-top: -15px !important;}#adbuddy-donebutton:active{position:relative;top:1px;}#adbuddy-stopadblock{width: 230px;height: auto;}#adbuddy-overlay{min-width: 100%;min-height: 100%;position: fixed;top: 0px;bottom: 0px;left: 0px;right: 0px;background-color: rgba(0,0,0,0.8);z-index: 9000;display: none;}</style><div id='adbuddy-overlay'></div><div id='adbuddy-no-adb-container'><p class='adbuddy-p'><img id='adbuddy-stopadblock' src='https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/var/CDN/xenodecdn/stop-adblock.png' alt='stop-adblock'></p><p class='adbuddy-p'><strong>Your AdBlocker seems to be enabled...</strong></p><p class='adbuddy-p' style='margin-bottom: 15px;'>Notice that advertising helps us to mantain this project, so please disable your adblocking software in order to use our site, Thanks!</p><div id='adbuddy-no-adb-suggestions'><a href='#' id='adbuddy-donebutton' onclick='location.reload();'>Reload now</a></div></div>")
      $("#adbuddy-overlay").show()
      $("#adbuddy-no-adb-container").show()


$(document).ready ->
  adBuddy()
  $("#donebutton").on('click', ->
    location.reload()
  )