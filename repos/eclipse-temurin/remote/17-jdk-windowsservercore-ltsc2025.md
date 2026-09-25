## `eclipse-temurin:17-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:7083250e0a599d32cae2428ab8f002da755eda9c53609808e3a53e9138f12a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:17-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:6dc4d7c091f9c28338358990acdaba1c40601fa29f664cb604365d7e0e00709a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2813944523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba49c83e476f05883ccea8ac50e5ff7f2c10d88fb761dd434e8c606a78ad7a3c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:15 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:24 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:37:24 GMT
CMD ["jshell"]
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
	-	`sha256:e6ab697f478a6ae4617e2dc29fafd9b0abaa53d53ea8b46374835bd1dd75364f`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccbb00f2b39ae8caa487c395a319675e73921fe70168ab4de146f58b306ea08`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29efd43d9c5762386a1ad973a4f1d3641a2f273e7f5e84ca59f81f2e58d0bb0c`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 355.9 MB (355927141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021eb33ec14185dc735696f9ea51310498f9c8e6f85e96258b383cb0053720a`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 383.9 KB (383908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b992352815d30993a474e7de3f1157a562336383ac5084ec35b3b15c45953bd`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
