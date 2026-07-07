## `openjdk:27-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:9a565badbc294d27529c0b4d8bc0c5cd5a9ba14dbe216995daacf86694e3ccfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:27-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:7dcffe43426c484b333b051895e4f60fcd684e2417f1cc5acabad81015a72fce
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356496672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e7190b0a2e0073713c5d1fd9be04a2c192dafba4a1a69906ced3b946ee9fa7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Mon, 06 Jul 2026 21:48:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:49:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:49:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 21:49:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:49:25 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:49:26 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:49:28 GMT
ENV JAVA_SHA256=4883781bf55f6ed0224c10009d257a488a84dd6e41663ff34e762d357acb14be
# Mon, 06 Jul 2026 21:51:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04ff882821e31c0ef42e848e69c22699b46cd39d1c5babe967d4edaf6d555d1`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3558a0f556acc9f96401dff45eec8acb3a6c22ac50d9f6e08afa47cfba2de456`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 502.2 KB (502236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b830210ae5cfa4be2b872a21731bc6471a12f9625b911bbbed5bb3a768706058`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df92ac036ec281d8c7fd80385afad546381d7a5f94b26eafff736d0341157bf6`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 352.3 KB (352294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0170a1f54027c133af1d9942b7092f70eae2481f66524001b14003919216406b`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c9ea1e49d93517c3df45592502189bc198e06b87a764d3ae815b1f4ee44be2`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80cb0ea6e3b82466d465fb1b809a993d9d93f4248df8b21e0e15bd6a6240791`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce322d3e2affaca2c85948521bb260f700e4ffe1ef63c68a0a1d8c386e4dbef7`  
		Last Modified: Mon, 06 Jul 2026 21:51:41 GMT  
		Size: 223.5 MB (223508737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ace6018d61cc4f2bb8a1c6594eb053e18cabeab2444175e704d83c591e701`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
