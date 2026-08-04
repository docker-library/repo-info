## `openjdk:28-ea-9-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:917fabe85fe9f686a4c97b479e79f52dd6d727672fbb31fe35ae24a326cb7aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-9-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

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
