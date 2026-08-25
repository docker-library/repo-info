## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:f35f1be108640e6ca848d026e8b90bb3b518dc7a7a0455cbcfc478653ddc2ab1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:0ef0ef5ab3eb7e30764383eca545581e326c972255a814e913e6d92ecdbcb36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324215356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2118b07e155ca7aec5cc6fd48ca5f38cf6ae64720c294629455fd5852777bf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:59:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:59:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:59:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:59:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:59:19 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:59:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:59:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1315af4f9826ade5a2dbd0d0998e242f9bf95c055be47b2a37a7ae5df80d69bc`  
		Last Modified: Tue, 25 Aug 2026 17:59:42 GMT  
		Size: 36.9 MB (36854697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3ee4c61074c99613446de25e54b9815d9f43a6af36d4b8b392eb9fa6c8417b`  
		Last Modified: Tue, 25 Aug 2026 17:59:46 GMT  
		Size: 242.5 MB (242512927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:ec78d915c49c95e5c594555ace015d16d7562e27b098fe4b5b30638c2e9b5d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2facc3b21af8d8fc166f274dcccd183aa43f3b8639c2377406207f8023f0e7d0`

```dockerfile
```

-	Layers:
	-	`sha256:82aef5872e5051a11d6da0ad22bd83a4493c5995e1a3d55972aa6ccdb5c4a44c`  
		Last Modified: Tue, 25 Aug 2026 17:59:40 GMT  
		Size: 2.4 MB (2375970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:904d6dff0527ea73417de4be75df2c44abf8ac912d6d70289982802534996ace`  
		Last Modified: Tue, 25 Aug 2026 17:59:40 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ba97f9222cd3a54020e9c6611aadc537534d9b082982b9163fe2d38bc6bd2292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320827130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ccade98afcf39907236229e54ba17de35c3eb5db90a3cba5a030e084a6b988`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 17:56:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:57:06 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 25 Aug 2026 17:57:06 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:57:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 17:57:06 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 17:57:06 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-x64_bin.tar.gz'; 			downloadSha256='dd9dc2ba88bb61a22aa79fca553ed563979fbd734d36e2a72ce7c37664c87128'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_linux-aarch64_bin.tar.gz'; 			downloadSha256='5cc4cd0429b6800a19c68d1e6069b92bffa68f2d39a16ea033a796e68a144a74'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 17:57:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f638f9a8222d9916e73bc825e7a123d2f9fda94d4b1886ae4138841802633`  
		Last Modified: Tue, 25 Aug 2026 17:57:32 GMT  
		Size: 36.9 MB (36917022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24724d9e0e76f0751da24d428927032ceb6c534f8a8e67336c7d00fc0325e4cf`  
		Last Modified: Tue, 25 Aug 2026 17:57:36 GMT  
		Size: 240.6 MB (240606442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:e2e5dff2e83296e241ee3ed7e065a75dbdc64ee405e7e87b52527d2d98d6cef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b6dacfb929ad7ad11f3ec0ef911e88c510dcec554e344dc904b2f31836bc69`

```dockerfile
```

-	Layers:
	-	`sha256:d489b75e78fa1887a719df71146ce53174e04570f69b2b2e978961392299b7f8`  
		Last Modified: Tue, 25 Aug 2026 17:57:31 GMT  
		Size: 2.4 MB (2375498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf58710fa01858f6adff4fbcf186be75605c78c279206762286a08feacc15d6`  
		Last Modified: Tue, 25 Aug 2026 17:57:30 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:e6c3b6216aae103274be7a9fa45903a5eda611f27fa64c247b0a68d7ef026016
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681055255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd6b45f2d594fa017110311dccb400e1968b61d6e9c58c605a4d658c0339374`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 25 Aug 2026 18:10:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Aug 2026 18:11:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:11:55 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 18:12:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:12:03 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:12:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_windows-x64_bin.zip
# Tue, 25 Aug 2026 18:12:04 GMT
ENV JAVA_SHA256=f0bc2313112a6ef96e10cce6fbfa634580e75feaef946b796b0d8ba3f0e1759d
# Tue, 25 Aug 2026 18:12:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:12:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69719aab94e8b4483fe06abc3cc8a146b608c0caae01cb9bb57a43a9135db461`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f80e09aaf5617b5a4f1565a891e1968ce4ab23af9af0b47761f5e26378553`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 389.2 KB (389198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e94cab8445d8b6e7463fc5ba7b7320e8cd225a30395b98149d07e5a6f5a62a0`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fac4e6d2427ee8005b1d91356774468a89c2a4fe3a598c78b973dd04b0f448`  
		Last Modified: Tue, 25 Aug 2026 18:12:57 GMT  
		Size: 373.7 KB (373733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a424f2387bdd2f222925147c8094d2626aae02cb2284b50ded31140bad85e3`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76275200a8a6c7ebdf1471c858b878838d947ddd2a766d16b3ca49f1a1c7caf8`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb668196800f1dd2be4ea72d19f674502bc852dcc61f7ed36b9415d4b21cf0b`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547362b76b37dfcf7972a61869fa132960a4300d5083b08215175e4e399bf618`  
		Last Modified: Tue, 25 Aug 2026 18:13:10 GMT  
		Size: 239.5 MB (239499195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218ba146f8e957aa71346cbcec70698355863fb4969fb5fa0f0143b861738638`  
		Last Modified: Tue, 25 Aug 2026 18:12:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:5a4d2f45076198d0ba3c37c483e622f4d34d107d49ccc2dae6b69120f74c33b2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424183419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7578f2df1204c5e2474600fb2923c1f4379828db8c085395720a185f8e39167a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Tue, 25 Aug 2026 18:54:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Aug 2026 18:55:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:55:30 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 18:55:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:55:39 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 18:55:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/12/GPL/openjdk-28-ea+12_windows-x64_bin.zip
# Tue, 25 Aug 2026 18:55:40 GMT
ENV JAVA_SHA256=f0bc2313112a6ef96e10cce6fbfa634580e75feaef946b796b0d8ba3f0e1759d
# Tue, 25 Aug 2026 18:56:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 25 Aug 2026 18:56:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966d0261b11474c921e04d5e6a2263d1097984359bd80b39c0b9bdb24cb87013`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a864e751c3422e3f6edd2f82d1948617571076b4964ce942fb126731d6aa3ab`  
		Last Modified: Tue, 25 Aug 2026 18:56:19 GMT  
		Size: 362.6 KB (362570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c045f3cbf6bacea5719eb4ceb328fb94b7d5ed2a8517c60c4f83a54de38c0a1b`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd6d9f496fac3d1441a0b8b0b5a00606be806eabf79311ca43bfab6b0c97895`  
		Last Modified: Tue, 25 Aug 2026 18:56:18 GMT  
		Size: 339.2 KB (339227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612311131731b7c613259a2a4c13ea5a17d7d14a71b1a04a406fa05c933cae9c`  
		Last Modified: Tue, 25 Aug 2026 18:56:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d8b37a23d6a4a9164c37acf43b29b2e81bcc0b9d87fb463622b0fcbe30da29`  
		Last Modified: Tue, 25 Aug 2026 18:56:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7779e74ef3244b8e8b2745c707a80f5877d7d273de25f300365f976d9d6e76dc`  
		Last Modified: Tue, 25 Aug 2026 18:56:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f1c3f40cc7d612d4590351ae527525e2bdb5decf0c4e2ffc51afbb0e6db378`  
		Last Modified: Tue, 25 Aug 2026 18:56:34 GMT  
		Size: 239.5 MB (239476334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7ca4d5621ff1956292d62ddb839d417d77e1909a8b4eaa4c65d70cd5440a8`  
		Last Modified: Tue, 25 Aug 2026 18:56:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
