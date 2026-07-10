## `openjdk:27-ea-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:05ac2ef762cf79f3fd7b5c8d741c6f5311f620369cc61ddaafdaba9bb0c27231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:27-ea-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:2437c4b21374f7094807abac74afce2b427f298882083d5287f32ae4d8602d8a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503507149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82677347a0aafb774d40ce4af07bc3613fad7d5b056be3e124e735c392f12484`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Fri, 10 Jul 2026 17:15:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Jul 2026 17:16:18 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:16:19 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 10 Jul 2026 17:16:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:16:27 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:16:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_windows-x64_bin.zip
# Fri, 10 Jul 2026 17:16:29 GMT
ENV JAVA_SHA256=bbb2feb0077744597a316c405a33bffc2421a8578457f6054daeb33f0730a41f
# Fri, 10 Jul 2026 17:17:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 10 Jul 2026 17:17:49 GMT
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
	-	`sha256:0f9f1c7fcd0fd2f161434549037b3a4ab490eb59d052b4c6143fcb555f0c8de3`  
		Last Modified: Fri, 10 Jul 2026 17:18:02 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b127450f8a4a6bae95cdecfcb3b4582e15934079e62c58255b33dda74064079e`  
		Last Modified: Fri, 10 Jul 2026 17:18:03 GMT  
		Size: 408.1 KB (408101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66288108a56c74ac3656f2d14a96bf34847e0b73bfa82e0eb5d8d3593b6db41`  
		Last Modified: Fri, 10 Jul 2026 17:18:02 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18ab0723ff1de2d0cb1f2c80abf673e3d73438f2c4f6f6aa5b8c018e9d0d967`  
		Last Modified: Fri, 10 Jul 2026 17:18:03 GMT  
		Size: 397.2 KB (397192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5ebad39015228f7fe2412ca8200d512c4cdb9923d3e49ca80a101fbd311bfb`  
		Last Modified: Fri, 10 Jul 2026 17:18:00 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1577f6107161592f19a0009c3da496452be6093ac0e0d46b213bb9d1822b1db0`  
		Last Modified: Fri, 10 Jul 2026 17:18:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d8773ca41975e1e56aa1d439555779f25964866ff00890b71a965580925b1f`  
		Last Modified: Fri, 10 Jul 2026 17:18:00 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9699db21d9ac233195e756a63030fe6b959d63b3687f1c3f3c4e207d149d58`  
		Last Modified: Fri, 10 Jul 2026 17:18:16 GMT  
		Size: 223.6 MB (223551144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c89f9d3a9d24c74cfd1736dc5e678a37851c963241e6543f3f9196a8c5698f`  
		Last Modified: Fri, 10 Jul 2026 17:18:00 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
