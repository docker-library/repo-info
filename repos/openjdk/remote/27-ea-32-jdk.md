## `openjdk:27-ea-32-jdk`

```console
$ docker pull openjdk@sha256:192c780268926de0e0bae50d7d21f75e6023c898d078918d9a6d92cca51c8357
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-32-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:6254cc7117bdd4c921e1cf060760235382dd33fdb0242012ff9c0ba9da0624cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308719786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a143c40351e715e2f47b87c500d64614fffb287e6c9a095572be1b73aea0b58d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:26 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:10:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 30 Jul 2026 01:10:37 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:10:37 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:10:37 GMT
ENV JAVA_VERSION=27-ea+32
# Thu, 30 Jul 2026 01:10:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:10:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3f278b963a3ceef3b1dd88590bfaac21f6e7e202ac7e4e978f44a83f442bab`  
		Last Modified: Thu, 30 Jul 2026 01:11:01 GMT  
		Size: 36.9 MB (36857610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a46713d31f2460500fcb5b7dcf03d0e9deedb676a17ab43ac486039b991095`  
		Last Modified: Thu, 30 Jul 2026 01:11:04 GMT  
		Size: 227.0 MB (227020455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:99334b3321bcd946e0d9e6bd5cdf6bb5e228dd064d14ab64a659f868fce90016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfa36256a53c4312f5105f6a759e54a0e48e2f9912515ec1b1bae3e7d827278`

```dockerfile
```

-	Layers:
	-	`sha256:3a20cb73feaf4781963374cd80bbd1ea34bab5c75b8b5d80d174e55670949782`  
		Last Modified: Thu, 30 Jul 2026 01:10:59 GMT  
		Size: 2.4 MB (2373373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e20de6ef525fa0e33781d32ea4adcde398ce7a8318affd55e0f50ce8f3dc295b`  
		Last Modified: Thu, 30 Jul 2026 01:10:59 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-32-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d794e12886e08fb1a7dd89d3339912bd444c7bdd89b1f6cc5d6c99eb2072e6a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305213943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d7427d2f2d8df0995e8826acc2c531c0febb121b76c16c71fce6ca00bab750`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 01:10:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 30 Jul 2026 01:10:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Thu, 30 Jul 2026 01:10:18 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 01:10:18 GMT
ENV LANG=C.UTF-8
# Thu, 30 Jul 2026 01:10:18 GMT
ENV JAVA_VERSION=27-ea+32
# Thu, 30 Jul 2026 01:10:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='389b367bdadc9816095af0175323307033db9635b2e6d07a989096a0a6059d51'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='be37bd40614fe46b27d05cf87c153d55114b492f15e993250a26e6ddf2a98a5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 30 Jul 2026 01:10:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c9ba381220648f8899cf64eba7358f475ffa79e0249b9f56b19eae00a99439`  
		Last Modified: Thu, 30 Jul 2026 01:10:41 GMT  
		Size: 36.9 MB (36913796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27369a6468d8ccd8b561e3ef83ec6ca51417f76b740316c7c4a9962e821128c`  
		Last Modified: Thu, 30 Jul 2026 01:10:44 GMT  
		Size: 225.0 MB (224997194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-32-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:69c93878069c71543f42f97f3a910451d85f1af0b8250ccf41478d56aa2edf90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854a3dfbc6fe6ca0e8d942966ac83e63593b046939cd78153d153eef4c895c68`

```dockerfile
```

-	Layers:
	-	`sha256:07d3937869a608a26db8ff3d508ec61766b14d3878a02f5b48e97379a5ee827b`  
		Last Modified: Thu, 30 Jul 2026 01:10:40 GMT  
		Size: 2.4 MB (2372901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e324582eaba2c96500692788b1edae7fe08f2959ccceded94fa232dab6c4fff9`  
		Last Modified: Thu, 30 Jul 2026 01:10:39 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-32-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:cce90d146f687f9cad8cec48f9b996a8a1044f468809fb904b7cf1b996b70065
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579365259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe73360c131ddf7e10fc035411aada397b031dce63595f8a5199c62cb66b4c4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 27 Jul 2026 22:11:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:12:42 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:43 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 22:12:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:51 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:12:52 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:12:53 GMT
ENV JAVA_SHA256=fbe4e05c3bf4aa91e8782ae887d4dcca36195aa7cd9526a65653cd07782f678c
# Mon, 27 Jul 2026 22:13:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:13:22 GMT
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
	-	`sha256:dfa8c7c75e49ce20085e91e62a7abd8f58d251e0738f21d32ec6efe05a066ae7`  
		Last Modified: Mon, 27 Jul 2026 22:13:29 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89277d092b4e3dd6a6f17b6e589b323dd1f51ca42cfd0bf7f8b01f84c8fdd79`  
		Last Modified: Mon, 27 Jul 2026 22:13:30 GMT  
		Size: 397.0 KB (396989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f77036e4416d9d881bd21ed59b95650dc4f82705b226d8aa6bd3bcb209ed71`  
		Last Modified: Mon, 27 Jul 2026 22:13:29 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71706400ceca0dc3aa4ae515e5583ec97033564503a5934b8571e47ea59552c8`  
		Last Modified: Mon, 27 Jul 2026 22:13:30 GMT  
		Size: 384.7 KB (384655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205439db0a0d2d88c734d3ca77163ed5037f52df66d282272ef38a0c87d48497`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf82efb7141fdfcad29c70a96b6d58d91a527be33bc80f44cfd2d27b08abc49d`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8f00fcc7386a7b2b681e48cf6cedc102917c94c4a1659edae75f3c3678ab39`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e56b6c2d4805ff6a60901e40156a91cd7d49d1a5e7d1a71eb033a3d7113af6`  
		Last Modified: Mon, 27 Jul 2026 22:13:41 GMT  
		Size: 223.6 MB (223567655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5441a9d136b9e99d897fc275feda989792ade08202d307c8d43a83579403d7e`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-32-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:0e1f189a0f1ec1132590c8bf8b489ce1d643d0b6ab6f1a3db7d068ac78351f0c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381961827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8280496da9e24db8124fede2a7f15ae7edeaed523ee9a7b6acb2a68366838a7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 27 Jul 2026 22:10:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:11:50 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:11:51 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 22:12:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:00 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:12:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:12:02 GMT
ENV JAVA_SHA256=fbe4e05c3bf4aa91e8782ae887d4dcca36195aa7cd9526a65653cd07782f678c
# Mon, 27 Jul 2026 22:12:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:32 GMT
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
	-	`sha256:7dfc05784a8746488d4480672f4e71448ba6d2f00d21495789d3e3597e5f6213`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd60eb94902344f4506a03436d85c216847b45d5b8df634c42921b973f58bcb5`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 503.5 KB (503516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5fb4580d79f6910835229e899255517aaaae71385b47193755d617b455ab5`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a26e2bc734a2ec5560ab8af2a213d41c2ef3b8135f564b9b59a3d35f87a79`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 351.9 KB (351928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0709fbb8151e581991723c74778425e45d7e78cb4a64835974ed4745054d69`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35383e02d5dd18a14a9108f3148f383447aee5a5689a2320d5c9b892243dff3e`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc001e746ca8ec771c10c8670ca1cd02dacf79cd5e7c2eef46951742d0d21d5`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5594abeac6ed4aac07c85f07172de0e6d44f0b848123675141ae878fed1caae6`  
		Last Modified: Mon, 27 Jul 2026 22:12:51 GMT  
		Size: 223.5 MB (223545372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bf222ab608f541de468bf766ba13ab97cf2daef2ae539e8b7c759a0cc3dbb3`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
