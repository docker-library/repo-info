## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:33a13099af373ec48037ad62e337f9e2e1eb5ff7037f3f3dd57d359516222ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:a4ad83845319a07d52a58a7e037eabc09d678a8635c9b3107929bd6191a864a2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487940145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df09343aa2f279dd186142a10bfa14442760ca6e71ba06004f46b71d1905d618`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Tue, 24 Nov 2026 00:35:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Nov 2026 00:36:53 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:36:54 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 24 Nov 2026 00:37:01 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:37:01 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:37:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_windows-x64_bin.zip
# Tue, 24 Nov 2026 00:37:02 GMT
ENV JAVA_SHA256=26e26582d293ae689eceb8ae53396e0b6c7160f045454b3f7d459d6fa8706120
# Tue, 24 Nov 2026 00:39:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:39:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934a8ddc215c9cea9977202de18688ae76824b4a18ab27987168d6589a3204`  
		Last Modified: Tue, 24 Nov 2026 00:39:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305df07005cc9e9d1d14209006f4c2d7c2c87aa95defb20f96596e0af84bdeeb`  
		Last Modified: Tue, 24 Nov 2026 00:39:34 GMT  
		Size: 362.3 KB (362280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af0f9e5f6d57b47b778aeea2ebbae9cc23039e1ce4ae184adf0532f21131218`  
		Last Modified: Tue, 24 Nov 2026 00:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594cc12990143440fe45194a3628224c0d6e87d7d7a5f30b752e7cfdd12659b0`  
		Last Modified: Tue, 24 Nov 2026 00:39:33 GMT  
		Size: 339.0 KB (339013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0ab904869b4590ea4921e43830871c39fab6d6667ff18e7b897f7ff191de89`  
		Last Modified: Tue, 24 Nov 2026 00:39:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c049227a1d3e091d29108cb18dcef07eadfabd9b324cb6fedc019e59257521`  
		Last Modified: Tue, 24 Nov 2026 00:39:31 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b202560d2eff374c4f253694bfe93110ac18a5a9c19b7de3ade9a503c2bcf4`  
		Last Modified: Tue, 24 Nov 2026 00:39:31 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87ee5adfd7e8d1787ccdfa2bc43ce7763c26d011680380a2f15900f4219cc3`  
		Last Modified: Tue, 24 Nov 2026 00:39:47 GMT  
		Size: 241.1 MB (241140287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2414fa0c98d23ec99a962c4adddb95573fead991d380aa1f7d65c3b1e9258b9c`  
		Last Modified: Tue, 24 Nov 2026 00:39:31 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
