# Microsoft Developer Studio Project File - Name="Cal3D" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** NICHT BEARBEITEN **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=Cal3D - Win32 Debug
!MESSAGE Dies ist kein g�ltiges Makefile. Zum Erstellen dieses Projekts mit NMAKE
!MESSAGE verwenden Sie den Befehl "Makefile exportieren" und f�hren Sie den Befehl
!MESSAGE 
!MESSAGE NMAKE /f "cal3d.mak".
!MESSAGE 
!MESSAGE Sie k�nnen beim Ausf�hren von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "cal3d.mak" CFG="Cal3D - Win32 Debug"
!MESSAGE 
!MESSAGE F�r die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "Cal3D - Win32 Release" (basierend auf  "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Cal3D - Win32 Debug" (basierend auf  "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Cal3D - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CAL3D_EXPORTS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CAL3D_EXPORTS" /FD /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x807 /d "NDEBUG"
# ADD RSC /l 0x807 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 /nologo /dll /machine:I386
# SUBTRACT LINK32 /profile

!ELSEIF  "$(CFG)" == "Cal3D - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CAL3D_EXPORTS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CAL3D_EXPORTS" /FD /GZ /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x807 /d "_DEBUG"
# ADD RSC /l 0x807 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /dll /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "Cal3D - Win32 Release"
# Name "Cal3D - Win32 Debug"
# Begin Group "Quellcodedateien"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\cal3d\animation.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\animation_action.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\animation_cycle.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\bone.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\cal3d.rc
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coreanimation.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corebone.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corekeyframe.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corematerial.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coremesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coremodel.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coreskeleton.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coresubmesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coretrack.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\error.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\global.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\loader.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\mesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\mixer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\model.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\physique.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\platform.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\quaternion.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\renderer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\saver.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\skeleton.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\springsystem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\submesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\vector.cpp
# End Source File
# End Group
# Begin Group "Header-Dateien"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\src\cal3d\animation.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\animation_action.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\animation_cycle.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\bone.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\cal3d.h
# End Source File
# Begin Source File

SOURCE=.\config.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coreanimation.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corebone.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corekeyframe.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\corematerial.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coremesh.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coremodel.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coreskeleton.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coresubmesh.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\coretrack.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\error.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\global.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\loader.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\mesh.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\mixer.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\model.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\physique.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\platform.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\quaternion.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\renderer.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\resource.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\saver.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\skeleton.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\springsystem.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\submesh.h
# End Source File
# Begin Source File

SOURCE=.\src\cal3d\vector.h
# End Source File
# End Group
# Begin Group "Ressourcendateien"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Source File

SOURCE=.\AUTHORS
# End Source File
# Begin Source File

SOURCE=.\ChangeLog
# End Source File
# Begin Source File

SOURCE=.\COPYING
# End Source File
# Begin Source File

SOURCE=.\INSTALL
# End Source File
# Begin Source File

SOURCE=.\README
# End Source File
# Begin Source File

SOURCE=.\TODO
# End Source File
# End Target
# End Project