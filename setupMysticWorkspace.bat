@echo Cloning repos

git clone https://github.com/MysticMods/MysticalLib.git
git clone https://github.com/MysticMods/MysticalWorld.git
git clone https://github.com/MysticMods/Embers.git
git clone https://github.com/MysticMods/Traverse.git
git clone https://github.com/MysticMods/Druidcraft.git
git clone https://github.com/MysticMods/Firefly.git

@echo Switching to 1.14.4 branches
cd MysticalLib
git checkout 1.14
cd ../
cd MysticalWorld
git checkout 1.14
cd ../
cd Embers
git checkout 1.14
cd ../

@echo genIntellijRuns for the WHOLE workspace

cd workspace
./gradlew genIntellijRuns

@echo Done!
