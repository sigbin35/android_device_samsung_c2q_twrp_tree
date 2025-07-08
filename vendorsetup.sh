
 # OrangeFox Addons
 export FOX_ENABLE_APP_MANAGER=1

 # Binaries & Tools
 export FOX_USE_BASH_SHELL=1
 export FOX_ASH_IS_BASH=1
 export FOX_USE_NANO_EDITOR=1
 export FOX_USE_TAR_BINARY=1
 export FOX_USE_SED_BINARY=1
 export FOX_USE_XZ_UTILS=1
 ##export FOX_REPLACE_BUSYBOX_PS=1

 # Version & Variant
 export FOX_VERSION="R12.1"
 export FOX_VARIANT="A14"
 export FOX_BUILD_TYPE="Stable"

 # A/B partitioning
 export FOX_AB_DEVICE=1
 ##export FOX_VIRTUAL_AB_DEVICE=1
 
 # Store settings at /data/recovery instead of internal storage
 ##export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

 # Security (Disables MTP&ADB during password prompt)

 # Debugging
 ##export FOX_RESET_SETTINGS=0
 ##export FOX_INSTALLER_DEBUG_MODE=1

 # Other..
 export TW_DEFAULT_LANGUAGE="en"
 export LC_ALL="C"
 

# run a process after formatting data to work-around MTP issues
# export OF_RUN_POST_FORMAT_PROCESS=1


 # Let's see our build VARs ZZZ
 if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 fi
fi
# Reserved
