## `eclipse-temurin:25-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:e836f279648a289f9fc1ef53901b78a0ac16811b086cc0eb9e2c0fa37d54e894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:1db207ea08d085eb2425304680305610e18b75ca75e207a3583b7907e05f8f2b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2559189253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e543cbd0dd4e84ab0bce18469f0af985d7211cc931633df1423af3a6c46311`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:38:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:38:26 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:39:04 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:39:12 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:62f99f62aee2a5a4ce5496863232127365a2a15e7620f8fc1595c167f714d1f3`  
		Last Modified: Fri, 25 Sep 2026 22:39:16 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb562104bb100dc5e0b1c1c22ce1c2668b90d65e1dd53da5457f2ae4c46422`  
		Last Modified: Fri, 25 Sep 2026 22:39:17 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77409d571bf66e13e397415de20c8bce8271ce35d893f337904d0f53a1d79c5`  
		Last Modified: Fri, 25 Sep 2026 22:39:26 GMT  
		Size: 101.2 MB (101172844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356eb45ccd2f6f6871b9d641e3ed3165e2e04e1e4af2843fba64cfc1d927aeb4`  
		Last Modified: Fri, 25 Sep 2026 22:39:17 GMT  
		Size: 384.1 KB (384138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
