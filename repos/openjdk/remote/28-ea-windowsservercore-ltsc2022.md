## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:a844b47d32e3cae5a2f9036fb3d485dc8e104c230b7cf133e5d4888d06836672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:7247402389301f4ba067c34b00e98e559f74dce8ea17b213001a8c2dc5ed1463
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424141590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c51840bc5ef3f89a3226d2b51c9414ed77b88097973e5e7e75bacd4759835b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 14 Aug 2026 18:00:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 18:00:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:00 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:01:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:06 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:01:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_windows-x64_bin.zip
# Fri, 14 Aug 2026 18:01:07 GMT
ENV JAVA_SHA256=8378faa16b706ea91e76075d582ab264ccc218380d7eeff8945c6cca1c752842
# Fri, 14 Aug 2026 18:01:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68202da1290b76eb89a7a87dc42c4f403ba09dfbd122890d3f0f1082a55466b9`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1170795bfc8847adcf5f1e070edb8ba40a0896ea4869bbd2d61ef81a5de804`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 349.7 KB (349749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adca63ee09b4852a53365a690eb9c955d1679e77a12865402bb0f3a22127a9f`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3bb21be2eb6c8a81d2d3607fc771bb944d7913e97691053a9c021963acd367`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 326.0 KB (326007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4150e396026a700b5600edac3dbf11b031ab116430b69d4075a7488e0971c3f2`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f36d2bc63b9a1f9ea74bf0664217359d835c8d7bfd771d23e358799afa643e`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1afbddf52837d2a8eb9e5437155a6ba3e18b223b2bc4e3733ac9195e6142d4`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d55e58bb0572215fc9e9dcf380600bf4ffba877a94cd4b30f83acb1bc35e19`  
		Last Modified: Fri, 14 Aug 2026 18:02:04 GMT  
		Size: 239.5 MB (239460560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc2ad36c930abc1d4a2f2fd9885c0eaac08aa8e25580aac8e6faafda5d92e90`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
