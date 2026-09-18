## `openjdk:28-ea-16-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:958fd1ac46276e194a9a6435ef29fb703bbdf2d271e576ee7ac3b7563f8ef9bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-16-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:07293c5b6bb2f72ced2b38e000326ca7e529c8d59e2dc8ebce03dcc616d69239
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698109928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e513de5ad655ee0207279c2e1765317fb7a2dc69a1e9b7e5922a8ecf38db72`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 18 Sep 2026 22:44:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Sep 2026 22:45:12 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 22:45:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:20 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:45:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_windows-x64_bin.zip
# Fri, 18 Sep 2026 22:45:22 GMT
ENV JAVA_SHA256=33d6871bf3a2889428e9f7f6e8d2340a1a5e60eabeb82d474e98a0b58cbcf04b
# Fri, 18 Sep 2026 22:45:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:51 GMT
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
	-	`sha256:22588b446babe08db776cf0d3bcddfe153cea9f6012614d5b4e76402c823f559`  
		Last Modified: Fri, 18 Sep 2026 22:45:57 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe8069c451fd6cc7af157deae5445da32c1d6e9000f6a8497ded66352112ce`  
		Last Modified: Fri, 18 Sep 2026 22:45:58 GMT  
		Size: 389.1 KB (389060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ce1cc04013cebf0ced8cb98100f3fc425c8fc300d8083fc867dfbf75ad0883`  
		Last Modified: Fri, 18 Sep 2026 22:45:57 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a784f3474f6b3a7a2260354ca7f858d05223bbb826773299052718e7cb813b`  
		Last Modified: Fri, 18 Sep 2026 22:45:58 GMT  
		Size: 375.0 KB (375009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5857ac117fc178f42739712434158e03b7d6ad88afa7c3023576b15d7fc7d8cd`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5a7acb9f8628df752550a13ea74e3277c3fade380c30123b06b011b1d6c11`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c0b2a4bc772e1429e75c94923ed5447461d526cdab543007731a283ec3eb42`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69ab7b976749a49f048e2aeff3b686670899b64061a5242f291ce602ed50b2c`  
		Last Modified: Fri, 18 Sep 2026 22:46:12 GMT  
		Size: 239.7 MB (239708440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b57ce489c20d96d9087f3c1b6325bd5304356b8372dad3c063b28289a97fa35`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
