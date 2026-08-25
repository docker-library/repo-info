## `openjdk:28-ea-12-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:fc417c4577851bc94c02861ef7a735e478769fd44d4ffd33b69a2837d3e0792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-12-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:5a4d2f45076198d0ba3c37c483e622f4d34d107d49ccc2dae6b69120f74c33b2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424183419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7578f2df1204c5e2474600fb2923c1f4379828db8c085395720a185f8e39167a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Tue, 25 Aug 2026 18:54:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Aug 2026 18:55:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:55:30 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 18:55:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:55:39 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:55:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_windows-x64_bin.zip
# Tue, 25 Aug 2026 18:55:40 GMT
ENV JAVA_SHA256=f0bc2313112a6ef96e10cce6fbfa634580e75feaef946b796b0d8ba3f0e1759d
# Tue, 25 Aug 2026 18:56:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:56:11 GMT
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
	-	`sha256:966d0261b11474c921e04d5e6a2263d1097984359bd80b39c0b9bdb24cb87013`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a864e751c3422e3f6edd2f82d1948617571076b4964ce942fb126731d6aa3ab`  
		Last Modified: Tue, 25 Aug 2026 18:56:19 GMT  
		Size: 362.6 KB (362570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c045f3cbf6bacea5719eb4ceb328fb94b7d5ed2a8517c60c4f83a54de38c0a1b`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd6d9f496fac3d1441a0b8b0b5a00606be806eabf79311ca43bfab6b0c97895`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 339.2 KB (339227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612311131731b7c613259a2a4c13ea5a17d7d14a71b1a04a406fa05c933cae9c`  
		Last Modified: Tue, 25 Aug 2026 18:56:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d8b37a23d6a4a9164c37acf43b29b2e81bcc0b9d87fb463622b0fcbe30da29`  
		Last Modified: Tue, 25 Aug 2026 18:56:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7779e74ef3244b8e8b2745c707a80f5877d7d273de25f300365f976d9d6e76dc`  
		Last Modified: Tue, 25 Aug 2026 18:56:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f1c3f40cc7d612d4590351ae527525e2bdb5decf0c4e2ffc51afbb0e6db378`  
		Last Modified: Tue, 25 Aug 2026 18:56:34 GMT  
		Size: 239.5 MB (239476334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7ca4d5621ff1956292d62ddb839d417d77e1909a8b4eaa4c65d70cd5440a8`  
		Last Modified: Tue, 25 Aug 2026 18:56:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
