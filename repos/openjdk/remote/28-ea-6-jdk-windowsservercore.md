## `openjdk:28-ea-6-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:2e4ddfa01ec667adcea8833340b29768d3e70953a11b3f8bd316cb51f531977d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-6-jdk-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:68850af76018ed45ba35f53e6a23ca909a0469163c0a51737c5819eac8e8879a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580168971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ceb3a127f11b721bcccf5c1e75417c762fd0e8218d63843a183f79982c7155`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:14 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 15 Jul 2026 23:15:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:23 GMT
ENV JAVA_VERSION=28-ea+6
# Wed, 15 Jul 2026 23:15:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_windows-x64_bin.zip
# Wed, 15 Jul 2026 23:15:24 GMT
ENV JAVA_SHA256=7d58f4379ac8918c92d10d55e6c26f5e224a010e064c3132797153bc793e7429
# Wed, 15 Jul 2026 23:16:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:16:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f759ddea25ebb633c9186aa5a91556b5d26b945611311e317b60165ea2aaf0`  
		Last Modified: Wed, 15 Jul 2026 23:05:08 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e691152b2ce58e7a69dfb9d40fd3ce7076b7b5cf194f48017e8771005616ee8`  
		Last Modified: Wed, 15 Jul 2026 23:16:18 GMT  
		Size: 358.3 KB (358311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367357ca972ebec6adb30a95b214f922db3ee8876790c5cf72968d5c53a71648`  
		Last Modified: Wed, 15 Jul 2026 23:16:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28328857ee3fdcc85945c9d964b55b17e217362b484b819fbd36844c496ce614`  
		Last Modified: Wed, 15 Jul 2026 23:16:18 GMT  
		Size: 346.2 KB (346204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df79b29c07f27f70ef37c44ad23e19a6dc3aeb61d5609ef6dbab0e5a2064d996`  
		Last Modified: Wed, 15 Jul 2026 23:16:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8e7e8ba11848d569739a98e9ec685b5a8fc3b28fe0a2e7d3e38ed0d05ccff`  
		Last Modified: Wed, 15 Jul 2026 23:16:16 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31e4cfcfa312f4c52e9424c6b83801a7c9a07db871b3e30dc7fd3c6066960bc`  
		Last Modified: Wed, 15 Jul 2026 23:16:16 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a635b37ed016f67aff5585be29990525186d63db2f822d4e3446bfb5c1ed39`  
		Last Modified: Wed, 15 Jul 2026 23:16:32 GMT  
		Size: 224.4 MB (224448552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecc39b3e56c66953466040fc81cddfb346816fe888e007c9238ad21497602a4`  
		Last Modified: Wed, 15 Jul 2026 23:16:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-6-jdk-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:f6f16beac041493aa404cfdc315fc9186114ac59cf230d6f0e11cd644cc198d0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2382816594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a28689deeff2c2454db8b9e7671f74b3e18cf1ce22857a2eb70d8d37bc5ae4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:03:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:28:12 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 15 Jul 2026 23:28:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:18 GMT
ENV JAVA_VERSION=28-ea+6
# Wed, 15 Jul 2026 23:28:18 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_windows-x64_bin.zip
# Wed, 15 Jul 2026 23:28:19 GMT
ENV JAVA_SHA256=7d58f4379ac8918c92d10d55e6c26f5e224a010e064c3132797153bc793e7429
# Wed, 15 Jul 2026 23:28:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:41 GMT
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
	-	`sha256:cd99cda305ab1db9d8da0e66cf144dcebbcf0c3a5325391dc82055197d387130`  
		Last Modified: Wed, 15 Jul 2026 23:07:15 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de64338f083c0d219fc0ecac88c797b84a72217186e4ec1b735196f24ee96a5`  
		Last Modified: Wed, 15 Jul 2026 23:28:47 GMT  
		Size: 486.0 KB (486044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b23605336b0a1582409e0b379b2d40aa500335ba58e4fd9f98bb40729b7ba4`  
		Last Modified: Wed, 15 Jul 2026 23:28:47 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c7eba2ae166fe71360f1b927f370c9ba18f94632bb3774a54d35570782aae4`  
		Last Modified: Wed, 15 Jul 2026 23:28:47 GMT  
		Size: 333.7 KB (333669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56c45213d7ea981d47f74ac23701e76e06b17977cfe1597520210e033d9c8d6`  
		Last Modified: Wed, 15 Jul 2026 23:28:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5eb92ba0b6d9a66e2a69d58735a397fb0dab170d09b5a9b4da1773629ce29`  
		Last Modified: Wed, 15 Jul 2026 23:28:45 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4a1fc4ebcebed606d161a76fbab9544ce8c58ea7f0597008351b08ce389f51`  
		Last Modified: Wed, 15 Jul 2026 23:28:45 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bd2e4ee6c09ffcb6f95c2000ac663b9294efaacd19e68c6aaea810b60e0e17`  
		Last Modified: Wed, 15 Jul 2026 23:28:58 GMT  
		Size: 224.4 MB (224435894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9049029a89e6f4bf62cea85e21e066747485d2987006facd2614766843595`  
		Last Modified: Wed, 15 Jul 2026 23:28:45 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
