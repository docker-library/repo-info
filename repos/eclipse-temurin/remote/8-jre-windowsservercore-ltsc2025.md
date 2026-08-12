## `eclipse-temurin:8-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:815014602dbd7b532add0b59300791fa0e0c6ed623ee5cebacfda65419d929bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:21e8ff420f2229789c0df527a8faf20869532f933d309fa1a891ca2d90f82280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2513069790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a0febfc332aa1cd19905efe1b9d3f61eb37de390da9f8079ce24bda4e5103`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:44:14 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 17:44:44 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:44:50 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:ec60430df3f0a33f1554cb12017e0d893a2300d06c078a92a6b03f3951bcf4ff`  
		Last Modified: Wed, 12 Aug 2026 17:36:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abae2fa9dc41c89fa30b5d59cba45457d3cb23fdc730a39562ee22b07aa073ed`  
		Last Modified: Wed, 12 Aug 2026 17:44:55 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa12d45ca1272501e60ea69b6b6cccf7914b24b3cdeb64b4bbc1d8e19ef23f23`  
		Last Modified: Wed, 12 Aug 2026 17:45:00 GMT  
		Size: 71.9 MB (71922632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1faae71338fff43c88401497de2fea470dd5304397928ba5f558121039051f`  
		Last Modified: Wed, 12 Aug 2026 17:44:55 GMT  
		Size: 359.1 KB (359144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
