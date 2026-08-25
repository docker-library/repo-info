## `openjdk:28-ea-12-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:09f3a23bf675f13191eb6dd14f6ea8dc690d87faa5299845b3dd0c845dfb0222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:28-ea-12-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:e6c3b6216aae103274be7a9fa45903a5eda611f27fa64c247b0a68d7ef026016
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681055255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd6b45f2d594fa017110311dccb400e1968b61d6e9c58c605a4d658c0339374`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 25 Aug 2026 18:10:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Aug 2026 18:11:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:11:55 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 18:12:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:12:03 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:12:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_windows-x64_bin.zip
# Tue, 25 Aug 2026 18:12:04 GMT
ENV JAVA_SHA256=f0bc2313112a6ef96e10cce6fbfa634580e75feaef946b796b0d8ba3f0e1759d
# Tue, 25 Aug 2026 18:12:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:12:51 GMT
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
	-	`sha256:69719aab94e8b4483fe06abc3cc8a146b608c0caae01cb9bb57a43a9135db461`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f80e09aaf5617b5a4f1565a891e1968ce4ab23af9af0b47761f5e26378553`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 389.2 KB (389198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e94cab8445d8b6e7463fc5ba7b7320e8cd225a30395b98149d07e5a6f5a62a0`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fac4e6d2427ee8005b1d91356774468a89c2a4fe3a598c78b973dd04b0f448`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 373.7 KB (373733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a424f2387bdd2f222925147c8094d2626aae02cb2284b50ded31140bad85e3`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76275200a8a6c7ebdf1471c858b878838d947ddd2a766d16b3ca49f1a1c7caf8`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb668196800f1dd2be4ea72d19f674502bc852dcc61f7ed36b9415d4b21cf0b`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547362b76b37dfcf7972a61869fa132960a4300d5083b08215175e4e399bf618`  
		Last Modified: Tue, 25 Aug 2026 18:13:10 GMT  
		Size: 239.5 MB (239499195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218ba146f8e957aa71346cbcec70698355863fb4969fb5fa0f0143b861738638`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
