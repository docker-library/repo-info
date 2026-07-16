## `eclipse-temurin:26-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:b5f7019be3a9abfdf0d8ec69f40440748188df76bb442885ab57adaa42198c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:b6d1d2b0d523f0e4a43dc42877b759a88252531833031da9acc6f4098b76ba5e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459275242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841ef24a6195abe00fbf1588bf904cc0e8bcf3a9c9f3c6c59cdbc682f0c0cf06`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:59:49 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 16 Jul 2026 00:01:05 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ;     Write-Host ('Verifying sha256 (400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Thu, 16 Jul 2026 00:01:11 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:33ed6ec7347c5b7184b415c302c601e7784e7c30fb6468d1b6e256557b74b086`  
		Last Modified: Thu, 16 Jul 2026 00:01:15 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fad5bdc47f32159f9abaa8f9ccc44663a821928354df7efa82fed1488d2e97`  
		Last Modified: Thu, 16 Jul 2026 00:01:15 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6941f949872c7a7a84b6808d96306ab10af23a6e17b8b079b074e55c49343143`  
		Last Modified: Thu, 16 Jul 2026 00:01:26 GMT  
		Size: 103.9 MB (103892674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370a35e682420eacc5890d899992e522e722144afc0f0cb7d249b8189313ebb2`  
		Last Modified: Thu, 16 Jul 2026 00:01:15 GMT  
		Size: 371.7 KB (371729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
