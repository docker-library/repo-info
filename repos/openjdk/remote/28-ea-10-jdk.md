## `openjdk:28-ea-10-jdk`

```console
$ docker pull openjdk@sha256:0754ce0f2b7ad3867c0112181833b0323b54f5748021edc4ed3307300362bcc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-10-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:f8379bbbc1de34b54e9bc0ccdfb0c85f0f1626bebbc8001cd550559831d37f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324197533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aba0d72bf46b1599df513b337cc48957ff7759b64caff0a7a1e095b668bf809`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:46 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:34:00 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:00 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:00 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c6c636b440a7b5b9aedb5bf7fe37df5848e8c382bb0544f5dd9a264e613d1`  
		Last Modified: Mon, 10 Aug 2026 23:34:24 GMT  
		Size: 36.9 MB (36857337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15512c7b234daf7a12ebca8a91cb479c22fb48e1ec420eb40a42ef040e0566b`  
		Last Modified: Mon, 10 Aug 2026 23:34:28 GMT  
		Size: 242.5 MB (242497746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:4ed568f4fbacdb4c2b8abd074300862d95adf9ea7ced436388677f4e8d9406cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac744ba4d50b818642d9e20002d9e4d1df6f2072061f1a3c6c27d01e95d805e`

```dockerfile
```

-	Layers:
	-	`sha256:3a68a006b91c4c28239a2a9ba5223bca65cf03c1619526017e683155423ed632`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 2.4 MB (2375952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e9c3f19ed2f8ab323ebe6d6ba94199257b27f6f47d9241abd6a3df6618f937d`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-10-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:87801ff0282f5c07f464edd6815563fa90ad085b8ef4d455c967aea431756d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320805997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d9610c3aa5a0f4c2016d302593fca8a5147d91c9868cef901423f727ee3d93`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:33:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:33:51 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:51 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:51 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:33:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90e38ec8491a8aa6237636239604f9faf15e75afdae85649838b2135fcc88ae`  
		Last Modified: Mon, 10 Aug 2026 23:34:16 GMT  
		Size: 36.9 MB (36915244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352628b3aae598aeee0a34ea6681b3681e48cdbbdd5ea6c02c9b9865c99e7949`  
		Last Modified: Mon, 10 Aug 2026 23:34:20 GMT  
		Size: 240.6 MB (240589329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:4a044bec9dd796ff58c7200fe140aae5e8478e10b6e1c77f30b9ddf5b89ae67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f49275cf5f0510ce054da27822a75802b21766f92e74ae05dbaff54ac962cff`

```dockerfile
```

-	Layers:
	-	`sha256:9438bafa78ba955ea7141dcf74beeb4d71a8f642573ba514f182fd19bd555708`  
		Last Modified: Mon, 10 Aug 2026 23:34:15 GMT  
		Size: 2.4 MB (2375480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebea7f8667a9d54f255f178f643342d3500f168551e675a770a18dc83bc0c37b`  
		Last Modified: Mon, 10 Aug 2026 23:34:15 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-10-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:8027f204212fbba98a82816a8d5907498942dd1b63375a71881e18d4483c9791
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2595258703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c78f2183bdaf47f9b781cd0bca668aef1de640608f3563d9e4ff28e929b194f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:29 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 10 Aug 2026 23:43:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:36 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:43:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:43:37 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Mon, 10 Aug 2026 23:44:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:05 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77630d3f681a34a366ef81359995b54c48f3e2da89c3d196ed04b6894cc38234`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 377.1 KB (377104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc3c2a6049f7155a8dd28a70ee87f0a793b62ac8300bc3e597d107eb9388712`  
		Last Modified: Mon, 10 Aug 2026 23:44:12 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16db8d221f732fe707510cbc353c1acf0e24a89d369219b04b5c1e030fd1372`  
		Last Modified: Mon, 10 Aug 2026 23:44:12 GMT  
		Size: 371.7 KB (371700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758952ff522f07dccc1ee044b8ad1df1aad09d570bf49ccdf4d880dce0970f96`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816bd4f7d19859b66dd3f75e3569008154b52dd800f9a1f8eea4757768d14970`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42efd72eec21d2fea9d12cc36baa29b797180b604135248290b940e72d767c7d`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ca2dd9be3ca2109c3430d233fd5666106e5f5a343c49aeb6171738e3895453`  
		Last Modified: Mon, 10 Aug 2026 23:44:27 GMT  
		Size: 239.5 MB (239494008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1fef48cb1036a141acd281339b7c084936a6039de99277adc87a0e39258212`  
		Last Modified: Mon, 10 Aug 2026 23:44:10 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-10-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:b0d042b116cb4fad4cb33902ce939518b9e2e2fd5971f98d9094594cdcc83315
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2397886964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d90b4156ff8d284d6c197367bfc1588559d83e31d99db91c8f727d8a44490fa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:27 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 10 Aug 2026 23:44:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:33 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:44:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:44:34 GMT
ENV JAVA_SHA256=8c525a74d5700f2c75d27bb446805a05dbda0f2a897a468eacd1add6c10e3dde
# Mon, 10 Aug 2026 23:44:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:44:57 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71b872bc96399e2d64b58bb443a4817d6b4e541758e59694c01e9636c63cded`  
		Last Modified: Mon, 10 Aug 2026 23:44:01 GMT  
		Size: 502.5 KB (502549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e05c582125ea279ebb43fd0250bd493fceafc93351e6bb391a0f0eec87c4d36`  
		Last Modified: Mon, 10 Aug 2026 23:45:03 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0932a1447bee14d64acaf8387f07a3b372866bf0cd6dbebdc70e71ad7e7a4a6d`  
		Last Modified: Mon, 10 Aug 2026 23:45:03 GMT  
		Size: 351.3 KB (351253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8de27b92e2800fcf6aa500572cefd40e011942b4fc9c7480e1f2f9d5a463c19`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508b0ba840355b725a194828caa9cd3e19e2a14960a6a570157790381b1399ca`  
		Last Modified: Mon, 10 Aug 2026 23:45:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c247cc816001fb39f2fdfbd5009922ea02e9b43c8777bcb11dd2aaa0d475b7`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a2766668cda76c6dced109aabdd27ef4bac1260329836ff58d4abbc60da44c`  
		Last Modified: Mon, 10 Aug 2026 23:45:17 GMT  
		Size: 239.5 MB (239472233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b540e73f96964891266310445c032b486af421a9ebb5c1ae85f3663f9e367349`  
		Last Modified: Mon, 10 Aug 2026 23:45:01 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
