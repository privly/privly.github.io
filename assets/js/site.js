(function() {

    /**
     * Check if user is on download page.
     */
    if (/pages\/download/.test(document.location.pathname)) {

        /**
         * Set the big download link to the Firefox or Chrome link 
         * based off the userAgent string.
         */
        if (/firefox/i.test(navigator.userAgent)) {
            $('#big_download_link').attr('href', 
                $('#firefox_link').attr('href'));
        } else {
            $('#big_download_link').attr('href', 
                $('#chrome_link').attr('href'));
        }
    }

    /**
     * If docs sidebar is present, monitor the scrolling for IDs
     * that should be indicated in the right side's navigation.
     */
    if ($('.bs-docs-sidebar').length > 0) {
        
        $('body').scrollspy({
            target: '.bs-docs-sidebar',
            offset: 40
        });
    }
})();