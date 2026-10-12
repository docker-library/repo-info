## `openjdk:28-ea-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:15dee1f7c3bac6b455d52bbcc38180bccaf08f2c2051672fe9671d9afca95b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:1b14e75365c4553d06dd26e112f45fc39959488b9ee4fed75f77af0a5e15a117
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459931057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4300b6023fe04cda0b6170658bc9a9834cc0171edd5fabba6d0e114ad0837f2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 22:27:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Oct 2026 22:54:51 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:54:51 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 12 Oct 2026 22:54:57 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:54:58 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:54:58 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Mon, 12 Oct 2026 22:54:59 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Mon, 12 Oct 2026 22:55:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:55:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b49dad6c6ac4cfaf36ed7ebeae5ee7c00fd5e492450d3cb464b449b2959091`  
		Last Modified: Mon, 12 Oct 2026 22:29:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0167569de0512937d0e35c24b5a3670c1ee0190c483ada2c9c1d0333afcd1286`  
		Last Modified: Mon, 12 Oct 2026 22:55:40 GMT  
		Size: 361.8 KB (361789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5315498f93a8fb75b39d8812dad29f2aca01bb658281a3231bff835666c31`  
		Last Modified: Mon, 12 Oct 2026 22:55:40 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7649e4a65d26e6332285af8340797f30b36abe85dbcb17cac35cf0c23462b3e`  
		Last Modified: Mon, 12 Oct 2026 22:55:40 GMT  
		Size: 339.2 KB (339230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381581da045f3c3e7d0f50587c49f0b19e19fc9ef05bf67b603a7151bae07bfb`  
		Last Modified: Mon, 12 Oct 2026 22:55:38 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24cfb5490602694a7f216c7f068bb19c78382c886b2dc23cc4ac024a7e032c`  
		Last Modified: Mon, 12 Oct 2026 22:55:38 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb97f9c115dd92d1907de46692c0a2826ac04ca41cc7927d05ffbb9cbc95a9`  
		Last Modified: Mon, 12 Oct 2026 22:55:38 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b56ee524246de9f0a726860f9aa2b84c300a413c99e03aed7e76e0920f537a`  
		Last Modified: Mon, 12 Oct 2026 22:55:55 GMT  
		Size: 239.7 MB (239733473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f90b9cb435ceb857c6859898e83cb39440a664221b454262f2f08c944b3f8c2`  
		Last Modified: Mon, 12 Oct 2026 22:55:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
