jekyll build
echo "build complete"
echo "copying pages to not require html extension..."
cd _site/pages
cp about.html about
cp contact.html contact
cp donate.html donate
cp download.html download
cp privacy.html privacy
cp servers.html servers
cp terms.html terms
cp trademark.html trademark
