(function() {

    /**
     * Check if user is on download page or home page.
     */
    if ( /pages\/download/.test(document.location.pathname) ||
                        "/" === document.location.pathname   ) {

        /**
         * Set the big download link to the Firefox or Chrome link 
         * based off the userAgent string.
         */
        if (/firefox/i.test(navigator.userAgent)) {
            $('#big_download_link').attr('href', 
              "https://addons.mozilla.org/en-US/firefox/addon/privly/");
        } else {
            $('#big_download_link').attr('href', 
              "https://chrome.google.com/webstore/detail/pkokikcdapfpkkkjpdaamjanniaempol");
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
