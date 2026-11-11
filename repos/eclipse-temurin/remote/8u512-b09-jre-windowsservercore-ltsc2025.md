## `eclipse-temurin:8u512-b09-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4219f71b37bde162ed1100bae99a6a6ab68c6cb7539fb38e562fd68d6c498950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:8u512-b09-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:0309d789d4cda2f4cfb23af21f3740177f436786bd63097ce38d682f1aa1e638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2479700938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4740fe1074992e5922fa2c99bd7fc13adfd2b4a2aaf521dc1a4c7997fd975f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:36 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 21:58:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:58:56 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ce7203ccd0953944d4c903698aee6382f7a7866b1f9d6fc4f6b334276300a`  
		Last Modified: Wed, 11 Nov 2026 21:52:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2916e359766de6006e2cda7ae8b68b451ff50a061e0de4d4dd8cf1aff18d6ff`  
		Last Modified: Wed, 11 Nov 2026 21:59:00 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bce909d1fc5efe9cc6299b9a007c5549320c01fc88029276aa541f4f49c22c`  
		Last Modified: Wed, 11 Nov 2026 21:59:05 GMT  
		Size: 72.0 MB (72006307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95158cdc687a77a0ed3fe4640a9ccb6ddfd8748552d8f73877702ff4bc4d51ff`  
		Last Modified: Wed, 11 Nov 2026 21:59:00 GMT  
		Size: 361.2 KB (361163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
