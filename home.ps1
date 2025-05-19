# --------------------------------------------------------------------------
# Client Agent Typ festlegen: "Windows", "Linux" oder "MacOS"
# --------------------------------------------------------------------------
$clientAgent = 'Linux'  # Hier anpassen, falls ein anderer Typ gewünscht ist.

# --------------------------------------------------------------------------
# Setze alle vordefinierten Variablen (ohne Dopplungen)
# – zuerst: Basis (erste 14 Zeilen deiner Vorlage)
# – anschließend: zusätzliche Variablen (Agent, Build, System, Release)
# Die Pfade werden gemäß $clientAgent angepasst.
# --------------------------------------------------------------------------
switch ($clientAgent) {
    "Linux" {
        # Basis-Vorlage (erste 14 Zeilen) und OS-spezifische Einstellungen
        $env:AGENT_NAME                   = 'Hosted Agent'
        $env:AGENT_OS                     = 'Linux'
        $env:AGENT_OSARCHITECTURE         = 'X64'
        $env:AGENT_TEMPDIRECTORY          = '/home/vsts/work/_temp'
        $env:AGENT_TOOLSDIRECTORY         = '/usr/share/azure-pipelines-tool'
        $env:AGENT_BUILDDIRECTORY         = '/home/vsts/work/1'
        $env:BUILD_SOURCESDIRECTORY       = '/home/vsts/work/1/s'
        $env:BUILD_ARTIFACTSTAGINGDIRECTORY = '/home/vsts/work/1/a'
        $env:BUILD_BINARIESDIRECTORY      = '/home/vsts/work/1/b'
        $env:SYSTEM_COLLECTIONURI         = 'https://dev.azure.com/localorg/'
        $env:SYSTEM_TEAMPROJECT           = 'DemoProject'
        $env:SYSTEM_DEFINITIONID          = '42'
        $env:SYSTEM_HOSTTYPE              = 'build'
    
        # Zusätzliche Agent-Variablen
        $env:AGENT_ID                     = '1'
        $env:AGENT_MACHINE_NAME           = 'Hosted-Agent-Machine'
        $env:AGENT_HOMEDIRECTORY          = '/home/agent'
        $env:AGENT_VERSION                = '2.193.0'
        $env:AGENT_WORKFOLDER             = '/agent/_work'
    
        # Zusätzliche Build-Variablen
        $env:BUILD_BUILDID                = '1001'
        $env:BUILD_BUILDNUMBER            = '20210501.1'
        $env:BUILD_BUILDURI               = 'vstfs:///Build/Build/1001'
        $env:BUILD_DEFINITIONVERSION      = '10'
        $env:BUILD_REASON                 = 'Manual'
        $env:BUILD_REQUESTEDFOR           = 'John Doe'
        $env:BUILD_REQUESTEDFOREMAIL      = 'john.doe@example.com'
        $env:BUILD_SOURCEBRANCH           = 'refs/heads/main'
        $env:BUILD_SOURCEBRANCHNAME       = 'main'
        $env:BUILD_SOURCEVERSION          = 'abcdef1234567890'
        $env:BUILD_REPOSITORY_NAME        = 'MyRepository'
        $env:BUILD_REPOSITORY_PROVIDER    = 'GitHub'
        $env:BUILD_REPOSITORY_URI         = 'https://github.com/myorg/myrepository.git'
    
        # Zusätzliche System-Variablen
        $env:SYSTEM_ACCESSTOKEN           = 'token_placeholder'
        $env:SYSTEM_COLLECTIONID          = 'collection_id'
        $env:SYSTEM_DEFAULTWORKINGDIRECTORY = '/agent/_work/1'
        $env:SYSTEM_DEFINITIONNAME        = 'CI-Pipeline'
        $env:SYSTEM_JOBID                 = 'job_001'
        $env:SYSTEM_JOBATTEMPT            = '1'
        $env:SYSTEM_JOBPOSITIONINPHASE    = '1'
        $env:SYSTEM_PHASEDISPLAYNAME      = 'Build'
        $env:SYSTEM_PLANID                = 'plan_001'
        $env:SYSTEM_PULLREQUEST_PULLREQUESTID = '0'
        $env:SYSTEM_STAGEDISPLAYNAME      = 'Build Stage'
        $env:SYSTEM_TEAMPROJECTID         = 'project_id'
        $env:SYSTEM_TF_COLLECTION         = 'DefaultCollection'
        $env:SYSTEM_TASKINSTANCEID        = 'task_001'
        $env:SYSTEM_TEAMFOUNDATIONSERVERURI = 'https://dev.azure.com'
        $env:SYSTEM_DEBUG                 = 'false'
    
        # (Optional) Release-Variablen
        $env:RELEASE_RELEASEID            = '2001'
        $env:RELEASE_RELEASENAME          = 'Release-1'
        $env:RELEASE_ENVIRONMENTNAME      = 'Production'
        $env:RELEASE_ENVIRONMENTURI       = 'vstfs:///ReleaseEnvironment/123'
    }
    "Windows" {
        # Basis-Vorlage und Einstellungen für Windows:
        $env:AGENT_NAME                   = 'Hosted Agent'
        $env:AGENT_OS                     = 'Windows_NT'
        $env:AGENT_OSARCHITECTURE         = 'X64'
        $env:AGENT_TEMPDIRECTORY          = 'C:\agent\work\_temp'
        $env:AGENT_TOOLSDIRECTORY         = 'C:\agent\tools'
        $env:AGENT_BUILDDIRECTORY         = 'C:\agent\work\1'
        $env:BUILD_SOURCESDIRECTORY       = 'C:\agent\work\1\s'
        $env:BUILD_ARTIFACTSTAGINGDIRECTORY = 'C:\agent\work\1\a'
        $env:BUILD_BINARIESDIRECTORY      = 'C:\agent\work\1\b'
        $env:SYSTEM_COLLECTIONURI         = 'https://dev.azure.com/localorg/'
        $env:SYSTEM_TEAMPROJECT           = 'DemoProject'
        $env:SYSTEM_DEFINITIONID          = '42'
        $env:SYSTEM_HOSTTYPE              = 'build'
    
        # Zusätzliche Agent-Variablen
        $env:AGENT_ID                     = '1'
        $env:AGENT_MACHINE_NAME           = 'Hosted-Agent-Machine'
        $env:AGENT_HOMEDIRECTORY          = 'C:\agent'
        $env:AGENT_VERSION                = '2.193.0'
        $env:AGENT_WORKFOLDER             = 'C:\agent\_work'
    
        # Zusätzliche Build-Variablen
        $env:BUILD_BUILDID                = '1001'
        $env:BUILD_BUILDNUMBER            = '20210501.1'
        $env:BUILD_BUILDURI               = 'vstfs:///Build/Build/1001'
        $env:BUILD_DEFINITIONVERSION      = '10'
        $env:BUILD_REASON                 = 'Manual'
        $env:BUILD_REQUESTEDFOR           = 'John Doe'
        $env:BUILD_REQUESTEDFOREMAIL      = 'john.doe@example.com'
        $env:BUILD_SOURCEBRANCH           = 'refs/heads/main'
        $env:BUILD_SOURCEBRANCHNAME       = 'main'
        $env:BUILD_SOURCEVERSION          = 'abcdef1234567890'
        $env:BUILD_REPOSITORY_NAME        = 'MyRepository'
        $env:BUILD_REPOSITORY_PROVIDER    = 'GitHub'
        $env:BUILD_REPOSITORY_URI         = 'https://github.com/myorg/myrepository.git'
    
        # Zusätzliche System-Variablen
        $env:SYSTEM_ACCESSTOKEN           = 'token_placeholder'
        $env:SYSTEM_COLLECTIONID          = 'collection_id'
        $env:SYSTEM_DEFAULTWORKINGDIRECTORY = 'C:\agent\_work\1'
        $env:SYSTEM_DEFINITIONNAME        = 'CI-Pipeline'
        $env:SYSTEM_JOBID                 = 'job_001'
        $env:SYSTEM_JOBATTEMPT            = '1'
        $env:SYSTEM_JOBPOSITIONINPHASE    = '1'
        $env:SYSTEM_PHASEDISPLAYNAME      = 'Build'
        $env:SYSTEM_PLANID                = 'plan_001'
        $env:SYSTEM_PULLREQUEST_PULLREQUESTID = '0'
        $env:SYSTEM_STAGEDISPLAYNAME      = 'Build Stage'
        $env:SYSTEM_TEAMPROJECTID         = 'project_id'
        $env:SYSTEM_TF_COLLECTION         = 'DefaultCollection'
        $env:SYSTEM_TASKINSTANCEID        = 'task_001'
        $env:SYSTEM_TEAMFOUNDATIONSERVERURI = 'https://dev.azure.com'
        $env:SYSTEM_DEBUG                 = 'false'
    
        # (Optional) Release-Variablen
        $env:RELEASE_RELEASEID            = '2001'
        $env:RELEASE_RELEASENAME          = 'Release-1'
        $env:RELEASE_ENVIRONMENTNAME      = 'Production'
        $env:RELEASE_ENVIRONMENTURI       = 'vstfs:///ReleaseEnvironment/123'
    }
    "MacOS" {
        # Basis-Vorlage und Einstellungen für macOS:
        $env:AGENT_NAME                   = 'Hosted Agent'
        $env:AGENT_OS                     = 'Darwin'
        $env:AGENT_OSARCHITECTURE         = 'X64'
        $env:AGENT_TEMPDIRECTORY          = '/Users/vsts/work/_temp'
        $env:AGENT_TOOLSDIRECTORY         = '/usr/local/share/azure-pipelines-tool'
        $env:AGENT_BUILDDIRECTORY         = '/Users/vsts/work/1'
        $env:BUILD_SOURCESDIRECTORY       = '/Users/vsts/work/1/s'
        $env:BUILD_ARTIFACTSTAGINGDIRECTORY = '/Users/vsts/work/1/a'
        $env:BUILD_BINARIESDIRECTORY      = '/Users/vsts/work/1/b'
        $env:SYSTEM_COLLECTIONURI         = 'https://dev.azure.com/localorg/'
        $env:SYSTEM_TEAMPROJECT           = 'DemoProject'
        $env:SYSTEM_DEFINITIONID          = '42'
        $env:SYSTEM_HOSTTYPE              = 'build'
    
        # Zusätzliche Agent-Variablen
        $env:AGENT_ID                     = '1'
        $env:AGENT_MACHINE_NAME           = 'Hosted-Agent-Machine'
        $env:AGENT_HOMEDIRECTORY          = '/Users/agent'
        $env:AGENT_VERSION                = '2.193.0'
        $env:AGENT_WORKFOLDER             = '/agent/_work'
    
        # Zusätzliche Build-Variablen
        $env:BUILD_BUILDID                = '1001'
        $env:BUILD_BUILDNUMBER            = '20210501.1'
        $env:BUILD_BUILDURI               = 'vstfs:///Build/Build/1001'
        $env:BUILD_DEFINITIONVERSION      = '10'
        $env:BUILD_REASON                 = 'Manual'
        $env:BUILD_REQUESTEDFOR           = 'John Doe'
        $env:BUILD_REQUESTEDFOREMAIL      = 'john.doe@example.com'
        $env:BUILD_SOURCEBRANCH           = 'refs/heads/main'
        $env:BUILD_SOURCEBRANCHNAME       = 'main'
        $env:BUILD_SOURCEVERSION          = 'abcdef1234567890'
        $env:BUILD_REPOSITORY_NAME        = 'MyRepository'
        $env:BUILD_REPOSITORY_PROVIDER    = 'GitHub'
        $env:BUILD_REPOSITORY_URI         = 'https://github.com/myorg/myrepository.git'
    
        # Zusätzliche System-Variablen
        $env:SYSTEM_ACCESSTOKEN           = 'token_placeholder'
        $env:SYSTEM_COLLECTIONID          = 'collection_id'
        $env:SYSTEM_DEFAULTWORKINGDIRECTORY = '/agent/_work/1'
        $env:SYSTEM_DEFINITIONNAME        = 'CI-Pipeline'
        $env:SYSTEM_JOBID                 = 'job_001'
        $env:SYSTEM_JOBATTEMPT            = '1'
        $env:SYSTEM_JOBPOSITIONINPHASE    = '1'
        $env:SYSTEM_PHASEDISPLAYNAME      = 'Build'
        $env:SYSTEM_PLANID                = 'plan_001'
        $env:SYSTEM_PULLREQUEST_PULLREQUESTID = '0'
        $env:SYSTEM_STAGEDISPLAYNAME      = 'Build Stage'
        $env:SYSTEM_TEAMPROJECTID         = 'project_id'
        $env:SYSTEM_TF_COLLECTION         = 'DefaultCollection'
        $env:SYSTEM_TASKINSTANCEID        = 'task_001'
        $env:SYSTEM_TEAMFOUNDATIONSERVERURI = 'https://dev.azure.com'
        $env:SYSTEM_DEBUG                 = 'false'
    
        # (Optional) Release-Variablen
        $env:RELEASE_RELEASEID            = '2001'
        $env:RELEASE_RELEASENAME          = 'Release-1'
        $env:RELEASE_ENVIRONMENTNAME      = 'Production'
        $env:RELEASE_ENVIRONMENTURI       = 'vstfs:///ReleaseEnvironment/123'
    }
    default {
        Write-Host "Unbekannter Client Agent Typ: $clientAgent. Es werden keine Anpassungen vorgenommen."
    }
}

