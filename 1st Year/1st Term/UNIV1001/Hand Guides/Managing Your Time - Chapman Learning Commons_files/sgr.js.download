function sgr_2() {
    console.log('SGR_2 loaded!');
    let recaptcha = document.getElementsByClassName('sgr-recaptcha');
    for (var i = 0; i < recaptcha.length; i++) {
        grecaptcha.render(recaptcha.item(i), {'sitekey': sgr_recaptcha.site_key});
    }
}

function sgr_3() {
    console.log('SGR_3 loaded!');
    grecaptcha.execute(sgr_recaptcha.site_key, {action: 'sgr_global'}).then(function (token) {
        let recaptcha = document.getElementsByClassName('sgr-recaptcha');
        for (var i = 0; i < recaptcha.length; i++) {
            recaptcha.item(i).value = token;
        }
    });
}

document.addEventListener('DOMContentLoaded', function (event) {
    let sgr_version = document.getElementById('sgr_version');

    if (sgr_version) {
        console.log('SGR admin loaded!');
        sgr_version.addEventListener('change', removeKeys);

        function removeKeys() {
            let sgr_site_key = document.getElementById('sgr_site_key');
            let sgr_secret_key = document.getElementById('sgr_secret_key');

            if (sgr_site_key.value === sgr_recaptcha.site_key) {
                sgr_site_key.value = '';
                sgr_secret_key.value = '';
            }
        }
    }
});
