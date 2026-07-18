## `openjdk:28-ea-7-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:155d04dff1ab769747c30b225fc045fe1bccd3b53ecbe7b28818eaacef82a65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-7-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:4fc809f0d83acb83aeb607d3e8fd67b672d8ad6fbfb87f3d9244886913a99c93
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580234126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ea68507f33d2bf53cdac2c5b03431dbda051f02e089f207ee521c0f1d70eef`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 17 Jul 2026 22:03:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 22:04:18 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:04:19 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 17 Jul 2026 22:04:29 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:04:30 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 22:04:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_windows-x64_bin.zip
# Fri, 17 Jul 2026 22:04:32 GMT
ENV JAVA_SHA256=56a8a125b887851f551dc2ce7d575aabd074617d3ff3df2775e1522ff3d23510
# Fri, 17 Jul 2026 22:05:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:05:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2d4b3d381f5af0fd854e437600b80a6106a92a72dee0583ae9868b9e11f0d8`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa2af267bbb32cf1dac9526ea517d800973917733a9950abd1ac90e2a0e118`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 378.8 KB (378755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6d77fb9e6f3f865474504ae97a15e7f66bf51eaefe315e6e82fa9727f3ce41`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231feec25566f707f40cefc62619fd8b2a7a18081178a870ed17dbca4f826bf7`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 362.1 KB (362081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa4eabd350543f7e716dfffa3efa1d112a604c054b13d5a6f218dbd01383f`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe25de8d7f1f58d07ad52364d205f44be0ae7e717ac27b11ff96b55d28bf1b`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f436a9186694b6e00298292d13afdeab2cbc1d2f6b646370bdc9a6f7fab352`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4006ad38107d40a4875f178e59fa73d84564c02a07b4d8971cfcb529e80ed01`  
		Last Modified: Fri, 17 Jul 2026 22:05:37 GMT  
		Size: 224.5 MB (224477344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35783b13da6d3d6fcbeb1c4c60fddf2171b82b094b256faeb60c8cc147140041`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
