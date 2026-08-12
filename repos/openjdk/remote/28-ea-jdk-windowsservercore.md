## `openjdk:28-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:49a31731d914b2527905fbf14c0cb2a69452f8d81bc5e7c1af2c5f5b9db8a022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-jdk-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:da9dcaeb96b0c2b96e81388adb087240f373e88e65261448a791a974fdf6c314
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2680965353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f93d2ae91af1a094ae256974a1616d7c92e13c4e6eb59b47900873280290f0f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:26 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 12 Aug 2026 17:49:31 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:32 GMT
ENV JAVA_VERSION=28-ea+10
# Wed, 12 Aug 2026 17:49:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Wed, 12 Aug 2026 17:49:33 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Wed, 12 Aug 2026 17:50:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:50:07 GMT
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
	-	`sha256:32b60c93016920baf5bfa1861dc4cf25b05547288b4bfa65c4e066ad34e0d2c7`  
		Last Modified: Wed, 12 Aug 2026 17:35:46 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec18997eeaac923b36e642625ba73cdb03b88560cf7e3a92f4616d0fed0012b`  
		Last Modified: Wed, 12 Aug 2026 17:50:13 GMT  
		Size: 356.1 KB (356053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee532135071ed2e624db7b1fbf9cf5712e8ed5a79f1dac92e91123acf70d1949`  
		Last Modified: Wed, 12 Aug 2026 17:50:12 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f4a15d3ecd00f1d07e238b355a31e2d162ed2647f0cb51e5c457fd29775ab5`  
		Last Modified: Wed, 12 Aug 2026 17:50:13 GMT  
		Size: 346.6 KB (346622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0067505e0467f1532133edd029c8da8054c17ba46cdbec59a694848bb184ee9b`  
		Last Modified: Wed, 12 Aug 2026 17:50:11 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f6144bfb00dbfe92573aa84239567b6f6ab51469e25e4b9549699bf6420c18`  
		Last Modified: Wed, 12 Aug 2026 17:50:11 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efeea6da65d35a2cdebcbe2cc435ae72d5db91c40fe28f7635de43d8099cdeac`  
		Last Modified: Wed, 12 Aug 2026 17:50:11 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f21a121f9cb4ed009553857734f3af0386957a270ff638bf9c8aa0628299e1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 239.5 MB (239469436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38b7ee5ef48d7d1d84a8abb9e3238c6fad50e03c2e85a1ef8f8e2f86b15cb93`  
		Last Modified: Wed, 12 Aug 2026 17:50:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:f4c1f38c2458be825f2f1e2a0612c51ace635fd9e9d0c52d33bc6da37bdf9c9f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424116591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd31abfd4698dd27cebbcf63dbf59b78b26116fde16d1c99a99270bf32dd155`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:26:44 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 12 Aug 2026 18:26:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:26:51 GMT
ENV JAVA_VERSION=28-ea+10
# Wed, 12 Aug 2026 18:26:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Wed, 12 Aug 2026 18:26:52 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Wed, 12 Aug 2026 18:27:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:27:21 GMT
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
	-	`sha256:dfd161e481f0c5e7537aa95c6789122ee31dcd6ce57e3c0f949c47a9e1dddb43`  
		Last Modified: Wed, 12 Aug 2026 17:38:25 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae20c29be79e12c6464692282498e0ec38646c2a81efea1f9e7d6f91c9a321e6`  
		Last Modified: Wed, 12 Aug 2026 17:49:56 GMT  
		Size: 343.2 KB (343185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d7678ce44950897f5ec6d3ce29de0d7644d38c20f32ec45e522514d0513a98`  
		Last Modified: Wed, 12 Aug 2026 18:27:27 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2068f28a4346eb776c4b2d0cc34290128d4e673a4e0ae4ef8dcdc368b2c378`  
		Last Modified: Wed, 12 Aug 2026 18:27:27 GMT  
		Size: 324.3 KB (324268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0513fe0e572dd22829a8ea50b9e2533b23d09150f2204ac31ed155583ffa356`  
		Last Modified: Wed, 12 Aug 2026 18:27:25 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecefdd90edb9ecc8f3144e84a2c1a0425c3ca1460a556f3ed464ea7a3cb24c3`  
		Last Modified: Wed, 12 Aug 2026 18:27:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87321a5b8abac43200555b3d8d51f9577d24b4442c5f86459f9d83d3627a2a75`  
		Last Modified: Wed, 12 Aug 2026 18:27:25 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0a18cf6ab0516f9a33bb3da1729e481697f8aa3eedb58a1f58420a64d7cbfa`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 239.4 MB (239443913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7565308581507fd6a63fee6a49741bb92fcac9478c7d8429e2cb04660be73c`  
		Last Modified: Wed, 12 Aug 2026 18:27:25 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
