## `openjdk:28-ea-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:9bf9dfa2aa6a44a8b19cd709f13746105297b1269797a7878307655183aae5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:da925b77cf55dbb643fb5b2af05b28caab31d03fc56878899c0cc8294a244140
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467648318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2327fc66fa4714c8c59d897ec21f7e3b211e39625e6acf270afc337c25fc2821`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:08:23 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:08:23 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 27 Oct 2026 18:08:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:08:29 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 18:08:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_windows-x64_bin.zip
# Tue, 27 Oct 2026 18:08:30 GMT
ENV JAVA_SHA256=7cb8070f868767880e8615bd4f8f52a01aa8e7a63c270034acbb719026396d58
# Tue, 27 Oct 2026 18:08:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:08:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595092004383b652eb9dd6a9e61984c52d5b546af386f4d8e34bb346c0f86dd0`  
		Last Modified: Tue, 27 Oct 2026 17:50:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be488d57376c2f95cef07c486740417713adfafaad825a7ef73f0125d6ea92d6`  
		Last Modified: Tue, 27 Oct 2026 18:08:59 GMT  
		Size: 341.8 KB (341820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abb11f758a4dcae3008ba6a98b221518bfd9891bcb4cceab765d143d161f728`  
		Last Modified: Tue, 27 Oct 2026 18:08:59 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e6b64fd25cc7449d86475b1ecdb8a5ac681d26c13cdaf745f35974dc954045`  
		Last Modified: Tue, 27 Oct 2026 18:08:59 GMT  
		Size: 323.7 KB (323744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9581d8cda74ffd2a92fef1822c21ccf8e3d474000457d84a221e667cde0aa4`  
		Last Modified: Tue, 27 Oct 2026 18:08:57 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c0d2ff50e59dab96f096d3f30131827b75151cdfa041c70720935ab1bf7a0`  
		Last Modified: Tue, 27 Oct 2026 18:08:57 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d1b4f91535ec392a9c5f1b2f1bc9dbf664cf045532978287306e1f49115595`  
		Last Modified: Tue, 27 Oct 2026 18:08:57 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141b325903a0f23b57655841fc5cfb366d1a22fdd8352f770e15c34211d53f7`  
		Last Modified: Tue, 27 Oct 2026 18:09:13 GMT  
		Size: 239.9 MB (239918768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d324b18b31c19106629e8e014b32dc605d668f4238cb76041fb96dc187e5943`  
		Last Modified: Tue, 27 Oct 2026 18:08:57 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
