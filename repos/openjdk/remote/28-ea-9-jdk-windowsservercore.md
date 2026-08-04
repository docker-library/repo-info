## `openjdk:28-ea-9-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:041dd0265e46944cd5751b621611b256bf37a3e3ae000e0cd8ddbe5471057c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-9-jdk-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:b5b39870b0b155ee51f6bd9364068357f7e43f0108cd0d2beceddb105c9dae40
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2574121069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd712783766c280afa37458e8331574ef9778294b75ce7e15440d4cbad433d2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:00:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 01:00:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:27 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:00:29 GMT
ENV JAVA_SHA256=141ba918a0869fa95529b3623e5ef3454fa8020cad9bac478ec7d19b05afd271
# Tue, 04 Aug 2026 01:00:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:57 GMT
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
	-	`sha256:c60df8d634e35b2ece020a146c81635e30c8a5b08942c08b5ff719d86ad78580`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00c9b404eeea081ed8b12e3fadc6fba1861ef19e81002d2082e9d72366b96c7`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 396.0 KB (396022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc2f5ffff1e1b0fb6c984342dcb28761d25b7c1fd9e8019f7d391ba47e6b04`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10edc5c1093eb79a880cc1fb8b54794d23d4113491d514c77cfae1840871e3d8`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 384.4 KB (384412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4fcc964c66f92c1c8c55174443cb4d114d1ebde9eada005e32700294bde5b1`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80989dd47bb2c3f8067ddae98ca87a9f7980b6f0ac1978b018ffd0fe8a5589b4`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e429ac06955035c91aa6275c66c3e586dfff8bd66ff643290780d442f4234ad4`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524e8fe6ba8c16fa22698da799fe5670d8120f910a8244589b37ab86d0ef312`  
		Last Modified: Tue, 04 Aug 2026 01:01:15 GMT  
		Size: 218.3 MB (218324691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4944da752cb139094ba45d69e09448d59a905e59dc0ea84e6840e1ec55dc68`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-9-jdk-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:c7bf568b33195c8f1b72e5b49b1fb9a41a9ab7ada1eb58a56f28a6390b595f7a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2376715932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2383b9dd54e3e60d32f91ed4fe53a034c1a4c6c7cb8bfd746cc568329886849f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:14:32 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:14:33 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 01:14:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:14:39 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 01:14:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:14:40 GMT
ENV JAVA_SHA256=141ba918a0869fa95529b3623e5ef3454fa8020cad9bac478ec7d19b05afd271
# Tue, 04 Aug 2026 01:15:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:15:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26ffa08d3434e3b8074cf448b49983690f183c2c5a7bffb37e18bc45763ba3`  
		Last Modified: Tue, 04 Aug 2026 01:15:36 GMT  
		Size: 509.5 KB (509474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5496e86c98e8f60283ced1afe7169ce599835f7b1ea1bfb40fe022e9ccbef9b`  
		Last Modified: Tue, 04 Aug 2026 01:15:35 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be38d206bf760c9f9d44451ab6c34176cf539b636b0a9a2d04133b2f1820cb`  
		Last Modified: Tue, 04 Aug 2026 01:15:35 GMT  
		Size: 350.9 KB (350937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c29b3a1954f542598b21b2d2e52dc2b7c170a2a76fdb274b0156ffdd119a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92847958816de375d14c423b3e41236482011bfebc79f144e748620fac5fa647`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5825cbcf15becc0bfe929ea459fd9bba0364d03362a2b4896d8278d7255e18`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58efab5e65fd172919858a00dd1f4790d6b0512fdfd236082e7a1903d25176f`  
		Last Modified: Tue, 04 Aug 2026 01:15:47 GMT  
		Size: 218.3 MB (218294600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1768889d04d96f000463b85e2294f1d29e161b5bed4b369f0378955077eaa430`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
