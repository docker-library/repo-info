## `eclipse-temurin:26-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:5c9ffaf989a7bea470101fa059ced24a39aabe686abf70d36d77a0ccc4442d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:71a2b4dbd5d1cf6f86132ad16df0b179eb9c4ac66acd9ed8a266d02a9e9822e5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2545120783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617e6bc88d1c302ff28299c1a1ababdc71e9356cd31cbcf2ad3410c26961321e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 21 Aug 2026 18:21:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:21:40 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:22:40 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (b35b3ded4429c10442e7809bf38b0000fc58d944b08e354c872938d638de4ee6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b35b3ded4429c10442e7809bf38b0000fc58d944b08e354c872938d638de4ee6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:22:46 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:4ac56e9b46369607f3e44f625c7837badee77a0ced7f7af03cb0e81ca296aea0`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cd63fcc98e126adef5fa4e0f81b4ae74d3e2c88b985af2cbe7bebfbc42096`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f562d1c52d45580b5b14f7e32332f81ea017d06a0711674e4da3bb58f5769c8c`  
		Last Modified: Fri, 21 Aug 2026 18:22:59 GMT  
		Size: 103.9 MB (103949413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743704775abfb549be8c274ca969ca24e3015cefeca215f9eaeb558caf4efc5f`  
		Last Modified: Fri, 21 Aug 2026 18:22:51 GMT  
		Size: 383.3 KB (383333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
