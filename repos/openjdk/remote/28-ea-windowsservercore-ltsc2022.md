## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:5f1b9667e65b28cbc537039c5ac41af92b03a380b7ca9f179f397217416512a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:bbef37fc6b71042470a1a61e1a666c49ec5561a6848ee7c42eb4e3d1c3d06627
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357437793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6fea5238490f08e4a3d7911c7e2babe0535e5db9ea2dd70d65694dbc872cd4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Mon, 06 Jul 2026 21:58:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:59:06 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:59:07 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 21:59:16 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:59:16 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:59:17 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:59:18 GMT
ENV JAVA_SHA256=9df5140ba566bdffc2249703e6d204486903d277d365cbf2b04bbc035b33f2e0
# Mon, 06 Jul 2026 22:01:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 22:01:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7992f170cee6308bcfa365256e93e86a0048b6ce105596f42c0e23338a98f7`  
		Last Modified: Mon, 06 Jul 2026 22:01:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a75c70545d0bbe98998b3d7d9f90d8ef6f9d92cd2298e3e65cb47eab0a6b10`  
		Last Modified: Mon, 06 Jul 2026 22:01:18 GMT  
		Size: 502.7 KB (502727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4339cace7017814acad225c096365c241c137d15752cf67e7e3229a06fe9f5df`  
		Last Modified: Mon, 06 Jul 2026 22:01:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194271965bc8738c7310c7d5b0facd9a8e4d302958e90d993392872947d24398`  
		Last Modified: Mon, 06 Jul 2026 22:01:18 GMT  
		Size: 352.1 KB (352112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289beee2be31e2b93b3d7044dad1dea0a444b8561f43d202b379476e1fba6996`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bab95c93a599ab29477fbc391acf46d152e6fa984013c84b8426737a6b85ba`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047fd33aa68984a352687a739cdd84e34c350a83aaf13b352ac6ab8aa1a57ca`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd5832a0566cadb22d919592005a219c0ef3d6d09087cf858901302a298ff7a`  
		Last Modified: Mon, 06 Jul 2026 22:01:30 GMT  
		Size: 224.4 MB (224449527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5062c6258c9c945ba48caed5ff256e5a2ac651aca5111f4600dd09b9cbf6c872`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
