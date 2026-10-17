## `openjdk:28-ea-20-windowsservercore`

```console
$ docker pull openjdk@sha256:dede7507929b6dfbb1efe88e1b1a0beeed06f13b063bbffa7257a519152d1279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-20-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:0d758b7d71187ca224921166fbabf4141fdfb058bc13a637eb64adddb5201a66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632507622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b7734436b28c7b0cfef328ca7fe2d8a32319f2f2dd0c45d6e11e27f386e12`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:49:20 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 20:49:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:27 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:49:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_windows-x64_bin.zip
# Fri, 16 Oct 2026 20:49:29 GMT
ENV JAVA_SHA256=b10306b75f84c95057de58f44a5276866fdcd0a274b0b52963da4adfb39fad4b
# Fri, 16 Oct 2026 20:49:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b2e934efe23ab49418341a36b44294e118d58ec747620d49000be39e32680e`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 356.9 KB (356901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3c7a64cc17f959c5669e7fee76bccf02dcf8ab85c632340a65f4b79a5b4e5e`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2893298640b5b043341e07d2207e0e9a90140316c9551744115c434a6480eb`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 342.7 KB (342749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9c0be8d6721d3695d3528806e271380a50bd0bc8c66ad48e301e973f5cbc8`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74b589c6567388c05d9b15db953930d3df30b2280a2bd8002b83669e523aa4c`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77da8f26fbe29fbd54a51c6f0c38989e0128e9b5d178f3c719d70ba3d7841eab`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550dfdd63e513b2da150b30b3d6a220fb6e4d4d10e090f9bc04986cc29bd0a28`  
		Last Modified: Fri, 16 Oct 2026 20:50:13 GMT  
		Size: 239.8 MB (239805937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84262ecfe874adb07b1e168b347a6fda70177abe60cb3e14a1f87368281ad81c`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-20-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:2d31b1914a384a6643456c5810bacade3997f3cf305fc96f8a3f21b718a7cde1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466749359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71459c333a64b642fdc30394f7aebdd4895c8e4bbd5b629669be672bb5456dc6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:50:55 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:50:57 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 20:51:04 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:51:06 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:51:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_windows-x64_bin.zip
# Fri, 16 Oct 2026 20:51:08 GMT
ENV JAVA_SHA256=b10306b75f84c95057de58f44a5276866fdcd0a274b0b52963da4adfb39fad4b
# Fri, 16 Oct 2026 20:51:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:51:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f2a6ff6e932a3614b31d1ccea86a46fe8ac93663ec66fd9351171f6c35423`  
		Last Modified: Fri, 16 Oct 2026 20:51:39 GMT  
		Size: 346.4 KB (346391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01868da6834b3cb03d883423280d8c8559e079badf08f2e04825c753d40f40cf`  
		Last Modified: Fri, 16 Oct 2026 20:51:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b5cfc96fd53f924d88af18a477a9fad3d1a6b61e3b5721a7ca15910a0b78bb`  
		Last Modified: Fri, 16 Oct 2026 20:51:39 GMT  
		Size: 325.9 KB (325906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc585666f7b8fc0652b29077a3a208bd92170ffbb2a2454cc6652eebbb0e2e`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fee8c8f16bb54f2bd796c168ddb408555bf8cd3a16c9b3c14d9728d0c6c03c3`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3fb5c2b5f8f6b4743b3082b4bdfb6db44bd9c31f5bf47c5b6f43c6420629c8`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a449978e943c64ab2ea4a0199a26232d8a04e2780bf3f7053b7c3cbd56437f`  
		Last Modified: Fri, 16 Oct 2026 20:51:53 GMT  
		Size: 239.8 MB (239783726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdc9d8977b1f02cb095eee3a1f46f672d51c2466794f77aa82618dfd73a85d9`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
