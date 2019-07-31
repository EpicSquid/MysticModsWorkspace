# Mystic Mods Workspace 1.14.4+

This is the workspace for the Mystic Mods in 1.14.4+ of Minecraft. Anything that uses any of these mods can be slotted into this workspace through the steps below.

## Setup
1. Clone the Repository
2. Run `setupMysticWorkspace.bat`. This will get *all* the dependencies from their various repos, checkout the correct branches and setup the intellij runs for them.
3. Open the folder as an intellij project and get to work!

If the run configuration asks for the classpath of a module, select `workspace.main`. This will ensure all the mods in the workspace are loaded into the game.

## Adding a New Mod to the Workspace
There are 3 places you will need to update to add a new project to the workspace. The following example is for adding the Roots mod, but you can replace it with any mod you like.

1. `settings.gradle` - add an extra line with the name of your module. Example:
	```groovy
	include 'Roots'
	```
2. `workspace/build.gradle` - add the following to both the client and server runs for the workspace `build.gradle`
	```groovy
	Roots {
		source project(':Roots').sourceSets.main
	}
	```
    Also further down, in the dependencies section add the following.
    ```groovy
    compile project(':Roots')
    ```
3. `setupMysticWorkspace.bat` - This should be updated to allow the automatic checkout of the repo. To do this, add the following (**Note:** Where where is a ... that indicates there is existing code to there)
	```bash
	@echo Cloning repos

	...

	git clone https://github.com/MysticMods/Roots.git

	# If your code has a 1.14 branch (i.e. needs to be switched from master) add the following
	@echo Switching to 1.14.4 branches
	
	...

	cd Roots
	git checkout 1.14
	cd ../

	...

	@echo Done!
	```
