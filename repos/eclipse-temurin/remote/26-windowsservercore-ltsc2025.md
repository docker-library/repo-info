## `eclipse-temurin:26-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:3bb5afe3d029d63a2e02902ccb796208b4fbbd788b538d0807d5b726607ec1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:00b45ffd1ebab8331743ffff982a4e9c5a24f3f3f955d2b6e88ddb5edc290961
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700810197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab41448590389a3fcfda8343038097daa5924a43e0943fd123457ae2c45180b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:51 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 12 Aug 2026 17:46:45 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_windows_hotspot_26.0.1_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_windows_hotspot_26.0.1_8.msi ;     Write-Host ('Verifying sha256 (d09792de6d928826a285421af01c9334118904b540a6bc3bfbd225f362e22670) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'd09792de6d928826a285421af01c9334118904b540a6bc3bfbd225f362e22670') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:52 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:46:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea82c70ef92f494eab3c980362fa9e67d44100c3abdf5c33d23255c8abc94060`  
		Last Modified: Wed, 12 Aug 2026 17:35:50 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc2d3ef4c0777cc7e1bca68beff072bb572403a2344b21269b63d3409554928`  
		Last Modified: Wed, 12 Aug 2026 17:46:57 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a66ee9a4197d961b1b1eb5b4b3702eea48cfe5d8939ded80d2a18e7ddff112`  
		Last Modified: Wed, 12 Aug 2026 17:47:11 GMT  
		Size: 259.7 MB (259661987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef80bbf82c711786b65ddd4d17069d838417569c25ed4cc7ac3b19a87d8db6f9`  
		Last Modified: Wed, 12 Aug 2026 17:46:57 GMT  
		Size: 358.9 KB (358910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7debaa9654c61ca5c670b6cf39c482359cedaa265e5ad478033abb3c9536eb`  
		Last Modified: Wed, 12 Aug 2026 17:46:57 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
