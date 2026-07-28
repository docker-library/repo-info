## `openjdk:28-ea-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:0468dbbdb28a2576476e289fdf90e03a2826c3f33d367f97e7d09ae27eaee37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:8a547b384f785007d47d4f450bd18bf588377dc14ee09a2b4c3d7cc66f10569e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2382983288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25676af1ff72f8bfe7c834fa184a0062b96ad860fa67f7fd1ccaf2f18fdc7f8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 27 Jul 2026 22:10:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:11:50 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:11:51 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 27 Jul 2026 22:12:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:01 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:12:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:12:03 GMT
ENV JAVA_SHA256=73033cd867f9fb63fcddc062e24a357accf6c852fcd71ceb609bd410fbdf1bfd
# Mon, 27 Jul 2026 22:12:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:34 GMT
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
	-	`sha256:57229b6b30cc2070d4dff5ef7db70f58b5e36303a36443ac166127754d6b52f1`  
		Last Modified: Mon, 27 Jul 2026 22:12:41 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeab6e6beb20295daaf13875e7f3f281f6f758952541fb4acb5b7906dda55f`  
		Last Modified: Mon, 27 Jul 2026 22:12:41 GMT  
		Size: 512.8 KB (512799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a284d675b58eec5ee4abadd8ec374dba081b247aeea6fad3d246abaaff55d48`  
		Last Modified: Mon, 27 Jul 2026 22:12:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049a30dbbf83cd488221219a952cd556fb06ba803bcafcaed289b7cfaa669c1a`  
		Last Modified: Mon, 27 Jul 2026 22:12:41 GMT  
		Size: 360.8 KB (360805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee2e213bebaf17dbab3c5ad668bf676ca7638ddb384ec8a7aabfd5745a6b606`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4bfde1639fd70db4f72c0956763cbdeaeddefed651de25944affef75f7ebea`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345c58adbda69dfaeb34b04666597643bee7e1e2ee336ad51029f30c50d69f82`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94fc1366b49116e3dc4184ac42ea82e4cb087ff0a7a31e7df542bbc35ba6a97`  
		Last Modified: Mon, 27 Jul 2026 22:12:53 GMT  
		Size: 224.5 MB (224548717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7334a38e6b68d50203a4e4fa2e0bc0b9b1b74c8cc0be9c3b2c972754adf40`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
