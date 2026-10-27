## `eclipse-temurin:26-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:f16956d0177d8f6f90801606651618ec868f8d6d74f0c267aab20f85ef44cbf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:a0ac848712d1262f09d7f6895a98834fae9ddd029686754b6f98c390dabe756c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2496365083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89abbbdf1f5c3fcc5a83c4c70ce646ea5927d553b29fb11457f49f380628e79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:51:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:42 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 27 Oct 2026 17:58:01 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:58:07 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa9ad0640d57c2fa487f165c1468c7ed2674b4d64066156533a40544ecf660c`  
		Last Modified: Tue, 27 Oct 2026 17:52:00 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b74f20396990da596092f306a526786e26726312461438547e5e5ff2580b0d`  
		Last Modified: Tue, 27 Oct 2026 17:58:12 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d49e7216ee9f5e55a5183c353ce5b472476f107978546d1427d40e70ca3cb6`  
		Last Modified: Tue, 27 Oct 2026 17:58:21 GMT  
		Size: 104.0 MB (103960230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc21dc10be9cb697849e411500608d5ae485dd2257dc7e745608c5f6395564`  
		Last Modified: Tue, 27 Oct 2026 17:58:12 GMT  
		Size: 353.2 KB (353205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
