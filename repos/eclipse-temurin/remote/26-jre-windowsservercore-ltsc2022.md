## `eclipse-temurin:26-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:a1a5e9fc05deea763e0d9424c9af0130fff2028f2b6cb8142ec5a2275b81fbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:db1193dd3ced0a9ed7d49d900af8442ef821dc97789a57329ba60b094a0fbfe1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2330576087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9962f218dbd19ed818f1eadc6c4fd622d0b9ee2c368ba35dbff71cc813e75a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:08:08 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 13 Oct 2026 23:09:24 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:09:30 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da75a123273c323f04671556d378dc1470986e26a09014bd194e3f995d4e9c`  
		Last Modified: Tue, 13 Oct 2026 23:08:40 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0c84f583563e1b223614c7cec2d18e191d68c4b4c05665e62887af897bee26`  
		Last Modified: Tue, 13 Oct 2026 23:09:43 GMT  
		Size: 103.9 MB (103947468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c182fa2e6d2575a8c4b7c43a6633a868154ed3b031bf909c6719d03c50d159`  
		Last Modified: Tue, 13 Oct 2026 23:09:34 GMT  
		Size: 340.5 KB (340529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
