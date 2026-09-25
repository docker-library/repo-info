## `eclipse-temurin:26-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:4fc7f3f38b24a5e94ac187aa8ff621d5d9bca8af1eb6646b27dcaa8798c0b5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:201e8325c84a6f3e7d4b54ef9681a0f988ef1a930ed181acdb01493fbf395304
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2717794821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d4655ec98a2ed4d8535350b9f85f7646d4f1138f05bf119244aebc19a875bc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:44:47 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:45:09 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:45:17 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:45:17 GMT
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
	-	`sha256:9b6ba27474706ad71d81861b1a8e89b54dcb5f0fe9d186ba48455f762877871b`  
		Last Modified: Fri, 25 Sep 2026 22:37:16 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9550e8708ef23a679c69e1d275490a112c75c8b2a726249f9f2b99430bfd24b0`  
		Last Modified: Fri, 25 Sep 2026 22:45:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db2cd1861a4379be8aad296db0df7e43097be35ff6dbc8434b7c0216cd9ef9d`  
		Last Modified: Fri, 25 Sep 2026 22:45:35 GMT  
		Size: 259.8 MB (259777204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea9c6d9297b1de9ad4a0f103bb1c0dd57bc36d38bb5ce8ef46612503a22b791`  
		Last Modified: Fri, 25 Sep 2026 22:45:21 GMT  
		Size: 384.1 KB (384127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf14d7fe75c29e6cc590ec7ec86e961e708fc7a2796ed03e99dc4a04b002f1e0`  
		Last Modified: Fri, 25 Sep 2026 22:45:21 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:e44f96cace16d30cb6da5c8d201f60734abbb3da950b2763b869d53ee7e1557c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2479610191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6915ea577332d1680953b66a7a9004484fe52e73d447b0a7f2d3b788fdbc879d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:50:34 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:50:54 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:51:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:51:00 GMT
CMD ["jshell"]
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
	-	`sha256:8017950f312c8e6eebdbacb3a3b0448ba1e6c12f84a3c131402b528794bdd067`  
		Last Modified: Fri, 25 Sep 2026 22:51:04 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e59e4327183ed14e8039a239b147058ad4dbbef6f1e0c0ca084b44b43145e0e`  
		Last Modified: Fri, 25 Sep 2026 22:51:18 GMT  
		Size: 259.8 MB (259762033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5ac8f008e23a58c74beb71463196316175ee7ec228e729208157c66a602e0f`  
		Last Modified: Fri, 25 Sep 2026 22:51:04 GMT  
		Size: 355.5 KB (355494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e5dce5397a417a2eeb15d77a595490f0b35a19be0ec03bab478927043c7f4f`  
		Last Modified: Fri, 25 Sep 2026 22:51:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
