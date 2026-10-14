## `openjdk:28-ea-19-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:fabd336b06be67ac1585c9c2629882e31917e4b93c0d515e6cc2dec62851e4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-19-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:0cdd686665e03478e55b16927d86b801b9b3948a9cda6624fa9592d8deafda36
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466666715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf1ff408f4d6cab21b6ddd91ed8a5c5bba6be0e36b387301687066ef346aac7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:40:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:05 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 13 Oct 2026 23:40:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:10 GMT
ENV JAVA_VERSION=28-ea+19
# Tue, 13 Oct 2026 23:40:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Tue, 13 Oct 2026 23:40:11 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Tue, 13 Oct 2026 23:40:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:36 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83cc1683bafe9284816d0853224a983ec004256c377e950d22f368198cd6d90`  
		Last Modified: Tue, 13 Oct 2026 23:40:43 GMT  
		Size: 340.6 KB (340605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76c50d7ca8176a54d146ff4349220511181a00073e170d63ffb5fe099815618`  
		Last Modified: Tue, 13 Oct 2026 23:40:42 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8f57342374adf78898ba0067344052e9e02e23d068d49bf3b750d1133f898`  
		Last Modified: Tue, 13 Oct 2026 23:40:42 GMT  
		Size: 323.3 KB (323266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c32371033bfa6572923a0d441d74585f595a44ed75eb25ff8a80f8273b625f7`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac42adaef260a6613757c0b41ba1fdfa0f46cfdc25a3b3e1c8337ed547bb6800`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94a19ab103785c9c53b5a4d8f0b30146913ae2b9a3c957b3518f89728bf752`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f85d03a60b8aec54054f89d1ecdd46bbef31f9b40dec8e2f93cafb7b162692`  
		Last Modified: Tue, 13 Oct 2026 23:40:56 GMT  
		Size: 239.7 MB (239709497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c771cd67603025454bff9d036ecfa125e0080e36b5c6ecd09c4e9e2caac0e3ab`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
