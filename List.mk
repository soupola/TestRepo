##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=List
ConfigurationName      :=Debug
WorkspacePath          := "C:\work"
ProjectPath            := "C:\work\List"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Gilles
Date                   :=04/21/15
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe 
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="List.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe 
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe 
CC       := C:/TDM-GCC-64/bin/gcc.exe 
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe 


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/list.c$(ObjectSuffix) $(IntermediateDirectory)/ListDemo.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/list.c$(ObjectSuffix): list.c $(IntermediateDirectory)/list.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/work/List/list.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/list.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/list.c$(DependSuffix): list.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/list.c$(ObjectSuffix) -MF$(IntermediateDirectory)/list.c$(DependSuffix) -MM "list.c"

$(IntermediateDirectory)/list.c$(PreprocessSuffix): list.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/list.c$(PreprocessSuffix) "list.c"

$(IntermediateDirectory)/ListDemo.c$(ObjectSuffix): ListDemo.c $(IntermediateDirectory)/ListDemo.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/work/List/ListDemo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ListDemo.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ListDemo.c$(DependSuffix): ListDemo.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ListDemo.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ListDemo.c$(DependSuffix) -MM "ListDemo.c"

$(IntermediateDirectory)/ListDemo.c$(PreprocessSuffix): ListDemo.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ListDemo.c$(PreprocessSuffix) "ListDemo.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


