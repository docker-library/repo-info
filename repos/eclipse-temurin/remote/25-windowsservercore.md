## `eclipse-temurin:25-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:4b231876f35884fc7ba9088ab20743834df413d88a262abe75843e98c2ba588a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:25-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:28a4b5421e4c03e4a86c900971fd835c1b343564a972da324bdabf666766952b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2695078344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16c1ff347ad3597406a088f178b7d14fd07342600a85134ea05e18ac34a155c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 21 Aug 2026 18:20:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:20:58 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:21:57 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4_7.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4_7.msi ;     Write-Host ('Verifying sha256 (6e9d08f214b0b284c2d8a58a980761d976c6588145af9e3c75b22fc2982b6636) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '6e9d08f214b0b284c2d8a58a980761d976c6588145af9e3c75b22fc2982b6636') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:22:08 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:22:09 GMT
CMD ["jshell"]
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
	-	`sha256:03dfdf0946532a4c614b5fd91f60db1c063b0300d61329a8e0cdf64706d9f4f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e91024e0e307e232f20fe361aadb5116af683d2fdd4be8eb8cfed47c4d5e41`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4011cd1fde32d261116c40f6173c208fa04b1421dae91582f4d4313f183a1f`  
		Last Modified: Fri, 21 Aug 2026 18:22:27 GMT  
		Size: 253.8 MB (253848709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd0d3ea35f3b3d58f6dfcb2bcc63a4da5c3d3c88b923d333a1d49fc866fb9b4`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 440.3 KB (440311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90dc1e5dfadc372896fc88648c6a000876ebfbfc75ba49ff66ad46c49cd78a9`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:ef8836e0ec8a43d98a0d0d0ef7accec7e466e3f67533649b0887ba77cf295a9e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2438189327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0997e9de0d31ee229599d5379ea2fdd085bb6108d6d70598d9ab9f5999045710`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 18:23:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:23:08 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:23:56 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4_7.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4_7.msi ;     Write-Host ('Verifying sha256 (6e9d08f214b0b284c2d8a58a980761d976c6588145af9e3c75b22fc2982b6636) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '6e9d08f214b0b284c2d8a58a980761d976c6588145af9e3c75b22fc2982b6636') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:24:05 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:24:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940484b87172d706a507379081bac2f30799682daaa69000bd59a88a59e37a94`  
		Last Modified: Fri, 21 Aug 2026 18:24:09 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c0777a746f43c475c00cca1ba95bbc14feb2b2fef805938e3f92fd3b3fa63`  
		Last Modified: Fri, 21 Aug 2026 18:24:09 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d047ca61f0837e019a5f649d79c8060b8627908fef6e1049edb4c08c4caabac7`  
		Last Modified: Fri, 21 Aug 2026 18:24:24 GMT  
		Size: 253.8 MB (253832348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765c46f1d71360e96eb4ef7b8b0d94e9d9576a3a9c435f63aeb5a82aa008c210`  
		Last Modified: Fri, 21 Aug 2026 18:24:09 GMT  
		Size: 355.6 KB (355617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c85498ecf62e00a89c6475796428f01116ebe0717ccfc34ac642a17722ec930`  
		Last Modified: Fri, 21 Aug 2026 18:24:09 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
