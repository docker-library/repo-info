## `openjdk:28-ea-19-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:57a14208feaf096a34e7044f285c472ca34e76825fd287229abb9503e2ecab96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-19-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:ffc8feb42fe084dc37ebcba3ad77bc2e032b7ecca62b6ba390a3ccd6b823ec1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698152527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78f745cfb2a971e874d0ec3d467c21769c0705b449a7abd54c21aff83110ffe`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 12 Oct 2026 22:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Oct 2026 22:54:43 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:54:44 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 12 Oct 2026 22:54:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:54:50 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:54:50 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Mon, 12 Oct 2026 22:54:51 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Mon, 12 Oct 2026 22:55:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:55:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2384dd80ae68c8e6f0d7ba0e57c5ab6ca563a9569d4649744c8aca4c5698f21`  
		Last Modified: Mon, 12 Oct 2026 22:38:32 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e995f8c5dc579cdf672b342cf5cc412e524135ec2c890ee51c9ffa06e4360eaa`  
		Last Modified: Mon, 12 Oct 2026 22:55:37 GMT  
		Size: 380.3 KB (380270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a486315649e9c42fad2900ad332dc033139a9767b5aeecba95b5aea81e96aa92`  
		Last Modified: Mon, 12 Oct 2026 22:55:37 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d9e71a54bce1afbe3409abab61f0938e04c0a3b5bb7894ec524d6a36c1ff4c`  
		Last Modified: Mon, 12 Oct 2026 22:55:37 GMT  
		Size: 372.0 KB (372016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad73615a59594f1f0b8247044319bef1088eb6d76c6de84fc84c692fcf570648`  
		Last Modified: Mon, 12 Oct 2026 22:55:35 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13940b90fdbc7b21cb6891475ff92e18782c575f00cd6290bef3484a8f9cb5d`  
		Last Modified: Mon, 12 Oct 2026 22:55:35 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a4144eab7e3381a351a6b15f2727700f102d4e35d67ec8addce18c27c447f5`  
		Last Modified: Mon, 12 Oct 2026 22:55:35 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0fb8357268f19105aced72d55a030e0ed02d078d8701016037cfa7b9f715ce`  
		Last Modified: Mon, 12 Oct 2026 22:55:50 GMT  
		Size: 239.8 MB (239762887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5171dd2c3d9dd3a9e8441bbc5ec17d51fb3b5e7ddd939806f288f9f9f10e8eec`  
		Last Modified: Mon, 12 Oct 2026 22:55:35 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
