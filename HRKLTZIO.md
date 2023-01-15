# Add a bin to /system/bin
Source: https://www.opersys.com/downloads/cc-slides/embedded-android/exercises-220325.pdf

In order for the build system to choose to build this new “build module” that we just
added, the name of this module must be added to the list of modules the build system
is instructed to build. If you look in the Android.mk we just added, you’ll see that the
name of the module is “rootfs-glibc”. Hence, we need to find a proper entry to extend
the PRODUCT_PACKAGES variable (which lists the packages to be built for the
target). In this specific case, one of the easiest ways to do so for the type of artifacts
we are adding is to modify the PRODUCT_PACKAGES in
[aosp]/build/target/product/base_system.mk to add the following entry:
PRODUCT_PACKAGES += rootfs-glibc
It would have of course been preferable to modify an .mk file under device/…. but the
build system won’t allow an .mk file under the device/ directory to add something the
/system partition. If you try that you’ll get an error similar to this:

```
FAILED:
build/make/core/artifact_path_requirements.mk:26: warning:
device/google/cuttlefish/vsoc_x86_64/phone/aosp_cf.mk produces files inside
build/make/targe
t/product/generic_system.mks artifact path requirement.
Offending entries:
system/glibc/rootfs-glibc
In file included from build/make/core/main.mk:1342:
build/make/core/artifact_path_requirements.mk:26: error: Build failed.
09:01:09 ckati failed with: exit status 1
#### failed to build some targets (42 seconds) ####
```