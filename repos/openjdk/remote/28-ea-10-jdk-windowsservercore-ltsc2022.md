## `openjdk:28-ea-10-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:bef0d43a60cff624de5d5cbdc2865372f1d576130fd81c9e609ef1837fdd5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-10-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

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
