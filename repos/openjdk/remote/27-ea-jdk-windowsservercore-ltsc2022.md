## `openjdk:27-ea-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:28c501cf7d3d69d9d3244cbb3827b268e495e79c292b942dd7269cac3df9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:90a4b8dc2ac6f0b734f1f3ead66e8b414edeff982c1c9ae5d721e21fdbef1c6e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381950525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d42461c74992f6664559d93d5b359a67652926e0343ed02107e06aaacf2bf6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:26 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 10 Aug 2026 23:42:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:32 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:42:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Mon, 10 Aug 2026 23:43:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71b872bc96399e2d64b58bb443a4817d6b4e541758e59694c01e9636c63cded`  
		Last Modified: Mon, 10 Aug 2026 23:44:01 GMT  
		Size: 502.5 KB (502549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb76c6160024247faf4559e8d2bf6a8940847826b2979272d355674117313f9b`  
		Last Modified: Mon, 10 Aug 2026 23:44:00 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa7a16b69183c44a4250747f701f04e8297429647598335fa135927dfbedad`  
		Last Modified: Mon, 10 Aug 2026 23:44:00 GMT  
		Size: 351.4 KB (351400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1287f7430a7762f25f1034fb41232904d2ddb432fdcc78ba77e003500ac38bda`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b761181ceff6e0f91abdfb2d0b15df625cdecbc253df7c32b8dc4b33eb21c7ac`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4e009101c58f0866e3a890af2457e80e9143b7a223e8d0021d9dfa347d8140`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb597dea0eeb95e9d05e9217a7cd38b5763e8f7ab565cc75e5388b8f9edc76d4`  
		Last Modified: Mon, 10 Aug 2026 23:44:11 GMT  
		Size: 223.5 MB (223535567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbcf58e073652a1095266e77fc6ac491ecb73019f509b6edafdb134a7ab5b9b`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
