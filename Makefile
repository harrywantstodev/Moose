include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Moose
Moose_FILES = Tweak.xm
Moose_LIBRARIES = colorpicker
Moose_EXTRA_FRAMEWORKS += Cephei cepheiprefs 

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += moose
include $(THEOS_MAKE_PATH)/aggregate.mk
