@echo Cloning repos

git clone https://github.com/MysticMods/MysticalLib.git
REM git clone https://github.com/MysticMods/MysticalWorld.git
REM git clone https://github.com/MysticMods/Embers.git
REM git clone https://github.com/MysticMods/Traverse.git
REM git clone https://github.com/MysticMods/Firefly.git
@echo skipping git clone https://github.com/MysticMods/Glimmering.git
REM git clone https://github.com/duely/dwmh.git
REM git clone https://github.com/AranaiRa/ArcaneArchives.git
REM git clone https://github.com/MysticMods/GadgetryCore.git
REM git clone https://github.com/MysticMods/MysticalMachinery.git
REM git clone https://github.com/MysticMods/EmsFarming.git
REM git clone https://github.com/MysticMods/Roots.git

@echo Switching to 1.15.2 branches
cd MysticalLib
git checkout 1.15
cd ../
REM cd MysticalWorld
REM git checkout 1.14
REM cd ../
REM cd Embers
REM git checkout 1.14
REM cd ../
REM cd dwmh
REM git checkout 1.14
REM cd ..
REM cd ArcaneArchives
REM git checkout 1.14
REM cd ..
REM cd GadgetryCore
REM git checkout 1.14
REM cd ../
REM cd Roots
REM git checkout 1.14
REM cd ../

@echo genIntellijRuns for the WHOLE workspace

cd workspace
./gradlew genIntellijRuns

@echo Done!
