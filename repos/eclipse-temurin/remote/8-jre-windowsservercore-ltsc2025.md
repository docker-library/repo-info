## `eclipse-temurin:8-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:7794f722a05430de2e6da2fd3070bf42a9aaae79f840e04436e1e71590474777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:1226622377ba809d2bee093a4a46ae32976088e520aa4c50fe4c00657986bbfc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2427250084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e295da4c55afa8d6ae83ef7f9c7b1f4b966c50c32ca1afb5b989dfc42685c3f7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:57:40 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 15 Jul 2026 23:58:29 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:58:36 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d28f3d4286d8215450433ae5747ef1c777c4da3ba0985e2d078eafc6d6d978`  
		Last Modified: Wed, 15 Jul 2026 23:58:41 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68b681d7693eccc89a3f20fa341816dee843a0e4e3ed0f8d9b5c107a406e80e`  
		Last Modified: Wed, 15 Jul 2026 23:58:41 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749c2c5b9bbababe968b70fb99dc56abb21ea02771581881e96118703f687ebc`  
		Last Modified: Wed, 15 Jul 2026 23:58:46 GMT  
		Size: 71.9 MB (71884727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039e1eeaddf7d69b6c6a1960685831df5c9c5db6efd90b87963b5394efaa3681`  
		Last Modified: Wed, 15 Jul 2026 23:58:41 GMT  
		Size: 354.6 KB (354579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
