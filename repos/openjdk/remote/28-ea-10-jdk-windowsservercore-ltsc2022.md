## `openjdk:28-ea-10-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:055a765be67607644fcb8214b5f11320903ea75bca107159ca3180f4185048fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-10-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:b0d042b116cb4fad4cb33902ce939518b9e2e2fd5971f98d9094594cdcc83315
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2397886964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d90b4156ff8d284d6c197367bfc1588559d83e31d99db91c8f727d8a44490fa`
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
# Mon, 10 Aug 2026 23:44:27 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 10 Aug 2026 23:44:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:33 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:44:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:44:34 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Mon, 10 Aug 2026 23:44:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:57 GMT
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
	-	`sha256:1e05c582125ea279ebb43fd0250bd493fceafc93351e6bb391a0f0eec87c4d36`  
		Last Modified: Mon, 10 Aug 2026 23:45:03 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0932a1447bee14d64acaf8387f07a3b372866bf0cd6dbebdc70e71ad7e7a4a6d`  
		Last Modified: Mon, 10 Aug 2026 23:45:03 GMT  
		Size: 351.3 KB (351253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8de27b92e2800fcf6aa500572cefd40e011942b4fc9c7480e1f2f9d5a463c19`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508b0ba840355b725a194828caa9cd3e19e2a14960a6a570157790381b1399ca`  
		Last Modified: Mon, 10 Aug 2026 23:45:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c247cc816001fb39f2fdfbd5009922ea02e9b43c8777bcb11dd2aaa0d475b7`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a2766668cda76c6dced109aabdd27ef4bac1260329836ff58d4abbc60da44c`  
		Last Modified: Mon, 10 Aug 2026 23:45:17 GMT  
		Size: 239.5 MB (239472233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b540e73f96964891266310445c032b486af421a9ebb5c1ae85f3663f9e367349`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
