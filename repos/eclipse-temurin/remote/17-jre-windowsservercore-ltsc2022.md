## `eclipse-temurin:17-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:3355228468eea56a72b816270e2e1a96fb8fa0f974548a0c2be18af12df3dbe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:f895aee4fc61a112c9bd8ca0a1d6acd57a5e14f9e54b9a45ddc84410fa0e2532
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2321936026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3d59be1665465242562aafa097396c1029828052f68b713d5bfc6b321f0318`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:48:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:05:57 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:06:30 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ;     Write-Host ('Verifying sha256 (89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:06:39 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9edde7b0f89f2e291c4c0ffd329ea23e002427588c06a2d5ea91c07f3e3bcfe`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c92a759fade3e9857b2a77ec3a93e8db3d987d0d332c3be8e5b1041b7a344a0`  
		Last Modified: Fri, 20 Nov 2026 18:06:44 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9637a3f427e0f9db73937d73611b7dce794aa524194a038f9050fa33ae1d2b`  
		Last Modified: Fri, 20 Nov 2026 18:06:50 GMT  
		Size: 75.5 MB (75486530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da44a8cbc3019e30a93051fe209102536cbb003537c762ae863296da13bbed`  
		Last Modified: Fri, 20 Nov 2026 18:06:44 GMT  
		Size: 356.2 KB (356195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
