## `eclipse-temurin:8-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:940a293c803d5f8bba434e125d7101f5a79af8944e5b099446a5287aeebefe87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:8-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:a220266b9e124fd23cbb445c83e323451b57b81faa5c510eddff693e6c3e4007
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2417328393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729ed9e0fa2cd90230b8aee24a91b31464f809f40e5376a2b41479f1764ad278`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:04:49 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 23:05:16 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:05:26 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3033d1989bb525522772922f2f15183b1bbeac73e44eb447749792cb27dffdb`  
		Last Modified: Tue, 13 Oct 2026 23:05:30 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f7553de67e2b394fe525ae658a7fe194dbc21a74ecfb5a08c2312e5135b0b0`  
		Last Modified: Tue, 13 Oct 2026 23:05:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ec8c1f6cea8934e07d5dc52f477ace3f73d16c157fde1b4124f7d5b1d1cbd3`  
		Last Modified: Tue, 13 Oct 2026 23:05:40 GMT  
		Size: 190.7 MB (190699824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2365a183621042be031f276a256ba882d022c9c00232611eb54f6e462243134`  
		Last Modified: Tue, 13 Oct 2026 23:05:30 GMT  
		Size: 340.5 KB (340457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
