## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:30ce509b5808ae14f42cd5f286a5b93e7708da75989d544f3886524cc3786b5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:e5c6cf7018f719c175a9acb9a8ae247e611d423350a99a945a79877f066b921f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2504418169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481df3d51c036fc0a7f081eecf3c9b8178fa0666b93184a07cffac590ac4fba6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Mon, 06 Jul 2026 21:54:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:55:24 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:55:24 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 21:55:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:55:31 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:55:32 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:55:33 GMT
ENV JAVA_SHA256=9df5140ba566bdffc2249703e6d204486903d277d365cbf2b04bbc035b33f2e0
# Mon, 06 Jul 2026 21:56:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:56:03 GMT
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
	-	`sha256:a20ac7d0775821c6921cd689baa095419d1f49f567359105e7cfb0ba565d95fc`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be19b6946c2389ab14fb9200cc202c0adc7bd742d85a91fca6ba553796e453d`  
		Last Modified: Mon, 06 Jul 2026 21:56:11 GMT  
		Size: 399.9 KB (399881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e9fda94e74b9b2eb3c68f8623675c5898a3ce2cf8b0e68b0c25582535059f4`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f947fa9f2ada9c10c3f7df777c8af364dcd3e5e26c18080cf12220cb5fb6c110`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 388.8 KB (388806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ab864a02b23f84e61c95ddb01b0dc6414d592271ac8855c1ce8526cd3697bc`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d213011088814c6c389dc3e308f0347f87c1c3424e104098312ad510f10e68`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd92f0f27b378c207830b8eee50cf9f4a7467a71444b762dca87cc7f4a4f3`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e218ab819b4748cba64e179332ca8c8ded03f4667c8cbac901aa6d23ab3c7737`  
		Last Modified: Mon, 06 Jul 2026 21:56:24 GMT  
		Size: 224.5 MB (224478736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2e78a37e4fd822330d6cd13d14fc032833fdee9592051d668960006fb91782`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
