## `openjdk:28-ea-14-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:62257d3d28b287330ee8c7d18c5b7175452d9ea08a459a7461e07c7533cadb50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:28-ea-14-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:98f06b5aba21e5a10bd0d035abf813aca88674ddb9b021d6f851f288c852a5e7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681056216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984bea91df3336f5106a63d15ab8e61c9e72167a10f08ce05ab5e2740699fefa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:19:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:19:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:28 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Fri, 04 Sep 2026 21:19:30 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Fri, 04 Sep 2026 21:19:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:55 GMT
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
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9982de0c6c2988727b8bc3e87def2b5cc1d02076ba63198c337939f049774525`  
		Last Modified: Fri, 04 Sep 2026 21:20:01 GMT  
		Size: 387.4 KB (387448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772e8813aa6cbe7b1f471c1147c72cda6a044478472973eb59d3aa1254f8b0b0`  
		Last Modified: Fri, 04 Sep 2026 21:20:00 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9c3b54de4d5753585abb0e5d701f5ec5b9c76d94199074197acf8b045b627d`  
		Last Modified: Fri, 04 Sep 2026 21:20:01 GMT  
		Size: 373.6 KB (373608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db38978906f21920fc739121a871e4eee50aec2ec1bcba21b099559218b69caf`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec63e341c4d79449e596747327208a0cd01add39230c27bf466ccbeac16e4d42`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9ce7a929f474aa23b34800e970cb26518ffe8a185e27926c49bd0e5b65042e`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa0b3f31b49572fe43a8a4ea81774e6f0320c7296aa19509f792fc534a95d22`  
		Last Modified: Fri, 04 Sep 2026 21:20:15 GMT  
		Size: 239.5 MB (239502030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb0afbc0f2003cd3f6b5c9f098a4beb538188b927f424015940064ea5c9cd67`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
