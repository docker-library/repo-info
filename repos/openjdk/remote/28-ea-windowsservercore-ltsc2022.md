## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:b3fda33051e63144ce75503d40f564d2a85af1aee262e164fc693dbbee2a91bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:b4b3e75e5b8a8d92efec0b45adb9c697b2f1f32ebdb8fed6e0b329e365c9efbe
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459807021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2246a9755f5d8937cd8e92a603a718919bf781f219263c586db04d703f01541`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 18 Sep 2026 22:59:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Sep 2026 23:00:49 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:00:50 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 23:00:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:01:00 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 23:01:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_windows-x64_bin.zip
# Fri, 18 Sep 2026 23:01:02 GMT
ENV JAVA_SHA256=33d6871bf3a2889428e9f7f6e8d2340a1a5e60eabeb82d474e98a0b58cbcf04b
# Fri, 18 Sep 2026 23:03:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:03:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d833214b6a88ad5b468a9979f5b4f5a96278334acdd0fb53d2b8b101793bc0`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39f494a137cd66a8abcf55578c48bc0cd67e9ab53ed082ff431c100fe6d69b7`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 363.0 KB (362984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07edd53c63518bea3fac524981f0da62c31115ad2f6b5332e440412ee8326b0b`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90e3db26a98c14513feb9e643b654767ec427e52d545b01757b5c371858bce3`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 305.9 KB (305888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598b0fba00d2b357fcec4a8b89d8ab2182ff962325e129cffa172f540fd69567`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3691f86f1ec70c324757f069ffde27955aa088881fb4d27e851b47630fa48314`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf99912ba40a30358262e5bb8e77a837f08ef54903adff502789d53cf872947`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6711c712805b3c6396d3e54d3e3dc9d0ad63831cbaf558584ed0b01b125a6502`  
		Last Modified: Fri, 18 Sep 2026 23:04:02 GMT  
		Size: 239.6 MB (239641537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e7cc814baf7c7bf84cd879f348b4ce7dcffc5b2bdab53982db3523a9167b4`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
