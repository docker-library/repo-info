## `openjdk:28-ea-10-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:d8e6389596c0a32d60ff79ff2d42dc48fbcf28380c15474b388efa4de27fc5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-10-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:8027f204212fbba98a82816a8d5907498942dd1b63375a71881e18d4483c9791
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2595258703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c78f2183bdaf47f9b781cd0bca668aef1de640608f3563d9e4ff28e929b194f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:29 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 10 Aug 2026 23:43:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:36 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:43:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:43:37 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Mon, 10 Aug 2026 23:44:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:05 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77630d3f681a34a366ef81359995b54c48f3e2da89c3d196ed04b6894cc38234`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 377.1 KB (377104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc3c2a6049f7155a8dd28a70ee87f0a793b62ac8300bc3e597d107eb9388712`  
		Last Modified: Mon, 10 Aug 2026 23:44:12 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16db8d221f732fe707510cbc353c1acf0e24a89d369219b04b5c1e030fd1372`  
		Last Modified: Mon, 10 Aug 2026 23:44:12 GMT  
		Size: 371.7 KB (371700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758952ff522f07dccc1ee044b8ad1df1aad09d570bf49ccdf4d880dce0970f96`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816bd4f7d19859b66dd3f75e3569008154b52dd800f9a1f8eea4757768d14970`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42efd72eec21d2fea9d12cc36baa29b797180b604135248290b940e72d767c7d`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ca2dd9be3ca2109c3430d233fd5666106e5f5a343c49aeb6171738e3895453`  
		Last Modified: Mon, 10 Aug 2026 23:44:27 GMT  
		Size: 239.5 MB (239494008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1fef48cb1036a141acd281339b7c084936a6039de99277adc87a0e39258212`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
