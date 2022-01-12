#Makefile for Java Project Building
#main 
all: compile-run clean-classes
	echo done.
compile-run:
	echo Compiling...
	jpb --compile
	echo Running Application...
	jpb --run

#adding new package and new class
PACKAGE=com.peculiar.project-template
JAVA_FILE=Main.java 
add-new-package:
	jpb --md $(PACKAGE)
	echo done.
add-new-class:
	jpb --cf $(PACKAGE) $(JAVA_FILE)
	echo done.

#manifest Main-Class
MAIN_ENTRY_POINT=Main.java
MAIN_PACKAGE=com.peculiar.project-template
MAIN_CLASS=Main-Class
Main_CLASS_VALUE=com.peculiar.project-template.Main
add-Main-Class: 
	jpb --md $(MAIN_PACKAGE)
	jpb --cf $(MAIN_PACKAGE) $(MAIN_ENTRY_POINT)
	jpb --aim  $(MAIN_CLASS) $(Main_CLASS_VALUE)
	echo done.
# Manifest Class-Path
MANIFEST_CLASS_PATH= 
MANIFEST_CLASS_PATH_VALUE= 
add-Class-Path:
	jpb --aim $(MANIFEST_CLASS_PATH) $(MANIFEST_CLASS_PATH_VALUE)
	echo done.
# Author
MANIFEST_AUTHOR=Author
MANIFEST_AUTHOR_VALUE=Mark Wayne B. Menorca
add-Author:
	jpb --aim $(MANIFEST_AUTHOR) $(MANIFEST_AUTHOR_VALUE)
	echo done.
#testing
test:
	jpb --test
	echo done.
#cleaning
CLASS_ROOT=com
clean-classes:
	echo Cleaning class files...
	rd /Q /S $(CLASS_ROOT)
	echo done.
clean:
	echo Cleaning .jar and .exe..
	del dist\*.exe
	del dist\*.jar
	echo done.