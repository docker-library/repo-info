## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:6ea0205cfc13404a9787da2dffa834f60eec57ed863c9a88b1af8793817b80c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:6b0a40b981354c0d1ecb5d4adea94d44dae645d890d19ba9bfae67abbb0236d0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424186424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdb40980e7aace4586968d5f3d61dc4bdf0c0093cb154c99583a0dd26bf882b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Mon, 31 Aug 2026 18:26:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:59:38 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:39 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 18:59:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:44 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 18:59:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_windows-x64_bin.zip
# Mon, 31 Aug 2026 18:59:46 GMT
ENV JAVA_SHA256=ce62b045ffcf2b48561efc5b705bab8d43142df4fa0515352a1359db8ad0a6bd
# Mon, 31 Aug 2026 19:00:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 31 Aug 2026 19:00:21 GMT
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
	-	`sha256:21b2ea1d639a201f8e1b5a8001cc6f8075c453851bcc9f6d7c97c6966fa37ac7`  
		Last Modified: Mon, 31 Aug 2026 18:28:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91679579246b111e70f5b4c51e6650e7f180d400768e0421dceead65c76a06`  
		Last Modified: Mon, 31 Aug 2026 19:00:30 GMT  
		Size: 361.2 KB (361242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639c4b4994b4d14d1702609918c2811ff90ec197790a643a80453572d9692281`  
		Last Modified: Mon, 31 Aug 2026 19:00:30 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba305481158e46e750962385a63ddd6d76e3f82a8834f0ff1fc297d4cfbde43`  
		Last Modified: Mon, 31 Aug 2026 19:00:29 GMT  
		Size: 339.2 KB (339220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cad8d69610eff92333b20da61258733ffc79140959a900d7fe111c9fa2df9e7`  
		Last Modified: Mon, 31 Aug 2026 19:00:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce283e3bd2187acab6c27e3923a3eb011d297aa3ed3cb7d398a395767e8f44d`  
		Last Modified: Mon, 31 Aug 2026 19:00:28 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721a58e168bd549054a1fc14e0b20bb7b08ee8708a2b00de1fc5188f47ba0520`  
		Last Modified: Mon, 31 Aug 2026 19:00:28 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3d351a13795e077e1323d6b25624043f65bd66293dc7590e221b0fdcf52e2c`  
		Last Modified: Mon, 31 Aug 2026 19:00:43 GMT  
		Size: 239.5 MB (239480747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dc06ef1a4263dda84ee805d38cb95cbbd1c386387573cd3a12e099d6b85693`  
		Last Modified: Mon, 31 Aug 2026 19:00:27 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
