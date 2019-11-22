@echo Cloning repos

git clone https://github.com/MysticMods/MysticalLib.git
git clone https://github.com/MysticMods/Traverse.git

@echo Switching to 1.14.4 branches
cd MysticalLib
git checkout 1.14
cd ../

@echo genIntellijRuns for the WHOLE workspace

cd workspace
./gradlew genIntellijRuns

@echo Done!
