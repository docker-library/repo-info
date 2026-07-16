## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:9daa03f29a33bad857e70874e66cdb3100929b05894c8c68fe75b72d7b9179f7
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
$ docker pull openjdk@sha256:779ae50cc5f579f82fad0fdb928a52463c0c7c177d062454cd99da320008a552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308216082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2e3aa5924073d216ed43f2ee4ac9659ea90729c3cd243a36d0e800c25091e4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:37 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:45 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 10 Jul 2026 17:10:45 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:45 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:45 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88dced95784962e55f276e91fbd0047d5cb3c085f977d12d6b683d3f797a664`  
		Last Modified: Fri, 10 Jul 2026 17:11:07 GMT  
		Size: 37.7 MB (37687941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d636a6edcba26ccdf849c9f592a6b1ce59f3ce02a34163ac775219ff7af83976`  
		Last Modified: Fri, 10 Jul 2026 17:11:11 GMT  
		Size: 227.4 MB (227447559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:7c5837309b574969962d558b020b1087533d00f708b3d52455cdd4e9c41bba20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90a01ec137543d8e96fb4ca2be9365e63fcdf0396842e47ecfa9bf711bac475`

```dockerfile
```

-	Layers:
	-	`sha256:594b07e2cd143a6414b3f4d6d5d8c4ad19b7abb347217ca70e1dbc56929e8150`  
		Last Modified: Fri, 10 Jul 2026 17:11:06 GMT  
		Size: 2.4 MB (2366446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08c7881ff2ddff527d1d97a211684092fb720b03b3d5aa9e53b7307b69a6edde`  
		Last Modified: Fri, 10 Jul 2026 17:11:05 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:df8aba11d52d94c985781fab64088f3e80878fe949a10ba5ada5d99f5148672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304698730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dffa6791da476ae9bc66602c6d80e84d0b091c24bf0476c6894627c378b1b4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:10:23 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:10:32 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 10 Jul 2026 17:10:32 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:32 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:32 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:32 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1779d205d5eb35c796fdc3372e16d1357d0ed121e4a7d7fd0f4e598be4a40e4a`  
		Last Modified: Fri, 10 Jul 2026 17:10:55 GMT  
		Size: 37.7 MB (37695888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d369fd5d47ddf1a25bd278b982c0cce94bdb9dc2153f5add2f9d05417e6a73f3`  
		Last Modified: Fri, 10 Jul 2026 17:11:00 GMT  
		Size: 225.5 MB (225507147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:33b7fd4f53b80a69e0a4326b37d565ef86e59d84026288ae5d222a2e4119a7c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e677de65666025a1a0cfac9b20d5e2e502c807ad5c00ee595512eaed6b46524`

```dockerfile
```

-	Layers:
	-	`sha256:65c0c7315e945bc62a9c17fab39b78cdbd11d9d3c50535e51239a415a9e0672f`  
		Last Modified: Fri, 10 Jul 2026 17:10:53 GMT  
		Size: 2.4 MB (2365974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1bdd9e1af137219df9e59cb21cfc687f38f0bd3579117c5828a194232c20fdd`  
		Last Modified: Fri, 10 Jul 2026 17:10:54 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33158; amd64

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

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5386; amd64

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
