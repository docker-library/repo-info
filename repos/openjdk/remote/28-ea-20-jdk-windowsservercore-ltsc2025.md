## `openjdk:28-ea-20-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:13449ca56376baff3bf6c025f9135427b0d0f01f82a1dabd1697bd267036d67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `openjdk:28-ea-20-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

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
