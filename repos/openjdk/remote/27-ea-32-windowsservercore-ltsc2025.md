## `openjdk:27-ea-32-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:7db788a75f3a8c8d1cc09e05f812973367f26633dac45a8f35664ae46e86709c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-32-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:cce90d146f687f9cad8cec48f9b996a8a1044f468809fb904b7cf1b996b70065
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579365259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe73360c131ddf7e10fc035411aada397b031dce63595f8a5199c62cb66b4c4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 27 Jul 2026 22:11:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:12:42 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:43 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 22:12:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:51 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:12:52 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:12:53 GMT
ENV JAVA_SHA256=fbe4e05c3bf4aa91e8782ae887d4dcca36195aa7cd9526a65653cd07782f678c
# Mon, 27 Jul 2026 22:13:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa8c7c75e49ce20085e91e62a7abd8f58d251e0738f21d32ec6efe05a066ae7`  
		Last Modified: Mon, 27 Jul 2026 22:13:29 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89277d092b4e3dd6a6f17b6e589b323dd1f51ca42cfd0bf7f8b01f84c8fdd79`  
		Last Modified: Mon, 27 Jul 2026 22:13:30 GMT  
		Size: 397.0 KB (396989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f77036e4416d9d881bd21ed59b95650dc4f82705b226d8aa6bd3bcb209ed71`  
		Last Modified: Mon, 27 Jul 2026 22:13:29 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71706400ceca0dc3aa4ae515e5583ec97033564503a5934b8571e47ea59552c8`  
		Last Modified: Mon, 27 Jul 2026 22:13:30 GMT  
		Size: 384.7 KB (384655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205439db0a0d2d88c734d3ca77163ed5037f52df66d282272ef38a0c87d48497`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf82efb7141fdfcad29c70a96b6d58d91a527be33bc80f44cfd2d27b08abc49d`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f00fcc7386a7b2b681e48cf6cedc102917c94c4a1659edae75f3c3678ab39`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e56b6c2d4805ff6a60901e40156a91cd7d49d1a5e7d1a71eb033a3d7113af6`  
		Last Modified: Mon, 27 Jul 2026 22:13:41 GMT  
		Size: 223.6 MB (223567655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5441a9d136b9e99d897fc275feda989792ade08202d307c8d43a83579403d7e`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
