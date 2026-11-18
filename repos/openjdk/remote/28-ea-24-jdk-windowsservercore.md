## `openjdk:28-ea-24-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:070e03559fef051147686373e27e28d9d71bbf69eacd1e33d08929291b2987d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-24-jdk-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:fabe9477a9c020e42d0363fe94f4b8689d9c25bf1ff73150f81c47c2098cc1d4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2648831674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf99526e093df89c8e9f3b14847f4ceeffc6a703151b52fbbb4cbb0388ca38e4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Wed, 18 Nov 2026 21:34:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Nov 2026 21:36:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 18 Nov 2026 21:36:20 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 18 Nov 2026 21:36:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 18 Nov 2026 21:36:27 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:36:27 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_windows-x64_bin.zip
# Wed, 18 Nov 2026 21:36:28 GMT
ENV JAVA_SHA256=32b5425d4d159bde96e9c07d7675d4a63f5dc71303ded3b0e6289b6c656452b6
# Wed, 18 Nov 2026 21:37:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 18 Nov 2026 21:37:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607fc212399c7a1e9646e8c7ff2c0a267786cc49c63342e1427eecdc864cc21`  
		Last Modified: Wed, 18 Nov 2026 21:37:07 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce5de644f7f2b10e262efb8bd622cf956b47480682b75eeba944a19870e49c0`  
		Last Modified: Wed, 18 Nov 2026 21:37:08 GMT  
		Size: 352.9 KB (352909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06d7d8a4558865d9fe522873f85589a02fd3675b27c0b02ca029720af14d917`  
		Last Modified: Wed, 18 Nov 2026 21:37:07 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94782c627f76707d337e791f2315078544091e802627add7a407be96782860ab`  
		Last Modified: Wed, 18 Nov 2026 21:37:08 GMT  
		Size: 337.1 KB (337071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d14f4333725c4caf351aba242df539cc5f3f83649398029f98688446036d7a7`  
		Last Modified: Wed, 18 Nov 2026 21:37:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ca543f42c10b19a34e8edb2368ce34321602729437dc6c1c9f404652ea6791`  
		Last Modified: Wed, 18 Nov 2026 21:37:06 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4beb12566c360b1733f566dd7dbc2f45160643a93ef5f92f51153809fd06d0`  
		Last Modified: Wed, 18 Nov 2026 21:37:06 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a116802b9dfe4f34e20d5dc56d9be526446e2b66ed97f12be7befc19dc74b91e`  
		Last Modified: Wed, 18 Nov 2026 21:37:22 GMT  
		Size: 241.1 MB (241066178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e80574783c0796559fd5986e73c479831e8d2ac5f626e6add1f9887ba03aab8`  
		Last Modified: Wed, 18 Nov 2026 21:37:06 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-24-jdk-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:05e1f344c0b2679199154d59788623d71e29fa71f623c2101a49794810adb511
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487803594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78b287bca63521a5592f1f6307cb45093ae2ffa6e5aa03e4a3fc5b4cb52f60d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Wed, 18 Nov 2026 21:57:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Nov 2026 21:58:32 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 18 Nov 2026 21:58:33 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 18 Nov 2026 21:58:42 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 18 Nov 2026 21:58:42 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:58:44 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_windows-x64_bin.zip
# Wed, 18 Nov 2026 21:58:45 GMT
ENV JAVA_SHA256=32b5425d4d159bde96e9c07d7675d4a63f5dc71303ded3b0e6289b6c656452b6
# Wed, 18 Nov 2026 22:00:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 18 Nov 2026 22:00:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65841b302b08d693b1404e4375a279cd205e7e8d5d8b103d31bcad3f009a439`  
		Last Modified: Wed, 18 Nov 2026 22:01:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10402558946082163ee624d3740bee33ad28e6eecbcb1d47cbb2d57daec5fa3d`  
		Last Modified: Wed, 18 Nov 2026 22:01:04 GMT  
		Size: 349.5 KB (349462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20cc48e927624f74f3789db2623b6a6e0dcffecc8a980fd1bdf345f9415ea50`  
		Last Modified: Wed, 18 Nov 2026 22:01:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862ff007ae7386b287fa3a7dc3d532f7d59434d9cbce2084c8d61c14542bd8b5`  
		Last Modified: Wed, 18 Nov 2026 22:01:03 GMT  
		Size: 312.5 KB (312517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4314617d201f840c87ac2eccb19833c59d6a2429d0d5f16f1ffb371f2272b060`  
		Last Modified: Wed, 18 Nov 2026 22:01:01 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41c527c478b9a9e62e59694167f150fb6627e27f3f0010af544ac99aa26086a`  
		Last Modified: Wed, 18 Nov 2026 22:01:02 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa0e1a128ac7978d2508f1c345e6aa6f6232d5a5a123ef492d027b2ab4b8a5`  
		Last Modified: Wed, 18 Nov 2026 22:01:01 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be22907ee3044c9a8cd66f4197c52b07acae4e5bea99f1c4ff40df53f96405`  
		Last Modified: Wed, 18 Nov 2026 22:01:17 GMT  
		Size: 241.0 MB (241043018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f624bb7c2af1393f1f6cff41e5a5c5db72d412ba2fd28c0a2b0247d2cfb2f72`  
		Last Modified: Wed, 18 Nov 2026 22:01:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
