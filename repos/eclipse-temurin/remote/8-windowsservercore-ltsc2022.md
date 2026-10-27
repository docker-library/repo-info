## `eclipse-temurin:8-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:d7e22df84795ce58c706861039ebb8a33b6fa21443ca07fe459a3ab44f17d609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:492e45f439715bcc39f64ac7da60e99fcc152fcdf57470e664e6cd693fe612f2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2418101650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c202e51518d2b15f4f6420907c29671d249a7d706487ccdef881e4888e14f0d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:38 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:00:55 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:01:03 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181ee9f6ffd0723d844a7907cf31bb25142495506b6ec2308bfc26e848bbc440`  
		Last Modified: Tue, 27 Oct 2026 17:50:05 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6113d843730a6684cb19e0f55c6bdd587cb3f64b69bfd55cf2d1c2bc14e16bb0`  
		Last Modified: Tue, 27 Oct 2026 18:01:08 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94941e1df67e757fb7a1fb0493f7fb1d0556b49c5b7fbab85040ffd3ee971e`  
		Last Modified: Tue, 27 Oct 2026 18:01:19 GMT  
		Size: 190.7 MB (190701921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c353bcf30ebcbae707c575500f8d224432df67d0571e076f3c42f6e2d3734`  
		Last Modified: Tue, 27 Oct 2026 18:01:08 GMT  
		Size: 340.9 KB (340950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
