## `openjdk:28-ea-23-windowsservercore`

```console
$ docker pull openjdk@sha256:b4c2d06150cdaa9028374e3382b6630706b194e83de4cec125bf76435269409d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-23-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:b9c718dc868d3c7abdf9ae3f10e6061a66fb4182c4a19326f49dfb8e72c43f63
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632816605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069816412e44bba3540bc7d426656ddc5284654d22d99f8bf12d6b61d107ed6e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 10 Nov 2026 21:29:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 21:30:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 10 Nov 2026 21:30:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:23 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:30:24 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_windows-x64_bin.zip
# Tue, 10 Nov 2026 21:30:25 GMT
ENV JAVA_SHA256=14c3fc0511b3d83dc2b23875f3755241cd1eb1c6ee594ce0a2e80e12be76873f
# Tue, 10 Nov 2026 21:30:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:57 GMT
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
	-	`sha256:2eefd6a1547d60c1fd4d450f3c2c7a8153ec803f034351e09c22ed929156cafb`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fcb228b6085f27138d2ff4ee482ababbe308e3f04bd4bad1c8ddbf6b7ff78f`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 378.2 KB (378154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de0e942f920122ec1accc6147950ea2cdea093519f82959b095167752bb4de2`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4048e58e94e12b185dbe7f7f73986e261fe7e1af8c57a19370cff6e16f2aee`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 366.7 KB (366709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834bff372e234676d0a2fb7ec796adf460e1810efa150f5d7f5f945c5d010a`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765f3fa253756dc23acfb92a8ea217f2fe240e7738fed967a8dd3444567153fe`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3de9511760072371c9684fc88b9e93f097d3dffa6dcf3ef07d688d4964b321`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117abb55257ff625d83ba1e036f8d183beb6678e529ee125d261897bdc32f8ba`  
		Last Modified: Tue, 10 Nov 2026 21:31:17 GMT  
		Size: 240.0 MB (240014903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c582a282d3eb3e84b61f4a16f449f270bca2da7c2c909fd84534ca74cb2d1`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-23-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:12c94868834bd4f9af394e2c375ec7a236f52842a4b5da8d6d1e0f564cfffe67
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467685625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb917566f0b5ac3b02c63aa9ad9e9bf0953aac10be71ee332d118914cc5e1d9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 10 Nov 2026 23:18:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 23:19:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 23:19:26 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 10 Nov 2026 23:19:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 23:19:37 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 23:19:38 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_windows-x64_bin.zip
# Tue, 10 Nov 2026 23:19:39 GMT
ENV JAVA_SHA256=14c3fc0511b3d83dc2b23875f3755241cd1eb1c6ee594ce0a2e80e12be76873f
# Tue, 10 Nov 2026 23:21:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 10 Nov 2026 23:21:55 GMT
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
	-	`sha256:883c8d10764cd7b5dff7be3431b9a803be8ace04221f8dd88db963d201e88de8`  
		Last Modified: Tue, 10 Nov 2026 23:22:10 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1853c00cf7086885d38b80f9e6127706b3285bae3d3e984aac700f1a76a437`  
		Last Modified: Tue, 10 Nov 2026 23:22:10 GMT  
		Size: 360.5 KB (360530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9446e8ab4b70b87a44f818f289cccdb3cc7b6d00b3ddaf6e55bd66903d68e3`  
		Last Modified: Tue, 10 Nov 2026 23:22:09 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88da386d2a02ab473b97e2fbe26d638005b9b34f02d8b4acf190e9ab71ff88`  
		Last Modified: Tue, 10 Nov 2026 23:22:10 GMT  
		Size: 305.5 KB (305546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db96f9f41c46feda5af771481db1936fcd381c588e86271f58e5811ab84b5d7f`  
		Last Modified: Tue, 10 Nov 2026 23:22:08 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373cdc6aa5a0d121743d2fa4627c6a26d254a7a7158e1decc6e7ee1c1a674be`  
		Last Modified: Tue, 10 Nov 2026 23:22:08 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614a8680625f6d7ed9bce595ec38b84e1798643171f44728102d08ec4d041779`  
		Last Modified: Tue, 10 Nov 2026 23:22:08 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a174bd91cd9c901e08f200fe0827dee35faf9a978f0b0c9dacc67aa3d12b45dd`  
		Last Modified: Tue, 10 Nov 2026 23:22:24 GMT  
		Size: 240.0 MB (239955555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af31196d21042531fc7fdd6fddff2290ca5502f034497fd17ab5dc8667150463`  
		Last Modified: Tue, 10 Nov 2026 23:22:08 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