Write-Host "Umgebungsvariablen gemäß dem Client Agent '$clientAgent' wurden gesetzt."
# … weitere Variablen nach Bedarf

# ---- 2. D:-Laufwerk nachbilden ----
$root = Join-Path $PSScriptRoot 'DDrive'
if (-not (Test-Path $root)) {
    New-Item -Path $root -ItemType Directory | Out-Null
}
# Neues PSDrive in dieser Session
New-PSDrive -Name D -PSProvider FileSystem -Root $root -Scope Global | Out-Null

Write-Host 'Check Env ...'
Set-Location C:\AzureDevOpsUbuntuInspect\DDrive | Out-Null

if (-not (Test-Path -Path ".\home\vsts\work\_temp")){
    mkdir .\home\vsts\work\_temp | Out-Null
}

if ( -not (Test-Path -Path ".\usr\share\azure-pipelines-tool")){
    mkdir .\usr\share\azure-pipelines-tool | Out-Null
}

if (-not (Test-Path -Path ".\home\vsts\work\1")){
    mkdir .\home\vsts\work\1 | Out-Null
}

if (-not (Test-Path -Path ".\home\vsts\work\1\s")){
    mkdir .\home\vsts\work\1\s | Out-Null
}

if (-not (Test-Path -Path ".\home\vsts\work\1\a")){
    mkdir .\home\vsts\work\1\a | Out-Null
}

