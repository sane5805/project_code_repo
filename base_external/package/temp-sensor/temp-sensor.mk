
##############################################################
#
# TEMP-SENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
TEMP_SENSOR_VERSION = aaf3530754440eea3e040f4ae4ebee4fb01ef867
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEMP_SENSOR_SITE = git@github.com:sane5805/aesd_final_proj_utils.git
TEMP_SENSOR_SITE_METHOD = git
TEMP_SENSOR_GIT_SUBMODULES = YES

define TEMP_SENSOR_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/temp-sensor all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define TEMP_SENSOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/temp-sensor/temp_sensor $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
