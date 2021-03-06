export class ConfigCppGenerator {

    // String which we will output to the config.cpp file
    private strCfgPatches : string;
    private strMPMissionsContent : string;
    private strMissionsContent : string;
    private strMissionNameVersion : string;

    constructor(missionNameVersion : string) {
        this.strMPMissionsContent = "";
        this.strMissionsContent = "";
        this.strMissionNameVersion = missionNameVersion;

        var s:string = "";
        s = s + '// Auto generated by the Liberation modified build tool\n';
        s = s + 'class CfgPatches {\n';
        s = s + ' class ' + missionNameVersion + ' {\n';
        s = s + '  name ="' + missionNameVersion + '";\n';
        s = s + '  units[] = {};\n';
        s = s + '  weapons[] = {};\n';
        s = s + '  requiredVersion = 1.56;\n';
        //s = s + '  requiredAddons[] = {"vindicta_main"};\n';
        s = s + '  requiredAddons[] = {};\n';
        s = s + '  author = "Vindicta Team";\n';
        s = s + '  authors[] = {""};\n';
        s = s + '  versionAr[] = {1,0,0,0};\n';
        s = s + '  versionStr = "1.0.0.0";\n';
        s = s + ' };\n';
        s = s + '};\n';

        this.strCfgPatches = s;
    }

    public addMission(
            name : string,          // vindicta_v_1_2_3
            map : string,           // Altis
            briefingName : string)  // Vindicta 1.2.3
    {
        // Add MPMissions entries
        var s:string = this.strMPMissionsContent;
        s = s + '  class ' + name + '\n';
        s = s + '  {\n';
        s = s + '   briefingName = "' + briefingName + '";\n';
        s = s + '   directory = "' + this.strMissionNameVersion.toLowerCase() + '\\' + name + '.' + map + '";\n';
        s = s + '  };\n';
        this.strMPMissionsContent = s;

        // Add Missions entries
        var s:string = this.strMissionsContent;
        s = s + '  class ' + name + '\n';
        s = s + '  {\n';
        s = s + '   briefingName = "' + briefingName + " " + map + '";\n';
        s = s + '   directory = "' + this.strMissionNameVersion.toLowerCase() + '\\' + name + '.' + map + '";\n';
        s = s + '  };\n';
        this.strMissionsContent = s;
    }

    public getOutput() : string {
        var strOut = "";

        // Add CfgPatches
        strOut = strOut + this.strCfgPatches;
        
        // Format CfgMissions
        strOut = strOut + '\n\n';
        strOut = strOut + 'class CfgMissions\n';
        strOut = strOut + '{\n';

        strOut = strOut + ' class MPMissions\n';
        strOut = strOut + ' {\n';
        strOut = strOut +   this.strMPMissionsContent;
        strOut = strOut + ' };\n';

        strOut = strOut + ' class Missions\n';
        strOut = strOut + ' {\n';
        strOut = strOut + '  class ' + this.strMissionNameVersion + '\n';
        strOut = strOut + '  {\n';
        strOut = strOut + '  briefingName = "' + this.strMissionNameVersion + '";\n';
        strOut = strOut +    this.strMissionsContent;
        strOut = strOut + '  };\n';
        strOut = strOut + ' };\n';

        strOut = strOut + '};\n';

        return strOut;
    }
}