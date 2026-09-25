## `eclipse-temurin:8-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:71b8b45604d69458fdb7e0d01c50fabb4514b55fe05b5f69011cc53eeeeb32be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:adabe526eca83909f73c71260c8378186a1ff4132cd365eb2a6cf6266b96208c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2529974167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472c4aa5ad417e8ecefd5da5e504ea3308dc8b7915b472f63b860255dda8d975`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:05 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:36:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:36:53 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e154cb807894ea11bfd4d4476f00081c4f57645713d526558686f364d9eea65`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0faec1699e3a3cc4c5fbef9e9be7b68388d97cd520229fbf0eb0e398cb6176`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e84472fd4b648993fb6bc15b85a3b6499b7388dd21266a6629724379020fac`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 72.0 MB (71958441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701894052a083b9a7c65f1c3f2d100cc0cb43588ef0955bfbc58cc678267e392`  
		Last Modified: Fri, 25 Sep 2026 22:36:58 GMT  
		Size: 383.5 KB (383532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
