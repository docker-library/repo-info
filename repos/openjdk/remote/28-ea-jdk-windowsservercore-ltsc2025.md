## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:7d9c52a0ac58b472bb8d59ac1193d1970ea4bcf2b74dc53eaff18ad592884d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:dc41bd3c5a6c2a094f92915dc0db5ff41a726c605e0456db724efdecd83e9066
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632423809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ee1d933642b33cd951bd1f5235781bce50a4431a34caa2b60f8fb211c8a84b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:06 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 13 Oct 2026 23:13:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:12 GMT
ENV JAVA_VERSION=28-ea+19
# Tue, 13 Oct 2026 23:13:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Tue, 13 Oct 2026 23:13:13 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Tue, 13 Oct 2026 23:13:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70446645b14bcb8d3b03919ad694b2fcba6aac5ecc9060ff84a943af8a43a4f6`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 356.2 KB (356152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5effb3d8e1d1d26d1978c846814508c63fc651121a5d3819884e93fc5e60e1ea`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de863df3716fc68fb55da84e646704d8387034d75de8af9a4fd781699f4d821a`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 341.9 KB (341949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f519336e21d1c89332fbf293b9c9a16a271269b80f6fdfd82b7890d516f449d`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f00f878189717303c1dbb7ae47b0038303103d8eaf02999d1198a3d2f9c24ae`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caf7e41dd05ec8adad80ca5188832cd4321237432664c02202533651ed18eb1`  
		Last Modified: Tue, 13 Oct 2026 23:13:44 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1645a1dafd78930fcfa872950a02a3993269d9a8051026c86abdf79e79a9ef`  
		Last Modified: Tue, 13 Oct 2026 23:13:59 GMT  
		Size: 239.7 MB (239723637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266416acabd139eaeee5bb6098396789ae3b24ed5f2631ca1e66732500b1491a`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
