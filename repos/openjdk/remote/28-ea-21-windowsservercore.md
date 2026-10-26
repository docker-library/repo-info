## `openjdk:28-ea-21-windowsservercore`

```console
$ docker pull openjdk@sha256:65f1ba5e3f481d0f508b10465a408a22488e4ffda23af6678440471056a61fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-21-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:7681ab811091f825dd4fa920b2e372684feaad0a1fc54b8114650e5c4774499d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632716829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf099cac9225da540547e02fb2248ada33686163dc5ac591070badd29b7041a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Mon, 26 Oct 2026 17:21:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 26 Oct 2026 17:23:09 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:23:10 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 26 Oct 2026 17:23:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:23:18 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:23:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_windows-x64_bin.zip
# Mon, 26 Oct 2026 17:23:20 GMT
ENV JAVA_SHA256=7cb8070f868767880e8615bd4f8f52a01aa8e7a63c270034acbb719026396d58
# Mon, 26 Oct 2026 17:24:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:24:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd09f42cfdf080d47715e311dd6838ab83ee0a3c99a98cb140297678544690`  
		Last Modified: Mon, 26 Oct 2026 17:24:37 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc14bceb15c2ceffe8de936b86e6c132c81a0958242b79544e9e714cec8e542`  
		Last Modified: Mon, 26 Oct 2026 17:24:38 GMT  
		Size: 378.3 KB (378274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff637e8e4cbbc85bb174336ecbed4d3d0c4e181368e28cce829c43e67072b69`  
		Last Modified: Mon, 26 Oct 2026 17:24:37 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803b76794324b619b6f4d212107b80e11422c9cf0456717077aebb731dcbfc0`  
		Last Modified: Mon, 26 Oct 2026 17:24:38 GMT  
		Size: 367.4 KB (367362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba02bf044bd7bd3a818ea86f4d6d8d74cc3a90f5bd79d41d007b2a99c716dc33`  
		Last Modified: Mon, 26 Oct 2026 17:24:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a9abe2ce364be1143900c589333181d57630cefe8016c53656768b6bbc2a87`  
		Last Modified: Mon, 26 Oct 2026 17:24:35 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2524223729ecb6d1152fe339fdc42716e5062f97ca1510e1f13014e195a611`  
		Last Modified: Mon, 26 Oct 2026 17:24:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567ba236443f2fbdf30395747e35a56b4d8cfc090869feb1d313143c4a13a8ee`  
		Last Modified: Mon, 26 Oct 2026 17:24:52 GMT  
		Size: 240.0 MB (239969097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d4db479493d752f93812b9a9bfe2e7f7e0564da0d43aeb92f31b947f5a45d6`  
		Last Modified: Mon, 26 Oct 2026 17:24:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-21-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:4087b558e0d5343bce3644a26661a3d1312bb1053ea34d0cd86f77c92e0604b5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466929451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5396da5db10d7c6fadc7004e354d2448619c5c7dfc24cb9d419ec34016c52a4c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Mon, 26 Oct 2026 17:21:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 26 Oct 2026 17:22:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:22:55 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 26 Oct 2026 17:23:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:23:02 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:23:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_windows-x64_bin.zip
# Mon, 26 Oct 2026 17:23:04 GMT
ENV JAVA_SHA256=7cb8070f868767880e8615bd4f8f52a01aa8e7a63c270034acbb719026396d58
# Mon, 26 Oct 2026 17:23:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 26 Oct 2026 17:23:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c97652091ed6cc973c98f91ce897536aa9b28e984bd98a37127b57d4f222b`  
		Last Modified: Mon, 26 Oct 2026 17:23:59 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcf0a03fd9296ffe0c0a8d35985b979cf3b8429116c43f00d2112ee9ac5560`  
		Last Modified: Mon, 26 Oct 2026 17:24:00 GMT  
		Size: 360.9 KB (360946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ec9d5e67f504c4f74d204486cb69d0d4cf2b59136d3f1ecd74f8fa47b5306`  
		Last Modified: Mon, 26 Oct 2026 17:23:59 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910e9214a36571db8a9a651309bf6ce5ae048829b057fb5b7b336346d8fa96b6`  
		Last Modified: Mon, 26 Oct 2026 17:23:59 GMT  
		Size: 339.0 KB (338972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4e4ff384c7bdc0107cf74d8182d71e331eb9b31cda5f963ca7f988dd2096c3`  
		Last Modified: Mon, 26 Oct 2026 17:23:57 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39ef9017d9fce14f078a5ebe5b524b8035a4cc50712f0c895a934824396a20b`  
		Last Modified: Mon, 26 Oct 2026 17:23:57 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02df51c4b5af1baa793ec66997aa22e70cbc4487e138988315b941dce24f749`  
		Last Modified: Mon, 26 Oct 2026 17:23:57 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67b6d43c4c999df5ab857e611a3cb5da96d8ecf7c4b04b6f9bd582fd47dabad`  
		Last Modified: Mon, 26 Oct 2026 17:24:12 GMT  
		Size: 239.9 MB (239936175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56821dafc7ec06839393352f7e7044d48704ba4ba88eb491bb84a97008909431`  
		Last Modified: Mon, 26 Oct 2026 17:23:57 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
