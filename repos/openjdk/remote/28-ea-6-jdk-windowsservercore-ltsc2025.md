## `openjdk:28-ea-6-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:126f1c4db081da2c17ca408399ab417002c82ae958670d75b8c83374f0bcd7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:28-ea-6-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:8002d66d488993cc2eccc662366b43dbe72e63fcf15236732fa3b04900a4613f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2509632186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bb2e17e875814953752b0eda90f03a5a206d1e34aff4eadb64cd9eb6774b51`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Fri, 10 Jul 2026 17:16:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Jul 2026 17:17:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:17:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 10 Jul 2026 17:17:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:17:18 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:17:18 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_windows-x64_bin.zip
# Fri, 10 Jul 2026 17:17:19 GMT
ENV JAVA_SHA256=7d58f4379ac8918c92d10d55e6c26f5e224a010e064c3132797153bc793e7429
# Fri, 10 Jul 2026 17:18:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:18:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b1df400d99e48d760d4d4f60fc5734bf7403b28293282384f45338b4bf95f`  
		Last Modified: Fri, 10 Jul 2026 17:18:10 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dced4466f7a234a0a089773ea4af7936481cb9605243382194c8d8fbd8e29ce2`  
		Last Modified: Fri, 10 Jul 2026 17:18:10 GMT  
		Size: 374.1 KB (374131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2282919b54cd1985ae7c2485eb3db1347fe18e6fa03f33782523dcf864050f`  
		Last Modified: Fri, 10 Jul 2026 17:18:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34ee7a005bb63f39c43c0a538502d89c530b4424cc1057d97500409a346900f`  
		Last Modified: Fri, 10 Jul 2026 17:18:10 GMT  
		Size: 363.8 KB (363832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3f90cc054d3550d9402a86014cfd05f6d2befd80e50b4b867cddec5ddc3928`  
		Last Modified: Fri, 10 Jul 2026 17:18:08 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ee648c4d1c99b871667f08cbded081fcf45f2a731f25c175e8d38345b2f0db`  
		Last Modified: Fri, 10 Jul 2026 17:18:08 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0242c26d0addde456117552853f14608ecfc4ca90c61d91d88fd7d3f4027fa63`  
		Last Modified: Fri, 10 Jul 2026 17:18:08 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ab0307979780bda9382926308ede9d58d7194793171f3e84ec9bd78483e3ef`  
		Last Modified: Fri, 10 Jul 2026 17:18:24 GMT  
		Size: 229.7 MB (229743494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee56491e6fb9b11a1c2edd93a72492462d2e728b49b4deea52c590e222828fe`  
		Last Modified: Fri, 10 Jul 2026 17:18:08 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
