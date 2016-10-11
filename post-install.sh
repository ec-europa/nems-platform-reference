#!/usr/bin/env bash

# Remove nems related sources if any.
rm -rf lib/features/nems_platform
rm -rf lib/themes/nems_platform
rm -f resources/nems-platform.make

# Create clean folders
mkdir lib/features/nems_platform
mkdir lib/themes/nems_platform

# Copy the sources in place.
cp -r vendor/ec-europa/nems-platform/modules/features/* lib/features/nems_platform
cp -r vendor/ec-europa/nems-platform/themes/* lib/themes/nems_platform
cp vendor/ec-europa/nems-platform/nems-platform.make resources/nems-platform.make

echo NEMS Sources copied...
echo Make sure that you add:
echo =================================
echo includes[] = "nems-platform.make"
echo =================================
echo to your site.make file.
