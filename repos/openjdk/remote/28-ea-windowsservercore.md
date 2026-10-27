## `openjdk:28-ea-windowsservercore`

```console
$ docker pull openjdk@sha256:653d25d6ea6309786c9921f58ec5faa710a970b18d020bf9d0eba1f3410c2246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:ff465a9040294d3b8da24c337bd06e3af53acd4e27099f22a9af39e1ed632594
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632687125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d9c5159605aacd05ff13625efa3f4c9d115f8eefbff537356bf0259f054715`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:35 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:36 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 27 Oct 2026 18:00:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:42 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 18:00:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_windows-x64_bin.zip
# Tue, 27 Oct 2026 18:00:43 GMT
ENV JAVA_SHA256=7cb8070f868767880e8615bd4f8f52a01aa8e7a63c270034acbb719026396d58
# Tue, 27 Oct 2026 18:01:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:01:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cc14c0d313a53039a0a6a49e50b2d7e3ae6260f2e4c81084cf67c62debb53d`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df387b531fb250d1f81e8bebe5b9d70ea34cf4bc60bf35d6e8a6bf756a8919`  
		Last Modified: Tue, 27 Oct 2026 18:01:15 GMT  
		Size: 356.8 KB (356780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389ee1957e4e537e5f096f3f7bbd192c22374fd56d12a371cec07a45eeaf5ec5`  
		Last Modified: Tue, 27 Oct 2026 18:01:15 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab366073ed4f86f272dc7dda6df4210dc92677f6705af6a25643595571406d38`  
		Last Modified: Tue, 27 Oct 2026 18:01:15 GMT  
		Size: 342.2 KB (342234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27eb854fe74cf1e71a32d55831f465cc280918ba97f7432501e6335227495202`  
		Last Modified: Tue, 27 Oct 2026 18:01:13 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d907fbc90ccc200fbd48d4525216b8b2812f52fbe82708477bdc3d356ce452d3`  
		Last Modified: Tue, 27 Oct 2026 18:01:13 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8672ebfe16bb850cdb966e9800d04d05b9c04d5f97d8a451c825fb98f7bb5234`  
		Last Modified: Tue, 27 Oct 2026 18:01:13 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c084912ffba54d8aad0f0604841327854e9e94822949faa2ed6ad1f7560e8de`  
		Last Modified: Tue, 27 Oct 2026 18:01:30 GMT  
		Size: 239.9 MB (239931303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08948b1d8889eee93a1e5df4c6daef880c0a06a78bce9f26e432ca6bd12b48d1`  
		Last Modified: Tue, 27 Oct 2026 18:01:13 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-windowsservercore` - windows version 10.0.20348.5773; amd64

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
