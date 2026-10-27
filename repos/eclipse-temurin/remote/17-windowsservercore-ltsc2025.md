## `eclipse-temurin:17-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:bbea71358ae7782fe8ed2628d61f1cc1201f6986b7cd9970318819738c06fd00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:17-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:f3cb5d5681b3c62141477247719f7526f59e364e346ddff3fa3b9bc08373c5be
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2748310817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47387130851968b2f553f169b14326c51c9f044ed912faa6239448f431d13aa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:12 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 17:57:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:57:52 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:57:53 GMT
CMD ["jshell"]
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
	-	`sha256:deac8411208c7be4087f6269cdff958ca4539894d5540fbed510906417fdf4c5`  
		Last Modified: Tue, 27 Oct 2026 17:50:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba4b10b70af63c82c88e5fc9f59a72fd6c82a822ed3820272ed92d64283223f`  
		Last Modified: Tue, 27 Oct 2026 17:57:57 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815070db3951c82d4cfc908a65d3267ba80f3c6c70823d84e66b4df8f2e066c`  
		Last Modified: Tue, 27 Oct 2026 17:58:12 GMT  
		Size: 355.9 MB (355905145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cd82665186ba32d117cc5155725d599d3530a689fd96a233af7714f930b97e`  
		Last Modified: Tue, 27 Oct 2026 17:57:57 GMT  
		Size: 352.7 KB (352713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412903a180a70a3022c8d0b4f3f061485fc2584e0a8d238c7d2538fe68f77df7`  
		Last Modified: Tue, 27 Oct 2026 17:57:57 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
