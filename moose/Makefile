include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Moose
Moose_FILES = mooseRootListController.m
Moose_INSTALL_PATH = /Library/PreferenceBundles
Moose_FRAMEWORKS = UIKit
Moose_PRIVATE_FRAMEWORKS = Preferences
Moose_LIBRARIES = colorpicker
Moose_EXTRA_FRAMEWORKS += Cephei cepheiprefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Moose.plist$(ECHO_END)
