## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:74a5c5b7deb04aa7aba908ffc2a420e66e9de33088f10e63eb377f8386aa339c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:c287ee7f259db6873523978f948fb252845411ae75364719c31957a5426bf16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324531520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad369a7749253b835a921d21bfc31272c7ef75e2a49e7b520f0ab8ef043be6f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:28 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:28 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 22:56:15 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 22:56:29 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:56:29 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 22:56:29 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 22:56:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 22:56:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9f79e87364384938c129a36c63059f3b9f44b0ecc5bf0b9328aa7de55fbf2483`  
		Last Modified: Mon, 12 Oct 2026 19:10:38 GMT  
		Size: 44.9 MB (44901103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8423331ba8632e7312be18b73f854ac06c31013de66e72d2f5c4098b1c78779`  
		Last Modified: Mon, 12 Oct 2026 22:56:53 GMT  
		Size: 36.9 MB (36878059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377d3be02ae4d994bd31ba8eabb28e2b6caaf1a196cc92aea363cc33e2dec36c`  
		Last Modified: Mon, 12 Oct 2026 22:56:57 GMT  
		Size: 242.8 MB (242752358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:cfecd0b52ab514e3c9c55e3d598316571a3c72a0e80cfc3b69e61f1f8d681ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9742f09dfc385ceb04fe972128082be20ecd393eb354ce29707aa0ce66fe5e9f`

```dockerfile
```

-	Layers:
	-	`sha256:6627dbc1bf993518ab6deb754583c209cfaea68d9b2622cdda47e453270878bd`  
		Last Modified: Mon, 12 Oct 2026 22:56:52 GMT  
		Size: 2.4 MB (2376705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4c327290e0ad29c12d12c70ff158a8ad7c306fc4094fe4a17b9c5f70c866eb7`  
		Last Modified: Mon, 12 Oct 2026 22:56:52 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8624959185ef355d049e850dd00a91f0d47d643dc349912f7b97de1402095529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321099646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0493dcc533f75dce049eb0a13bdb98b910c16ff8adda4e638992ce0d14e6705d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:09:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:09:53 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 23:05:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 12 Oct 2026 23:05:52 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:05:52 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:05:52 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-x64_bin.tar.gz'; 			downloadSha256='f885d924e3a7a9847572aef6a99561f93b31680951c8bdcc1b29b67bc4bc74e3'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_linux-aarch64_bin.tar.gz'; 			downloadSha256='72a7a277b2027aa2cfffc29d0405d8b0a5e89801054505e2ec83b6b7ec5c5774'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 12 Oct 2026 23:05:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cddd3cf7f96f27e9d7642af5cb3594a4f8baf2a6c7d24235bfce815f70f15fd7`  
		Last Modified: Mon, 12 Oct 2026 19:10:04 GMT  
		Size: 43.4 MB (43361849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46877e2cddee2574975a01be79f81407a31887eba6b64740329eae9daff9b2ba`  
		Last Modified: Mon, 12 Oct 2026 23:06:18 GMT  
		Size: 36.9 MB (36947319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c427b88c415eca94b369b4c806fe3ba9448e823c36993d5d206bc606cf9a1df2`  
		Last Modified: Mon, 12 Oct 2026 23:06:22 GMT  
		Size: 240.8 MB (240790478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:aa97a7ff55302f85ebaf93ac112a60699c9928fe560304cc5a40fe304a70d024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a5feddc3a4ba2b10edb1112996218302a7f8289a399b78579af493e0a5c347`

```dockerfile
```

-	Layers:
	-	`sha256:81fb527db4b51e55306dc25e6566fdd1adb81617fae2eda88abbedb5bc2f86fa`  
		Last Modified: Mon, 12 Oct 2026 23:06:17 GMT  
		Size: 2.4 MB (2376233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f47b65a070adbbd322f8ea0d9114c87ac508892e0f8b5e182d19c4529021681`  
		Last Modified: Mon, 12 Oct 2026 23:06:17 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:dc41bd3c5a6c2a094f92915dc0db5ff41a726c605e0456db724efdecd83e9066
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632423809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ee1d933642b33cd951bd1f5235781bce50a4431a34caa2b60f8fb211c8a84b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:06 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 13 Oct 2026 23:13:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:12 GMT
ENV JAVA_VERSION=28-ea+19
# Tue, 13 Oct 2026 23:13:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Tue, 13 Oct 2026 23:13:13 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Tue, 13 Oct 2026 23:13:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70446645b14bcb8d3b03919ad694b2fcba6aac5ecc9060ff84a943af8a43a4f6`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 356.2 KB (356152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5effb3d8e1d1d26d1978c846814508c63fc651121a5d3819884e93fc5e60e1ea`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de863df3716fc68fb55da84e646704d8387034d75de8af9a4fd781699f4d821a`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 341.9 KB (341949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f519336e21d1c89332fbf293b9c9a16a271269b80f6fdfd82b7890d516f449d`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f00f878189717303c1dbb7ae47b0038303103d8eaf02999d1198a3d2f9c24ae`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caf7e41dd05ec8adad80ca5188832cd4321237432664c02202533651ed18eb1`  
		Last Modified: Tue, 13 Oct 2026 23:13:44 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1645a1dafd78930fcfa872950a02a3993269d9a8051026c86abdf79e79a9ef`  
		Last Modified: Tue, 13 Oct 2026 23:13:59 GMT  
		Size: 239.7 MB (239723637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266416acabd139eaeee5bb6098396789ae3b24ed5f2631ca1e66732500b1491a`  
		Last Modified: Tue, 13 Oct 2026 23:13:43 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:0cdd686665e03478e55b16927d86b801b9b3948a9cda6624fa9592d8deafda36
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466666715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf1ff408f4d6cab21b6ddd91ed8a5c5bba6be0e36b387301687066ef346aac7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:40:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:05 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 13 Oct 2026 23:40:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:10 GMT
ENV JAVA_VERSION=28-ea+19
# Tue, 13 Oct 2026 23:40:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/19/GPL/openjdk-28-ea+19_windows-x64_bin.zip
# Tue, 13 Oct 2026 23:40:11 GMT
ENV JAVA_SHA256=7d4c580dc0337c8b302c795589a215ad7b61ad52f78cb7c769c31b9f74e4ecd1
# Tue, 13 Oct 2026 23:40:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:40:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83cc1683bafe9284816d0853224a983ec004256c377e950d22f368198cd6d90`  
		Last Modified: Tue, 13 Oct 2026 23:40:43 GMT  
		Size: 340.6 KB (340605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76c50d7ca8176a54d146ff4349220511181a00073e170d63ffb5fe099815618`  
		Last Modified: Tue, 13 Oct 2026 23:40:42 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8f57342374adf78898ba0067344052e9e02e23d068d49bf3b750d1133f898`  
		Last Modified: Tue, 13 Oct 2026 23:40:42 GMT  
		Size: 323.3 KB (323266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c32371033bfa6572923a0d441d74585f595a44ed75eb25ff8a80f8273b625f7`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac42adaef260a6613757c0b41ba1fdfa0f46cfdc25a3b3e1c8337ed547bb6800`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94a19ab103785c9c53b5a4d8f0b30146913ae2b9a3c957b3518f89728bf752`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f85d03a60b8aec54054f89d1ecdd46bbef31f9b40dec8e2f93cafb7b162692`  
		Last Modified: Tue, 13 Oct 2026 23:40:56 GMT  
		Size: 239.7 MB (239709497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c771cd67603025454bff9d036ecfa125e0080e36b5c6ecd09c4e9e2caac0e3ab`  
		Last Modified: Tue, 13 Oct 2026 23:40:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
