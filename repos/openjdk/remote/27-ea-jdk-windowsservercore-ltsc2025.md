## `openjdk:27-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:e4dc8ba39d7696862516d1c35131e8a3273548184d7cf973ea5b3db1e5dc8b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:27-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:8740ef981020689d7874cda70e06ad9575ae32aa5f668520de1ee32fe6b93b36
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503507962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3776142fff0917992a7f60371f4ac3d1fe28dc2fae78ccc7c2475808b6aaccf1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Mon, 06 Jul 2026 21:49:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:50:47 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:50:48 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 21:50:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:50:55 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:50:55 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:50:56 GMT
ENV JAVA_SHA256=4883781bf55f6ed0224c10009d257a488a84dd6e41663ff34e762d357acb14be
# Mon, 06 Jul 2026 21:51:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:51:28 GMT
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
	-	`sha256:74856d80ec6061deb53d231d9d698e0aed4f8f97460d6292fd8997f85146bb39`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23a1166ad4a30aaffccf1743c1d118e98c1c81a8c1bff0f4a57ebe9f537bfe1`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 408.0 KB (408032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0f06477861aef756effb09bae117b59b494f01abd2d0b9f66ad423eae8d5a`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1498365a504ab042910066bd68b081cf4ee57889c3e47d87462230c937b61ea`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 397.3 KB (397337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326257be9bfe6f77613e41810dae0df79a37943818ce52db11a2b2e3b5bf21b`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada616699ec64610773541767e9ea5fdb9335456d8b1821d62288c02c88c4d48`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae46816f8ce20a49f14016ee540af9c22735245df540a1f0835966db477a24`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79008883f7eb73ef53be23d2ee4d5b9073e560b009406b90dcbaad3104d3ab`  
		Last Modified: Mon, 06 Jul 2026 21:51:48 GMT  
		Size: 223.6 MB (223551880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8cb81e3ff72c9a8a0f3d3207d9777354aa0cd11bd29da5b4ccdafd8aa1c2`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
