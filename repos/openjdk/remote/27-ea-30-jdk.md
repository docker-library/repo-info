## `openjdk:27-ea-30-jdk`

```console
$ docker pull openjdk@sha256:e77b30609f13a3901c8375384ed7cc28d200b5ebd961ce526751e35c9b2af658
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-30-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:01008679c928d04a3efed80fa995d21e636f54598bddf7ae5c694c9443e59079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307747257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75db6a9d140ec1c5d36351228ac5a9c6fa2e0a17678970c066b13096177905`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:09:17 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:09:26 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:09:26 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:09:26 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:09:26 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:09:26 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:09:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db18f4bc05bee0a9fb7a7c1b45058309d3db1f7dbac985c5a7c07a83d185d`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 37.7 MB (37687939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de8917e38386c7733ea144e606870a05f479d83cd1ef7b83599426db20b75fc`  
		Last Modified: Fri, 10 Jul 2026 17:09:53 GMT  
		Size: 227.0 MB (226978736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:603c639d47296588900fd6d759184cb76fecb43bef3c76b81c2b1c5f81aa93af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db78f21febcb8b536c83b6ba48e8da4e078d415b0acc1cd543076fa851ff0e42`

```dockerfile
```

-	Layers:
	-	`sha256:1822ec7073cf9757bf137a4adee4f9ee4e204680bf1164967951c1db8828ce6f`  
		Last Modified: Fri, 10 Jul 2026 17:09:48 GMT  
		Size: 2.4 MB (2366462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:771c06b65ee3684180a960953c8d94f6765c7450026f8eae8e1bdd4487acdfa1`  
		Last Modified: Fri, 10 Jul 2026 17:09:48 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-30-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2acf4990678771c1bf42be9ff6275ceb3dfae7636722cf3691e1845ba9b9025a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304156726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653e26c04193b200d3478679b339595cabcf0e0cfbad8dc790e73296371cfc33`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 17:08:59 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 10 Jul 2026 17:09:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Fri, 10 Jul 2026 17:09:28 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:09:28 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:09:28 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 17:09:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-x64_bin.tar.gz'; 			downloadSha256='675ab158767ace31f82c60352ed3e8da485a1c9dbfc99f00a1a593814a6e45b2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_linux-aarch64_bin.tar.gz'; 			downloadSha256='f527dd176a4be06e34103079b70eda06f1019ccafa2011011cd9232441b81810'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:09:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5330e6e81762d58653fbcf22aa3e51bc0ee858d5e001b4d3a917fefecc1953`  
		Last Modified: Fri, 10 Jul 2026 17:09:51 GMT  
		Size: 37.7 MB (37696007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2f19cb61f71ac9825087e6be3cf30eb046634bd9b5a989c61727be0d4e106a`  
		Last Modified: Fri, 10 Jul 2026 17:09:55 GMT  
		Size: 225.0 MB (224965024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-30-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:e5668d723a8316e541245698ad859fdeb36f56549165ebc5d101581d9e2dcb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f652c5e8516530448d877f45d67fd2fc751ad30c2ba07d65eef13c59718634`

```dockerfile
```

-	Layers:
	-	`sha256:36a87f9d1c7538ed2efd7fa9597a9004a67bec5a8fa2db93144a84fbc07c1850`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 2.4 MB (2365990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3345964e1629493e25bc0c44590253bff7f618c39d38f6e387555732117d318`  
		Last Modified: Fri, 10 Jul 2026 17:09:49 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-30-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:d4b0853db966c0ff6a6aa738806cdb54e1990449eaa8ef62a4099f6635b7c366
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579239906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ec449ce809e3434422f5c23d155c54ddd7334e432f994f94baf00475af2a83`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:10 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:12 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 15 Jul 2026 23:15:18 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:18 GMT
ENV JAVA_VERSION=27-ea+30
# Wed, 15 Jul 2026 23:15:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_windows-x64_bin.zip
# Wed, 15 Jul 2026 23:15:20 GMT
ENV JAVA_SHA256=bbb2feb0077744597a316c405a33bffc2421a8578457f6054daeb33f0730a41f
# Wed, 15 Jul 2026 23:16:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:16:35 GMT
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
	-	`sha256:ff76cfabbbc1a1a4cb0818cda800a0b4816aae82478e1665c85d859addb384db`  
		Last Modified: Wed, 15 Jul 2026 23:05:46 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db961ff8da85991b396d498844dec1835faf60f9abae01d46a39dd477f55ea2`  
		Last Modified: Wed, 15 Jul 2026 23:16:42 GMT  
		Size: 364.4 KB (364384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbc942024540d5bd0de6b8446c65ecad477a2b4d415af3abc8fd935210052dc`  
		Last Modified: Wed, 15 Jul 2026 23:16:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dca44b2c26616e4311422cd96033026f25ba76159f4550538ed8442b0c3f95e`  
		Last Modified: Wed, 15 Jul 2026 23:16:42 GMT  
		Size: 340.8 KB (340830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff8be5bdc78799d13dbbbe4a23ec525558e57158727b2db3de17c5594c5a53c`  
		Last Modified: Wed, 15 Jul 2026 23:16:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a13476dc3caf774c20d138e64cd9fa3a3a62fd64fa5485bf8d71f39aa271e`  
		Last Modified: Wed, 15 Jul 2026 23:16:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f418bd8fd7ef35306db00b8e310c7adcf256f93d2db70f4a82d0f222c17d64b4`  
		Last Modified: Wed, 15 Jul 2026 23:16:40 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbbc748638aaf289f69e8af3777f8858ef6fbc0c0b58d2846fd9cd5c8741ae6`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 223.5 MB (223518762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2ecd6fe7b8eaa0dfdb95c6f232534600292d7086dcb06f0234199be1ff00e3`  
		Last Modified: Wed, 15 Jul 2026 23:16:40 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-30-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:3fb42558cbf5f9b5e71ce7629bb020e450092004bc883c97ab64757e1475939d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381841007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab3fd6490e9893104f0c0e9d8d92e6caf3027cfc0e8814c9f40b3f5b78c8c18`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:28:06 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:06 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 15 Jul 2026 23:28:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:12 GMT
ENV JAVA_VERSION=27-ea+30
# Wed, 15 Jul 2026 23:28:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/30/GPL/openjdk-27-ea+30_windows-x64_bin.zip
# Wed, 15 Jul 2026 23:28:14 GMT
ENV JAVA_SHA256=bbb2feb0077744597a316c405a33bffc2421a8578457f6054daeb33f0730a41f
# Wed, 15 Jul 2026 23:28:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:28:45 GMT
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
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e338d27a323e38e22d6d1c3df466b5851009f0e7ce2824971fae0c47a2756ad6`  
		Last Modified: Wed, 15 Jul 2026 23:28:51 GMT  
		Size: 472.4 KB (472423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f889ed1228d660201acdac91ccd84b9eb941b23776abcd7c0dcce00d32eb40d1`  
		Last Modified: Wed, 15 Jul 2026 23:28:51 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a67d78fd8a2c7df5567a76e3eedd2b54c864e31a29afece2d05935cdb17fea`  
		Last Modified: Wed, 15 Jul 2026 23:28:51 GMT  
		Size: 323.8 KB (323823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1745d463853a538f815e3f44a41ff7fa4cbad21202af417d42567fee0d096908`  
		Last Modified: Wed, 15 Jul 2026 23:28:49 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5881234044c664f00b6fb6d253f3a9ca891b307ccf94c33bab19e5ba2ffedf4`  
		Last Modified: Wed, 15 Jul 2026 23:28:49 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103fc5d01692232f9001772564cb91dfda9999f399f59cb6b4f5b2a94ad574b6`  
		Last Modified: Wed, 15 Jul 2026 23:28:49 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a397dc144442cb451ece2fe3193e8c095f01c4ef2e77cd63d0035e76189eacab`  
		Last Modified: Wed, 15 Jul 2026 23:29:02 GMT  
		Size: 223.5 MB (223483778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4263ede961441a2c97b6de19ef8952b9924eded8e171a653624db916506ea3e6`  
		Last Modified: Wed, 15 Jul 2026 23:28:49 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
