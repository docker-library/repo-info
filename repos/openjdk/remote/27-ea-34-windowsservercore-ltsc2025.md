## `openjdk:27-ea-34-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:565ed8ed6e71532c427913f1c646f816fbcae81ca116daad457e4908199be39e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-34-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:7a678720934942d40b6d39242779b091371804053792c50aac965867172e5798
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579314321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fbf8f8bbac349a73e243c1c1636b9d95aa3dc7531340dd4a784f342f95fd16`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:26 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 10 Aug 2026 23:42:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:42:35 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Mon, 10 Aug 2026 23:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:56 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77630d3f681a34a366ef81359995b54c48f3e2da89c3d196ed04b6894cc38234`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 377.1 KB (377104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2608e143d887607dabbc50e4053caaec4bb61654c0308805b5e83a07bb9835f8`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290e6895ef169b7e9a30c72c3062a0998176185d02c47dd94ad011449d999db1`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 370.7 KB (370670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accde6daa585d1def73b1a2a4049d96ca57da549d0c2d8dae2e6d601adcbd20d`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc0b62696aee8d4bc1348cb60049460662de02b7955023a86ca79f4e1b60291`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25071b3be63e9f00d62dbfcafca1ce4bc49ea68cae292c09e10a567bcc5226`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab27429788c6c214d792943b1c8c6a004538c7e0230625dfcdf3372a97ee2693`  
		Last Modified: Mon, 10 Aug 2026 23:43:13 GMT  
		Size: 223.6 MB (223550657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c97c66502bf59c1159254b29b560df3daedae82c334e4290b75b50e55ffd38e`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