if (-not (Test-Path -Path ".\home\vsts\work\1\b")){
    mkdir .\home\vsts\work\1\b | Out-Null
}

Write-Host 'Arbeitsverzeichnisse wurden gefunden oder angelegt. Welche Art von Artefakten sollen Verwendet werden?'
$global:path_key = Read-Host('Für "s" source\working directory, "b" binaries directory, "a" artifacts staging directory')

switch($global:path_key){
    s {
        Set-Location .\home\vsts\work\1\s
        $current = "D:\home\vsts\work\1\s"
    }

    a {
        Set-Location .\home\vsts\work\1\a
        $current = "D:\home\vsts\work\1\a"
    }

    b {
        Set-Location .\home\vsts\work\1\b
        $current = "D:\home\vsts\work\1\b"
    }
}

# ---- 3. Kürzerer Prompt mit PSDrive-Pfad ----
function global:Prompt {
    switch($global:path_key) {
        s {
            $current = "D:\home\vsts\work\1\s"
            "PS $current> "
        }
        a {
            $current = "D:\home\vsts\work\1\a"
            "PS $current> "
        }
        b {
            $current = "D:\home\vsts\work\1\b"
            "PS $current> "
        }
    }
} 

function global:help {
    # Überschrift
    Write-Host "===============================================" -ForegroundColor Cyan
    Write-Host "     Azure DevOps vordefinierte Variablen" -ForegroundColor Cyan
    Write-Host "===============================================" -ForegroundColor Cyan
    Write-Host ""

    # Hilfsfunktion zum Ausgeben einer Gruppe von Variablen
    function Print-Group ($groupName, [string[]]$varList) {
        Write-Host "----- $groupName -----" -ForegroundColor Yellow
        foreach ($var in $varList) {
            # Lese den Wert aus der Umgebung – falls die Variable nicht gesetzt ist, wird ein leerer String geliefert.
            $value = (Get-Item "env:$var" -ErrorAction SilentlyContinue).Value
            if (-not $value) { $value = "[nicht gesetzt]" }
            # Formatiere Zeile: Variablenname linksbündig (40 Zeichen) und anschließend der zugehörige Wert
            Write-Host ("{0,-40} : {1}" -f "`$env:$var", $value) -ForegroundColor White
        }
        Write-Host ""
    }

    # Definition der Variablen-Gruppen (Doppelte aus der Vorlage sind hier nur einmal enthalten)
    $basisVars = @(
        'AGENT_NAME',
        'AGENT_OS',
        'AGENT_OSARCHITECTURE',
        'AGENT_TEMPDIRECTORY',
        'AGENT_TOOLSDIRECTORY',
        'AGENT_BUILDDIRECTORY',
        'BUILD_SOURCESDIRECTORY',
        'BUILD_ARTIFACTSTAGINGDIRECTORY',
        'BUILD_BINARIESDIRECTORY',
        'SYSTEM_COLLECTIONURI',
        'SYSTEM_TEAMPROJECT',
        'SYSTEM_DEFINITIONID',
        'SYSTEM_HOSTTYPE'
    )

    $agentVars = @(
        'AGENT_ID',
        'AGENT_MACHINE_NAME',
        'AGENT_HOMEDIRECTORY',
        'AGENT_VERSION',
        'AGENT_WORKFOLDER'
    )

    $buildVars = @(
        'BUILD_BUILDID',
        'BUILD_BUILDNUMBER',
        'BUILD_BUILDURI',
        'BUILD_DEFINITIONVERSION',
        'BUILD_REASON',
        'BUILD_REQUESTEDFOR',
        'BUILD_REQUESTEDFOREMAIL',
        'BUILD_SOURCEBRANCH',
        'BUILD_SOURCEBRANCHNAME',
        'BUILD_SOURCEVERSION',
        'BUILD_REPOSITORY_NAME',
        'BUILD_REPOSITORY_PROVIDER',
        'BUILD_REPOSITORY_URI'
    )

    $systemVars = @(
        'SYSTEM_ACCESSTOKEN',
        'SYSTEM_COLLECTIONID',
        'SYSTEM_DEFAULTWORKINGDIRECTORY',
        'SYSTEM_DEFINITIONNAME',
        'SYSTEM_JOBID',
        'SYSTEM_JOBATTEMPT',
        'SYSTEM_JOBPOSITIONINPHASE',
        'SYSTEM_PHASEDISPLAYNAME',
        'SYSTEM_PLANID',
        'SYSTEM_PULLREQUEST_PULLREQUESTID',
        'SYSTEM_STAGEDISPLAYNAME',
        'SYSTEM_TEAMPROJECTID',
        'SYSTEM_TF_COLLECTION',
        'SYSTEM_TASKINSTANCEID',
        'SYSTEM_TEAMFOUNDATIONSERVERURI',
        'SYSTEM_DEBUG'
    )

    $releaseVars = @(
        'RELEASE_RELEASEID',
        'RELEASE_RELEASENAME',
        'RELEASE_ENVIRONMENTNAME',
        'RELEASE_ENVIRONMENTURI'
    )

    # Ausgabe der Variablengruppen
    Print-Group "Basis-Variablen" $basisVars
    Print-Group "Agent-Variablen" $agentVars
    Print-Group "Build-Variablen" $buildVars
    Print-Group "System-Variablen" $systemVars
    Print-Group "Release-Variablen" $releaseVars
}

Write-Host ""

Write-Host 'Azure DevOps-Environment geladen. D:-Laufwerk einstieg unter:' $current



