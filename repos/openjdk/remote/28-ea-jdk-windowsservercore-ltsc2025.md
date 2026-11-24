## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:5927f5db3c3a0bc802887e6025040a3d20dcbc7fc035d0aaa569f0674695ddb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:79b3c92d5b195b515fc092fed9d5d169b6fa9db7faf4a0f90611fbcbf0d3b263
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2648895132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1da5b3fb7992036325b63a766175268c478e631e8bd1b06669a12304e81abb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Tue, 24 Nov 2026 00:13:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Nov 2026 00:14:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:14:22 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 24 Nov 2026 00:14:29 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:14:30 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:14:30 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_windows-x64_bin.zip
# Tue, 24 Nov 2026 00:14:31 GMT
ENV JAVA_SHA256=26e26582d293ae689eceb8ae53396e0b6c7160f045454b3f7d459d6fa8706120
# Tue, 24 Nov 2026 00:15:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 24 Nov 2026 00:15:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e5c6a6f23462f66b24016b9fe13c8a3e75f88795e4c60a94131e892a13e630`  
		Last Modified: Tue, 24 Nov 2026 00:15:10 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3027717459d06975780f9bd78691c5788832db9a5736f60d8f78583cea601ce1`  
		Last Modified: Tue, 24 Nov 2026 00:15:11 GMT  
		Size: 380.2 KB (380228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913712e9cd945f8a105ed6250b1a0fe7277288aa3edd17f0cba7920b835f3437`  
		Last Modified: Tue, 24 Nov 2026 00:15:10 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d886ac8f3913a70c9717eee2635c31728c5ca4992fde1c18525189900455eac6`  
		Last Modified: Tue, 24 Nov 2026 00:15:10 GMT  
		Size: 321.5 KB (321544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1782dec260b108c997a7b563797ca778e96bf0214614991c7a5af6f2078659`  
		Last Modified: Tue, 24 Nov 2026 00:15:08 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcad3dd648f6d6e616f3ea16822d8516eeee7d4c7667204e9ed26ccb8fa49b67`  
		Last Modified: Tue, 24 Nov 2026 00:15:08 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf93a9d59a9e23a349ac8f84669cb77c00a1bacb996fb96c7fb6af48f66aeaf`  
		Last Modified: Tue, 24 Nov 2026 00:15:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca77135911499687a32f5474afbf302e33fdae5e1ad73b7c244d29c0011b1317`  
		Last Modified: Tue, 24 Nov 2026 00:15:23 GMT  
		Size: 241.1 MB (241117925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63fa4793bc8b96844adad4b06c82842a1cc810ac8aa42a2bb09dc6fd5f0fee`  
		Last Modified: Tue, 24 Nov 2026 00:15:08 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
