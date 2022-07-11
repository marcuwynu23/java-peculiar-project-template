# Manifest
# MANIFEST_TYPE=Main-Class
# MANIFEST_TYPE=Class-Path
# MANIFEST_VALUE=com.peculiar.project1.Main
# MANIFEST_VALUE=lib\peculiar-gui-v0.0.4.jar
PACKAGE=com.peculiar.project1.view
JAVA_FILE=Project1.java
# class root folder
CLASS_ROOT=com


ICON=icon.png
ICON_PATH=src\com\peculiar\ngita
ICON_PACKAGE=com\peculiar\ngita

all: compile-run clean-classes
	echo done.


compile-run:
	echo Compiling...
	jpb --compile
	xcopy /Y $(ICON_PATH)\$(ICON) $(ICON_PACKAGE)
	jar -uf dist\project.jar $(ICON_PACKAGE)\$(ICON)
	echo Running Application...
	jpb --run



add-to-Manifest:
		jpb --aim  $(MANIFEST_TYPE) $(MANIFEST_VALUE)

add-package:
	jpb --md $(PACKAGE)

add-class:
	jpb --cf $(PACKAGE) $(JAVA_FILE)

test:
	jpb --test

clean-classes:
	echo Cleaning class files...
	rd /Q /S $(CLASS_ROOT)

clean:
	echo Cleaning .jar and .exe..
	del dist\*.exe
	del dist\*.jar
