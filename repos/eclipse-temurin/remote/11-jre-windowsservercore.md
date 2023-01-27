## `eclipse-temurin:11-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:b245f25a08d1ae9212481c41a4f3fa233e78f8306dd113f1b23f5fff87c06d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:86aa376738877f3eaea20a63ebbf259572dc29015bc79dfb7dc9cdd27903cc0b
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1461061155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4094422bd17ee32c5d079a69d7c754d143cd3c5c8c3c6583bd7e56c8f2ede8e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:16:59 GMT
ENV JAVA_VERSION=jdk-11.0.18+10
# Tue, 24 Jan 2023 18:23:11 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.18_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.18_10.msi ;     Write-Host ('Verifying sha256 (453ab7002d939ce44e54178fe1a83b4cf3cab6649e11c7aa7ee535feb6f0d7b6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '453ab7002d939ce44e54178fe1a83b4cf3cab6649e11c7aa7ee535feb6f0d7b6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:23:36 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111d83bb4b260e1c4ce8fe0d27e7c6042d3a711036b71ac8de84f5b0f4ab125`  
		Last Modified: Tue, 24 Jan 2023 21:22:52 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ca3b13c354e5fcccae90a7271ae6b252ddcb3ee5f863ff61fec1102203fabf`  
		Last Modified: Tue, 24 Jan 2023 21:25:09 GMT  
		Size: 74.5 MB (74450994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ba4c656788c373f0a7144c6122f59845da0922196408a5c343c9d8d56bc79f`  
		Last Modified: Tue, 24 Jan 2023 21:24:58 GMT  
		Size: 578.2 KB (578214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:d829a34b2e9e236270c3d9a59e6c39117e2d89c2151dada92c7fb56e3ad8285f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1782531190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8134b44ba993154f9ed33850ee301878dbb94b3e66efdff3dfb24fdf08c6ab`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:19:00 GMT
ENV JAVA_VERSION=jdk-11.0.18+10
# Tue, 24 Jan 2023 18:24:34 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.18_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.18_10.msi ;     Write-Host ('Verifying sha256 (453ab7002d939ce44e54178fe1a83b4cf3cab6649e11c7aa7ee535feb6f0d7b6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '453ab7002d939ce44e54178fe1a83b4cf3cab6649e11c7aa7ee535feb6f0d7b6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:25:08 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c122bb9f0323cc695b313bd1aee8b34789794e68ea8d06ba88cc2e149af229d3`  
		Last Modified: Tue, 24 Jan 2023 21:23:37 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b8af379bf55fbebf0c2348d4715d074491029ac0ef3461b6eb4c47c42c8f66`  
		Last Modified: Tue, 24 Jan 2023 21:25:29 GMT  
		Size: 74.2 MB (74236191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2b93b5edf90716b3ebad4329aa1d1d38adcfff987587633e1ff3f6650a346`  
		Last Modified: Tue, 24 Jan 2023 21:25:17 GMT  
		Size: 348.2 KB (348215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
