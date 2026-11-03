## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:c40a752d1b259ee1aedea5e46eb328d04aada260096f523389ab3379d9b0f79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:009ca71eae82e9a086d504c5f5e6ca292516a3fadf52cd3622ff44badc26b7de
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632846471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb012eb1c306b95a3bf37f4c5f0660759dffacf164d6a7a7a353f99e4cc4e83`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 00:59:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 01:00:38 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:00:39 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 01:00:56 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:00:57 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 01:00:58 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_windows-x64_bin.zip
# Tue, 03 Nov 2026 01:01:00 GMT
ENV JAVA_SHA256=0b0f22bff341457b1eb5d6e023d3eb47eddbb1b16615de5f50820471b9c7677d
# Tue, 03 Nov 2026 01:01:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707fc0aa7631989193b8b9815cb631a6408b177e2ff099109eb51c1fba5fc026`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9a0b911402ba912ac2b444ad2456ec66c20e48cf4b22108a51e98cd8bf77b5`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 378.0 KB (377991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43bdb5fea7976219907cde22115f9a7b038f280e1cd07027d1c43a39a8df58`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5f6a01f55a4f1dfee9a008acad34845e486dc7757cf44b1195ca32b864cfb4`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 423.3 KB (423295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86561103be4eadbbc1fbf976125d1516dd4d4c9fdf94876ae7fa9550a6e6d781`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cca75ae9ae09f063518fd347cbb2d0396c237904b3c5674761e6ed21984785`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43120dbaad4f046be9a24f2aa2781086f549d433d380de62b14ebe91dc78a57c`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c88cde345209f1bf03b9e66e6155f14a8e7a96d556032ee8bad2cafdd0220`  
		Last Modified: Tue, 03 Nov 2026 01:01:55 GMT  
		Size: 240.0 MB (239988465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6ebac600898853d889110a601d6e26b47dc3dec7efce621dc70ba7bddfdf04`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
