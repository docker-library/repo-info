## `openjdk:27-rc-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:729f0f00f7a5a7852a335a6d568c83bcde83174761b316a78bf805a74f39590a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:27-rc-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:1e2ad7426560bdb13938bce99fcd94566198828c3b8a5506db3380f170bd81b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2443675897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1cceac31edde079174302dfc22aaf07fc0b3902b7ee3d48887c08dff292ea7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:35:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:48 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:49 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 09 Sep 2026 22:49:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:55 GMT
ENV JAVA_VERSION=27
# Wed, 09 Sep 2026 22:49:56 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Wed, 09 Sep 2026 22:49:56 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Wed, 09 Sep 2026 22:50:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:41 GMT
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
	-	`sha256:390c3dd940ecf265b861931ae3dc9b5172a4e1d3a6a62ef3d59a7d2e3180d1a9`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53307b4fad4b44801ba37fb0749411f4787473b037cbf1739cd26a76a005e6c`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 349.0 KB (348973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14972c19dc30641a7b52f0c0670c5e258380109f36dc457be77ec45f673d2c0c`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e1e624e26a0079085091b0de46c66695b15204e2822ebbd3998624cb4e2045`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 325.6 KB (325551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fd7f6dc2dd201fc2827c312b4169d60b5ee5abb1fbee237a0819df311c583f`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcc7038fa443b830aed93e850a0319b86cbb2103ec40ce2b6c1582e789d431c`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2255e1ff7ef605085c8d142cb917e88c62b9054cd395e510b0f3a90bed591ea`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc4c8863e026cfd61f6c8027fb9d333ae20d084c5a54093ad53f3bfc57d74e`  
		Last Modified: Wed, 09 Sep 2026 22:51:03 GMT  
		Size: 223.5 MB (223504742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7051cb84aa1a30d16652b2722e3205bfa9ccf2287663133374994cded1a4692`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
