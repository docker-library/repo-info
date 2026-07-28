## `openjdk:28-ea-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:5d49e1ae09f9095814d87ca0b0367b278fd8f0e614547376da2d56a266367674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:0874a3ca26db069f89f932474cb29fb9b9f59d44e74f75b07605734ebcf1c294
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580360025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbfa2a46828ae5261d728bd880fd619c33ae2229f3f92adcb4c6cad091b4a4f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 27 Jul 2026 22:12:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:13:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:29 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 27 Jul 2026 22:13:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:36 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:13:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:13:38 GMT
ENV JAVA_SHA256=73033cd867f9fb63fcddc062e24a357accf6c852fcd71ceb609bd410fbdf1bfd
# Mon, 27 Jul 2026 22:14:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:14:04 GMT
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
	-	`sha256:2f28cc95ec33ebc8d4d7e3d3b0c84578459d19e86c63a35ca8c98a2815774d76`  
		Last Modified: Mon, 27 Jul 2026 22:14:09 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132e401bfdea12ebbd9aff0b451a0a3b876db021e3789a03dbc5af04daffebd6`  
		Last Modified: Mon, 27 Jul 2026 22:14:10 GMT  
		Size: 397.2 KB (397177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc9b4bf00f5f637143b888abc19bb5e56e624766b9c3d36916ee78f3f9bbe8`  
		Last Modified: Mon, 27 Jul 2026 22:14:09 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7587bfa25efe5194186415735325bdf96f43da4428cf6278090092832ff6091d`  
		Last Modified: Mon, 27 Jul 2026 22:14:10 GMT  
		Size: 385.8 KB (385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e34e2629e929f309a9fc407917cdca5e4048ab52551976e5ea31fe7d54770`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c2064de2a6344a88d7a0f6d078a09270ffab1513492693ffaa456991da92`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8aab31b3f6e804738d469535e48ec0365f78e77602bc84f86ae9b8890b51`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b460dcc44c319a174feb2e140146cfccd763c40e159bf5df73ff60c4ca2e5c8`  
		Last Modified: Mon, 27 Jul 2026 22:14:22 GMT  
		Size: 224.6 MB (224561061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfd57a10920a5cf7330f8334901f6d3d31ee0b0d006b4c0f8f07e1faf3792f1`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
