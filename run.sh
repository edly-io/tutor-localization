

# Move edx-platfrom translations
EDX_PLATFROM_LOCALE_PATH="$(tutor config printroot)/env/build/openedx/locale/"
rm -r "$EDX_PLATFROM_LOCALE_PATH"
mkdir -p "$EDX_PLATFROM_LOCALE_PATH"

branch=$(git symbolic-ref --short HEAD)
pwd=$(pwd)

echo "Moving files for $branch from $pwd/edx-platfrom/ to $EDX_PLATFROM_LOCALE_PATH"
cp -r ./edx-platform/. "$EDX_PLATFROM_LOCALE_PATH"

tutor config save

echo "Files moved successfully"
echo "Run:"
echo " - tutor images build openedx"
echo " - tutor images build mfe"
echo
echo "Finally, start LMS CMS and MFE services i.e tutor local start lms cms mfe"