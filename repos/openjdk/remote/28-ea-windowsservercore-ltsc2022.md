## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:6ae0e48f14677463f837a211a0365dd8a5f48646eaaee2ecf019154ab0adb1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:b2e787e59b26dbf254ddc3b702536aa2f07d4210a49e71327fdfd8cfec55343d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467653551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b76e65762c6c52508ab130f25327f5aceb427da62ec0c754b2f3bc3028778a0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 01:01:07 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:09 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 01:01:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:21 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 01:01:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_windows-x64_bin.zip
# Tue, 03 Nov 2026 01:01:24 GMT
ENV JAVA_SHA256=0b0f22bff341457b1eb5d6e023d3eb47eddbb1b16615de5f50820471b9c7677d
# Tue, 03 Nov 2026 01:03:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:03:23 GMT
CMD ["jshell"]
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
	-	`sha256:52515a88dba4a01d0de7a00565b95a7a5ecfaa05d38aa12ab10a94ecc5e53dba`  
		Last Modified: Tue, 03 Nov 2026 01:03:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc4a02b77e31159eb29199df986e644696bee8440048fa0460675e30d21e2e1`  
		Last Modified: Tue, 03 Nov 2026 01:03:39 GMT  
		Size: 360.5 KB (360487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b57205484ac6ccb60a93116c5db8580c6198e20b626206af42a75c5fddc25b`  
		Last Modified: Tue, 03 Nov 2026 01:03:38 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4b204321f59f7a47b78f570186ea06ae340e3979838586208dc338b701c8d`  
		Last Modified: Tue, 03 Nov 2026 01:03:39 GMT  
		Size: 291.2 KB (291164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aed65041acb3d3a08a9d1c35cef336be94c8a02c1383b8d59c3d47257b39df9`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca035a60226f5350ebea0502cd97eb32c3d34f7546e355a7785bb607e31ea40`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73145c996692f10b440baf8fcdc1a243443ef5da72af9d86aa23e1d05e65f4b`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f2477eb1ca5731b3a80d936d2a8934aa495dfc400d8f3a7911265ff89ab2d`  
		Last Modified: Tue, 03 Nov 2026 01:03:53 GMT  
		Size: 239.9 MB (239937877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1b82ce5d22a6d3afbce03be679866d260bf52fb77b034ea17c4264a5978d8a`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
