## `eclipse-temurin:11-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:9fec8673d3bd5118f65b21c1b989c08f5aea94f7144e1173c682d14ef5b7b1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:4312010ed4d0e48d96d2db4ff50e68fef142eac472e04c97a8baf4050fd7450c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2533169490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddc43ecac57619fb788603206cbab71567b8f8d1b21ea66097e68fdf5423e47`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:17 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:37:06 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_windows_hotspot_11.0.32.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_windows_hotspot_11.0.32.1_1.msi ;     Write-Host ('Verifying sha256 (2ee24ab2946b0454463bb38f5d9b2d7e4d2620af7f4fb46df6f313f32635ccdd) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '2ee24ab2946b0454463bb38f5d9b2d7e4d2620af7f4fb46df6f313f32635ccdd') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:12 GMT
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
	-	`sha256:9b6ba27474706ad71d81861b1a8e89b54dcb5f0fe9d186ba48455f762877871b`  
		Last Modified: Fri, 25 Sep 2026 22:37:16 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a5bbeccc167a6f5fe1aa759ebdab26565de497fcfc614d56723e0d0dfc51aa`  
		Last Modified: Fri, 25 Sep 2026 22:37:16 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e59fdd9f207a18b5bd5c55ed0c03412f96baa43720bab0b3a54a76c53e056`  
		Last Modified: Fri, 25 Sep 2026 22:37:22 GMT  
		Size: 75.2 MB (75153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ec96f90c3115185a88f60efce372df57eaafda99c363ec6db87c6d444f29f4`  
		Last Modified: Fri, 25 Sep 2026 22:37:16 GMT  
		Size: 383.8 KB (383778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:b141b3311c80c0b56aa5076861ca6367c23d08cc5658b46e4a348f91ba7c0e86
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2294977982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a1eb79be23a7796ccbb5424af785c9b77c7f28d02c5049159cd1d736445805`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:46:08 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:46:23 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_windows_hotspot_11.0.32.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_windows_hotspot_11.0.32.1_1.msi ;     Write-Host ('Verifying sha256 (2ee24ab2946b0454463bb38f5d9b2d7e4d2620af7f4fb46df6f313f32635ccdd) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '2ee24ab2946b0454463bb38f5d9b2d7e4d2620af7f4fb46df6f313f32635ccdd') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:46:30 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52a5caae33cc726fc03270c5f2b7abdf94d381b6d048509481bc7626fca6d`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3988be5f35ff39287235278ed8cc186ff34e7c2c483ca964ea6b6e23039753a5`  
		Last Modified: Fri, 25 Sep 2026 22:46:34 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefafb42de5c0af67262a7cb0273a1705f5c4e97e6808aa60cc02cbf430a3da`  
		Last Modified: Fri, 25 Sep 2026 22:46:40 GMT  
		Size: 75.1 MB (75130841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f51854e8883beca342420b3bb41fd0f806de8ac15d28b57f89eac66af4375b`  
		Last Modified: Fri, 25 Sep 2026 22:46:34 GMT  
		Size: 355.8 KB (355790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
