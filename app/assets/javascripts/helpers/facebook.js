window.fbAsyncInit = function() {
  FB.init({
    appId      : '1053152988093734',
    xfbml      : true,
    version    : 'v2.7'
  });
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

$(document).on('click', '.fb-login', () => {
  FB.login((response) => {
      if (response.authResponse) {
        window.location = '/auth/facebook/callback'
      }
    }, {scope: 'email,user_likes', callback_url: 'http://localhost:3000/auth/facebook/callback'});
})