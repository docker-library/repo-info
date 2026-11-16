## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:f1950d95a3b35e7ffbf25068b5195f9dca39d50f9a4caede2a1f2f96c766a232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:77cc23164776b166e08a3190903e112f883ba9ca0c5ec6a78f1f2420b0899b8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2486742828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a3d19584cfe84f461aaaa853c997f65ff3594fda704d0269c37b2ff36274be`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:09:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:09:20 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 16 Nov 2026 20:09:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:09:27 GMT
ENV JAVA_VERSION=28-ea+23
# Mon, 16 Nov 2026 20:09:27 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_windows-x64_bin.zip
# Mon, 16 Nov 2026 20:09:28 GMT
ENV JAVA_SHA256=14c3fc0511b3d83dc2b23875f3755241cd1eb1c6ee594ce0a2e80e12be76873f
# Mon, 16 Nov 2026 20:09:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:09:52 GMT
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
	-	`sha256:eb796c9fd9167fa251bc6d58fbbe9ecb07bee68bdaf647d671e695124d8401a1`  
		Last Modified: Mon, 16 Nov 2026 19:55:16 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb646a6e391ec2e8d3c709d7cd8401bdb2e167d2cfa817f77ba851bf4eadecc`  
		Last Modified: Mon, 16 Nov 2026 20:09:58 GMT  
		Size: 348.1 KB (348114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421764893ad174228216f111c4a3922324c0c88c004e240af0c68b288e5d1d60`  
		Last Modified: Mon, 16 Nov 2026 20:09:57 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b2437990822e2b1fb40e168298498eb2f52bacc30bec5c6dbfc3590c6a2702`  
		Last Modified: Mon, 16 Nov 2026 20:09:58 GMT  
		Size: 325.5 KB (325497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d914afa7f4779823c8bc58e579d93fe07aa45d39e7035a502f482ffa53125de`  
		Last Modified: Mon, 16 Nov 2026 20:09:56 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523bc2b993c98f35a9d6cec6d25b1e1c06026dd39e341ec059539d0afe7dad7`  
		Last Modified: Mon, 16 Nov 2026 20:09:56 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a91951dbc2ed3081ef887bfce0863cf524f0e22b54ea9570504777ab13173d9`  
		Last Modified: Mon, 16 Nov 2026 20:09:56 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c3915e7161bb927b645f36a896bc7681eed3089587322074bbc3c98018caa0`  
		Last Modified: Mon, 16 Nov 2026 20:10:11 GMT  
		Size: 240.0 MB (239970753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6f528067bac4461e9d47338e7ece7758cede23d37ff28202e1fcbff1a12092`  
		Last Modified: Mon, 16 Nov 2026 20:09:56 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
