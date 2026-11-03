## `openjdk:28-ea-22-jdk`

```console
$ docker pull openjdk@sha256:c79e85fc5c79820a9d6921024c60cc9858134c56fe895edefa973b355577b896
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-22-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:23d975423fbf6abfaf348c2103ed8aa500a8ab477f46b8647e611fc82887cc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324972070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1f09e3422e5ab48ff9ba4dd5eacc90f270dc37b1649df3a0aaed7623c6cbd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:58:10 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:58:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:58:19 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:58:19 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:58:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:58:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b050ea00cabd4d9d9fcad565b16f667f5178ad9049263769b8bc4220adc7d5`  
		Last Modified: Tue, 03 Nov 2026 00:58:42 GMT  
		Size: 36.9 MB (36894290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ac938e5dc5e25752b8b6da4147fe153782018303fac921cd868093ac810242`  
		Last Modified: Tue, 03 Nov 2026 00:58:49 GMT  
		Size: 243.2 MB (243227074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:d1d37cdbc1f0e8f61600c6995851a02491f2dad64443c4e83598f564119b92f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecbeb61faa60bf6c135353d8e338433bab02189ea6f78b2ea0fd7502926519c`

```dockerfile
```

-	Layers:
	-	`sha256:011949bb440e75d690cd09b6e31ce77bc6726c496420a072d93d5b42f153e090`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 2.4 MB (2358174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e907810fae36ebef4a01b7d9c2b7234103378f00b5b438d84152019f363ca584`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:31b49d31b265352f1013cb74e3605a1398db397605d60a88f1d0f7942769ef91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321497941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1eff50eaec98bb0dda11aa4c3f23d4b24739553f9136580ef3ec7f1f346021c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:57:47 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 03 Nov 2026 00:58:11 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:58:11 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:58:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:58:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3892966d1a2b8b17ea81d0d4d3208e8c23015795be010503e4a757ca35daff`  
		Last Modified: Tue, 03 Nov 2026 00:58:37 GMT  
		Size: 36.9 MB (36943225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb81e6ecd32900933fb94d9e60b697c7882bfb526b1c2332718bbb42968de33`  
		Last Modified: Tue, 03 Nov 2026 00:58:42 GMT  
		Size: 241.2 MB (241249420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:0e013333c3dcca160cf250610c6b6dc7bbc7498d52ffaceecebe4ff25f4187ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2375767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cda8ee4e5e6e8cdede60490b22bc4d8612f827a48022d2ab4500ba507c581e`

```dockerfile
```

-	Layers:
	-	`sha256:5b45b1f2ad6a43c98c4d43363aee64d4f5509ee5d47ece8196100d3af973e3b3`  
		Last Modified: Tue, 03 Nov 2026 00:58:35 GMT  
		Size: 2.4 MB (2357702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bcd0866c8a96cb029765094097ab1be476a4093aa2ed8c6f1572a21749722d`  
		Last Modified: Tue, 03 Nov 2026 00:58:35 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-jdk` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:009ca71eae82e9a086d504c5f5e6ca292516a3fadf52cd3622ff44badc26b7de
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632846471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb012eb1c306b95a3bf37f4c5f0660759dffacf164d6a7a7a353f99e4cc4e83`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 00:59:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 01:00:38 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:00:39 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 01:00:56 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:00:57 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 01:00:58 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_windows-x64_bin.zip
# Tue, 03 Nov 2026 01:01:00 GMT
ENV JAVA_SHA256=0b0f22bff341457b1eb5d6e023d3eb47eddbb1b16615de5f50820471b9c7677d
# Tue, 03 Nov 2026 01:01:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:34 GMT
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
	-	`sha256:707fc0aa7631989193b8b9815cb631a6408b177e2ff099109eb51c1fba5fc026`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9a0b911402ba912ac2b444ad2456ec66c20e48cf4b22108a51e98cd8bf77b5`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 378.0 KB (377991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43bdb5fea7976219907cde22115f9a7b038f280e1cd07027d1c43a39a8df58`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5f6a01f55a4f1dfee9a008acad34845e486dc7757cf44b1195ca32b864cfb4`  
		Last Modified: Tue, 03 Nov 2026 01:01:40 GMT  
		Size: 423.3 KB (423295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86561103be4eadbbc1fbf976125d1516dd4d4c9fdf94876ae7fa9550a6e6d781`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cca75ae9ae09f063518fd347cbb2d0396c237904b3c5674761e6ed21984785`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43120dbaad4f046be9a24f2aa2781086f549d433d380de62b14ebe91dc78a57c`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c88cde345209f1bf03b9e66e6155f14a8e7a96d556032ee8bad2cafdd0220`  
		Last Modified: Tue, 03 Nov 2026 01:01:55 GMT  
		Size: 240.0 MB (239988465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6ebac600898853d889110a601d6e26b47dc3dec7efce621dc70ba7bddfdf04`  
		Last Modified: Tue, 03 Nov 2026 01:01:38 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-22-jdk` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:b2e787e59b26dbf254ddc3b702536aa2f07d4210a49e71327fdfd8cfec55343d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467653551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b76e65762c6c52508ab130f25327f5aceb427da62ec0c754b2f3bc3028778a0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 01:01:07 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:09 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 01:01:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:01:21 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 01:01:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_windows-x64_bin.zip
# Tue, 03 Nov 2026 01:01:24 GMT
ENV JAVA_SHA256=0b0f22bff341457b1eb5d6e023d3eb47eddbb1b16615de5f50820471b9c7677d
# Tue, 03 Nov 2026 01:03:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 03 Nov 2026 01:03:23 GMT
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
	-	`sha256:52515a88dba4a01d0de7a00565b95a7a5ecfaa05d38aa12ab10a94ecc5e53dba`  
		Last Modified: Tue, 03 Nov 2026 01:03:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc4a02b77e31159eb29199df986e644696bee8440048fa0460675e30d21e2e1`  
		Last Modified: Tue, 03 Nov 2026 01:03:39 GMT  
		Size: 360.5 KB (360487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b57205484ac6ccb60a93116c5db8580c6198e20b626206af42a75c5fddc25b`  
		Last Modified: Tue, 03 Nov 2026 01:03:38 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4b204321f59f7a47b78f570186ea06ae340e3979838586208dc338b701c8d`  
		Last Modified: Tue, 03 Nov 2026 01:03:39 GMT  
		Size: 291.2 KB (291164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aed65041acb3d3a08a9d1c35cef336be94c8a02c1383b8d59c3d47257b39df9`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca035a60226f5350ebea0502cd97eb32c3d34f7546e355a7785bb607e31ea40`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73145c996692f10b440baf8fcdc1a243443ef5da72af9d86aa23e1d05e65f4b`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10f2477eb1ca5731b3a80d936d2a8934aa495dfc400d8f3a7911265ff89ab2d`  
		Last Modified: Tue, 03 Nov 2026 01:03:53 GMT  
		Size: 239.9 MB (239937877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1b82ce5d22a6d3afbce03be679866d260bf52fb77b034ea17c4264a5978d8a`  
		Last Modified: Tue, 03 Nov 2026 01:03:37 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
