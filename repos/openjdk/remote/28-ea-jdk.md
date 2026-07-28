## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:2f0d6659f0b939df7667757f494f2cb5441453ce3ff0ada62fdcae680bb37ae9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:6e61399faaf193a154d0c65a86621651be78b394eaa8e0e1fcb24508882a6ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309214997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd99f5f16b996d5ee578581c00e7e7a76d481eb59467859ed14b972e9f10600a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:08:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:08:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:49 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:08:49 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:08:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:08:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a6faccc65ed9243eabb023faa265fb6631e9896c120e2d39712e130c3d29a`  
		Last Modified: Mon, 27 Jul 2026 22:07:36 GMT  
		Size: 36.9 MB (36854623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b83d1c8fb21608c958d37e6b247210f5f00b526afb9352d779fba29be111cb`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 227.5 MB (227528035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:0e25e61a3700d1a0d5a0e07f950e2a6dcdccb761c024b6ae959528f0f8b86b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5024fac1ce23b80ac7d618eab23e2f5823f95ffd174cb696f4c4e1721db56e`

```dockerfile
```

-	Layers:
	-	`sha256:21859217d388ed242361f8cbf8fa3ed20fa099642734ff75fe15a8ab695155f1`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 2.4 MB (2373333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:613982710e2e5121ad6a7a9c418f7e011676c15672e42c95023922cecae876ba`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:858ed5f35beb53512815b71e44f5290650a03bb04dce44f3567219a3bc29a91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.8 MB (305781580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c589116c8504db68665a1ece51142e972f5f2bba94ef76376021f003ec6a9f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:08:55 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:09:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:09:16 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:16 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:16 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:16 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5bf638879a5b77c9084273537390b023dbe511d4b8d75716e20ae7a154951`  
		Last Modified: Mon, 27 Jul 2026 22:09:39 GMT  
		Size: 36.9 MB (36903220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0f7957a5350b6fb24379ed85c0edbff1d9bfd4b18777c0fb4d63f965c5eda3`  
		Last Modified: Mon, 27 Jul 2026 22:09:43 GMT  
		Size: 225.6 MB (225590467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:0c29d528968fb8324a1d2fc3b9b405bfeb144044f41cbb24171f1a977dd8c80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c0e514dc4f5be0e0fbaf437f4976c1975ed2155d6ea1e5a73199d89bf86623`

```dockerfile
```

-	Layers:
	-	`sha256:fcdc2e7cc635946ec99b76b5e3da2d3e9ab83cf66b89d92900d87092abc4e3df`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 2.4 MB (2372861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3965c020893f8e205735a5a9877618db9c24ef4a70f41f00acc76a413ab5913f`  
		Last Modified: Mon, 27 Jul 2026 22:09:38 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:0874a3ca26db069f89f932474cb29fb9b9f59d44e74f75b07605734ebcf1c294
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580360025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbfa2a46828ae5261d728bd880fd619c33ae2229f3f92adcb4c6cad091b4a4f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 27 Jul 2026 22:12:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:13:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:29 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 27 Jul 2026 22:13:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:36 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:13:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:13:38 GMT
ENV JAVA_SHA256=73033cd867f9fb63fcddc062e24a357accf6c852fcd71ceb609bd410fbdf1bfd
# Mon, 27 Jul 2026 22:14:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:14:04 GMT
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
	-	`sha256:2f28cc95ec33ebc8d4d7e3d3b0c84578459d19e86c63a35ca8c98a2815774d76`  
		Last Modified: Mon, 27 Jul 2026 22:14:09 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132e401bfdea12ebbd9aff0b451a0a3b876db021e3789a03dbc5af04daffebd6`  
		Last Modified: Mon, 27 Jul 2026 22:14:10 GMT  
		Size: 397.2 KB (397177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc9b4bf00f5f637143b888abc19bb5e56e624766b9c3d36916ee78f3f9bbe8`  
		Last Modified: Mon, 27 Jul 2026 22:14:09 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7587bfa25efe5194186415735325bdf96f43da4428cf6278090092832ff6091d`  
		Last Modified: Mon, 27 Jul 2026 22:14:10 GMT  
		Size: 385.8 KB (385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e34e2629e929f309a9fc407917cdca5e4048ab52551976e5ea31fe7d54770`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c2064de2a6344a88d7a0f6d078a09270ffab1513492693ffaa456991da92`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8aab31b3f6e804738d469535e48ec0365f78e77602bc84f86ae9b8890b51`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b460dcc44c319a174feb2e140146cfccd763c40e159bf5df73ff60c4ca2e5c8`  
		Last Modified: Mon, 27 Jul 2026 22:14:22 GMT  
		Size: 224.6 MB (224561061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfd57a10920a5cf7330f8334901f6d3d31ee0b0d006b4c0f8f07e1faf3792f1`  
		Last Modified: Mon, 27 Jul 2026 22:14:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5386; amd64

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
