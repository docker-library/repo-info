## `openjdk:28-ea-16-jdk`

```console
$ docker pull openjdk@sha256:590325822f0e252e4b6c3058721db4b8e3477a84c10c416486e4320dc0ff44f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 5
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-16-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:0a02243df895e465d935f75779ea686ddf0e98b8d3531b34b0b66bb6b052e914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325865288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c12a435581263123e096d3b6574ccb0e16402f6d0b459be326d5b612a7efb93`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:54 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 22:28:12 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 18 Sep 2026 22:28:40 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 18 Sep 2026 22:28:40 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:28:40 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:28:40 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:28:40 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:28:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51ebae28b522ae451dcb4755f40b850034b90aac9a5ee084d5cf00124019006`  
		Last Modified: Tue, 08 Sep 2026 18:58:04 GMT  
		Size: 44.8 MB (44848156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c9dfe202c9e17c7587be2e6e280653687e7109bae6f452a41a200217374ce8`  
		Last Modified: Fri, 18 Sep 2026 22:29:05 GMT  
		Size: 38.2 MB (38239871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d07ad6f0bc01445e4c5811310ad919e2085be405517bf70b211cb3b39d4e2b2`  
		Last Modified: Fri, 18 Sep 2026 22:29:09 GMT  
		Size: 242.8 MB (242777261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:dccc526b0019f7b9e059e19dfba24c49fb1317b588e61ee3907dd51b67651cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac28c18eb4b7ce9585ba2d82a2d057da7f9445ae0322379b487a487c1301416`

```dockerfile
```

-	Layers:
	-	`sha256:d99edc7e74cf5f7b6e902e817ab2905f55fa5778ae9b4e022fafd994c48a93d8`  
		Last Modified: Fri, 18 Sep 2026 22:29:04 GMT  
		Size: 2.4 MB (2404039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0e1914d7adb16ba0249ff0fd69fe5ff9469df99c15c256ced505a5a2f23515b`  
		Last Modified: Fri, 18 Sep 2026 22:29:04 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:704bccf7294c6ec4bfc5b03b1e39180e8d13f773ccc9b3cd8a55366d2f8be375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.4 MB (322421579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39c025404a2e87671285fd440800ee5fbe8c4d9b062045fce34ff3bb634c6ed`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:06 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:06 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 22:27:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 18 Sep 2026 22:28:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 18 Sep 2026 22:28:28 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 22:28:28 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 22:28:28 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:28:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 18 Sep 2026 22:28:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d69eefe7b81f7db3bb7240d32dae9ece515d7146f3e014e0b6e59b31a41a9bb0`  
		Last Modified: Tue, 08 Sep 2026 18:57:16 GMT  
		Size: 43.3 MB (43305657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee312710d05b0371900f1aeaf864509dba387d39a1fb0adee609c17df4be0bf`  
		Last Modified: Fri, 18 Sep 2026 22:28:55 GMT  
		Size: 38.3 MB (38295663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3012fc07ba110bcefe088efecbf1f10d86ea7eb3bf99455b49599640a7d96c`  
		Last Modified: Fri, 18 Sep 2026 22:28:58 GMT  
		Size: 240.8 MB (240820259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:e66817798c0e99015e5b770ac6286da9399f6726218d2f72efbd2d2cf59766cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a07bc47c9e0fc3eb38657dbf9894b157d2ca42297fb0c33d12ca9ada41e678`

```dockerfile
```

-	Layers:
	-	`sha256:9712f02ad09b8b96967ad01d447a4bef223bb103f3cf95577585fea1d2d62d51`  
		Last Modified: Fri, 18 Sep 2026 22:28:53 GMT  
		Size: 2.4 MB (2403567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a8b9bab53d456e3290289ec9fd5fbc35c70701cb20ba19cc88e97c889cc18fc`  
		Last Modified: Fri, 18 Sep 2026 22:28:53 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-jdk` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:07293c5b6bb2f72ced2b38e000326ca7e529c8d59e2dc8ebce03dcc616d69239
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698109928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e513de5ad655ee0207279c2e1765317fb7a2dc69a1e9b7e5922a8ecf38db72`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 18 Sep 2026 22:44:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Sep 2026 22:45:12 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 22:45:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:20 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 22:45:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_windows-x64_bin.zip
# Fri, 18 Sep 2026 22:45:22 GMT
ENV JAVA_SHA256=33d6871bf3a2889428e9f7f6e8d2340a1a5e60eabeb82d474e98a0b58cbcf04b
# Fri, 18 Sep 2026 22:45:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 18 Sep 2026 22:45:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22588b446babe08db776cf0d3bcddfe153cea9f6012614d5b4e76402c823f559`  
		Last Modified: Fri, 18 Sep 2026 22:45:57 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe8069c451fd6cc7af157deae5445da32c1d6e9000f6a8497ded66352112ce`  
		Last Modified: Fri, 18 Sep 2026 22:45:58 GMT  
		Size: 389.1 KB (389060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ce1cc04013cebf0ced8cb98100f3fc425c8fc300d8083fc867dfbf75ad0883`  
		Last Modified: Fri, 18 Sep 2026 22:45:57 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a784f3474f6b3a7a2260354ca7f858d05223bbb826773299052718e7cb813b`  
		Last Modified: Fri, 18 Sep 2026 22:45:58 GMT  
		Size: 375.0 KB (375009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5857ac117fc178f42739712434158e03b7d6ad88afa7c3023576b15d7fc7d8cd`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5a7acb9f8628df752550a13ea74e3277c3fade380c30123b06b011b1d6c11`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c0b2a4bc772e1429e75c94923ed5447461d526cdab543007731a283ec3eb42`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69ab7b976749a49f048e2aeff3b686670899b64061a5242f291ce602ed50b2c`  
		Last Modified: Fri, 18 Sep 2026 22:46:12 GMT  
		Size: 239.7 MB (239708440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b57ce489c20d96d9087f3c1b6325bd5304356b8372dad3c063b28289a97fa35`  
		Last Modified: Fri, 18 Sep 2026 22:45:56 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
