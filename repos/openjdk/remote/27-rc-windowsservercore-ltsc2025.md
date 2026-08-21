## `openjdk:27-rc-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:21e2f2c172b09eb0a730c633e3bface9bf8acc1049e5989ebdd12b37b5eec1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:27-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:c7abbd175c8d43135fa9e82277391839a0357d5f91deb2ce2521a10e672ccd67
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2665102059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc9dacbbc0e52df3ab6d316e1fa56d7580e81dd216e5137bb0a3b8ac717767b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 21 Aug 2026 17:59:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 17:59:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:59:56 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 18:00:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:00:04 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 18:00:04 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Fri, 21 Aug 2026 18:00:05 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Fri, 21 Aug 2026 18:00:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:00:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e55204f721a4565ed66054a30fb652b877801fff7d16ae6ccd1e6c80fa843`  
		Last Modified: Fri, 21 Aug 2026 18:00:40 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1130d20296ba9febc7cc9af5e91f979f8dd9a3942791fc32b6e7f949c52546ec`  
		Last Modified: Fri, 21 Aug 2026 18:00:39 GMT  
		Size: 389.0 KB (388959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a1f5c388be9bf3658bdefad881d0f5c31c985355c8d269c8f798fd07bdec7`  
		Last Modified: Fri, 21 Aug 2026 18:00:39 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513a33d5baf7504188d5e0f2ebe58d2b34f479a670e8f534489d41bce257ee30`  
		Last Modified: Fri, 21 Aug 2026 18:00:38 GMT  
		Size: 373.8 KB (373836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9761df6423b1354a7c686a4087726f0d756fee158e6cc8b8719ec168e7dcba`  
		Last Modified: Fri, 21 Aug 2026 18:00:36 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c060c2189d76e5e2824ba24972f87f1fd64620e4a372344f73abcbd90b3f16`  
		Last Modified: Fri, 21 Aug 2026 18:00:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4172a0a2cb6e6f726a172fe58166bc2aeba5e6c903f0d610cf545cb94a0faae7`  
		Last Modified: Fri, 21 Aug 2026 18:00:36 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729fbd3a553ce40094a72d961b460d5c48ab70b1b7e84757ed9506bc8b8b969f`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 223.5 MB (223546145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818db10d724c6eb5ee7140de1b513a3fb980e2c10dea918be4c4f4881c12613f`  
		Last Modified: Fri, 21 Aug 2026 18:00:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
