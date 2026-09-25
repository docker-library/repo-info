## `eclipse-temurin:17-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:264e992190d69719b4bf237e04ec824e93b0b593618750cbf4a2faa77457e5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:17-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:251c0611b3ad4194ef0761e6631ee8699f03eda585b3282ce12083db750138a9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2533344818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8e0ec59958c67a6da97591ed24f856823cc2cba50fbee7f7733ea6a9989d54`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:32 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:08 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:15 GMT
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
	-	`sha256:9879415206733e7ec192c12ce6f9457b9e96e3e5b730f802826b173ed12b5f1f`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16023be7392c35981854491c59806b66b30fb04b455f5cdf7290c30324a54db2`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4126eb7e546382f13f3b6727a198eb2cf19de9480e75e53c547d357bd47f77`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 75.3 MB (75328663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bf8a433d01b74d224a0b979ae97c64e747be8ccd25b7522015b5ca250e3c2`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 383.9 KB (383938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
