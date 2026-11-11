## `eclipse-temurin:8-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:591f0c6fddb82538d596d52d046115754d0ff5fbd2ae704ea63c8f35d2a91034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:8-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:1197b8932cf07546d527fd0db1abd286c9cf9a1916a268f25e44e7ef368e1e54
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2598481856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a586a3aff7e22d5886a696d67f5a29319001fdb205f55e8c6a16bbcd7089594d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:53:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:53:08 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 21:54:15 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:54:22 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:0424bf2a0ebe4e53eccb510a3df92bce08e3e2450a783d85a1af6c24c50cf491`  
		Last Modified: Wed, 11 Nov 2026 21:54:26 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fb46c9b7d44ca55437b0012e8e2f34a14ec25cf946c160ee2b064ca70ddbc5`  
		Last Modified: Wed, 11 Nov 2026 21:54:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847de6040923aa79e1a35b8f09b683d5270b809be9b23b9de003defa132070f1`  
		Last Modified: Wed, 11 Nov 2026 21:54:36 GMT  
		Size: 190.8 MB (190787201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19442cbc4a127da3159f6f6d5e8c196130d139f0f553dad09b60e38b4fff0abb`  
		Last Modified: Wed, 11 Nov 2026 21:54:27 GMT  
		Size: 361.2 KB (361184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
