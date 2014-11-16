(function() {
    if (/pages\/download/.test(document.location.pathname)) {
        if (/firefox/i.test(navigator.userAgent)) {
            $('#big_download_link').attr('href', 
                $('#firefox_link').attr('href'));
        } else {
            $('#big_download_link').attr('href', 
                $('#chrome_link').attr('href'));
        }
    }
})();