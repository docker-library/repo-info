## `openjdk:27-ea-jdk`

```console
$ docker pull openjdk@sha256:94090152c617223d2eb086413c5064d0f1ac7788ae6931e52effc2a83c500792
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:fb63ddb91e055718b744f3fc5f0902b1035f9c9a8d00fcb7a46089e49e136061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308722291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413fefa6c107d591ff35d8870853f798b4ac1fe43a3e126d6c78663e0c455bff`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:11:29 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:11:38 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 17 Aug 2026 22:11:38 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:11:38 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:11:38 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 17 Aug 2026 22:11:38 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:11:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c420a3ce8ed1b59f81e4cd700a694baefd8bf21f9d42d75c1d3f611ee9d4242f`  
		Last Modified: Mon, 17 Aug 2026 22:12:00 GMT  
		Size: 36.9 MB (36855061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e5a41770c2a9b37991de7491c950a243d99df53056cde9204e1b4b3672bb2e`  
		Last Modified: Mon, 17 Aug 2026 22:12:04 GMT  
		Size: 227.0 MB (227019498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:3a50e7f8462c4e7e297b9cd8af8a6e6814e253c134c06aa0eeec0aca19473e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cc269c178c3ec80d19df5ed7753f0f2b4bce1d9e572521b2ff205f8a423930`

```dockerfile
```

-	Layers:
	-	`sha256:7e551648b1ba47f19b7b0a37dbffb3c4bb5c9b78a83635438703c4759aa0db2a`  
		Last Modified: Mon, 17 Aug 2026 22:11:59 GMT  
		Size: 2.4 MB (2373400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30dd650aed5013bb79850264484f3553e3fa78c7fdf258cd9d6f9bb83c351316`  
		Last Modified: Mon, 17 Aug 2026 22:11:59 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:73b8d6c8e49f3d45cbc61038c151d3c9524e88a0fa2a55634584e03df1adc73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305218703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446ed3df84f1c60f144fc5942479b65610cfa87f7b1e8f1e87240d1ecf32d527`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 22:09:46 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:09:55 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 17 Aug 2026 22:09:55 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 22:09:55 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 17 Aug 2026 22:09:55 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 17 Aug 2026 22:09:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fdd1f622cfc603f3e15a9db5b16d6a6d8f9a860c9002619ebd084c4705b29a`  
		Last Modified: Mon, 17 Aug 2026 22:10:18 GMT  
		Size: 36.9 MB (36917437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d0c05d815dee11fd33ee69333b2d85310bb09fa580fe551c2d648474828a51`  
		Last Modified: Mon, 17 Aug 2026 22:10:21 GMT  
		Size: 225.0 MB (224997600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:f6d199e4a0a898a366366a4bb903f35bd0dc8616196a0eeefc012a9faac88182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51609212be8f388bd241003f04cd7eec03be7ec586f7c7fb7da547591ae2c35c`

```dockerfile
```

-	Layers:
	-	`sha256:325c391b07b094dc08f4c80de678c457fa797f7450b60a9c82a50d32e462773c`  
		Last Modified: Mon, 17 Aug 2026 22:10:16 GMT  
		Size: 2.4 MB (2372928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b54cbd776e5e148e742f6dcb26206dba4a964bcfd4b2356ffeb29c00ebc067b1`  
		Last Modified: Mon, 17 Aug 2026 22:10:16 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:183e68124fc4f3de0353439644b348433af1d073e1a7def37a2cdf6e3ab74ddd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2665031738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a595e15542f92cb0f97a22bef748fb200ed7ea77d599b64b979280f9f5a9f0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:16 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 12 Aug 2026 17:49:21 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:22 GMT
ENV JAVA_VERSION=27-ea+34
# Wed, 12 Aug 2026 17:49:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Wed, 12 Aug 2026 17:49:23 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Wed, 12 Aug 2026 17:49:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:43 GMT
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
	-	`sha256:61cb816025875130e64ea01cbc95b7845e2d5e93252b4b6645636df5506f622f`  
		Last Modified: Wed, 12 Aug 2026 17:37:09 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac692014b538bc39a54d3426e389ca0beae3df2132a97558b8a410790d3633e`  
		Last Modified: Wed, 12 Aug 2026 17:49:48 GMT  
		Size: 363.1 KB (363131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa08a134c6ec81147f3469d175de7a1a0696f071bbd02f798518ccdf50edd191`  
		Last Modified: Wed, 12 Aug 2026 17:49:48 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7266bfc01b98305985d99a025069cb0d61749cee8c9e0be879f47b02f8ff3cc4`  
		Last Modified: Wed, 12 Aug 2026 17:49:49 GMT  
		Size: 349.6 KB (349558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419847aa70f74d8f89b98423bdff31337d6b3fb204424b59f68416eba6f29ad`  
		Last Modified: Wed, 12 Aug 2026 17:49:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df24d98e8d25e06890ac5281aaf3c265067e6290ebdf60c8b156fbd5caa0d1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:47 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e9451a7256696b7227a1ec12f46179fc1be4bc24cff6e8f7bc6ba085ec18b`  
		Last Modified: Wed, 12 Aug 2026 17:49:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39399b864319746256a1494d544d5749b7edf935d18ca2df55578caecf555b1c`  
		Last Modified: Wed, 12 Aug 2026 17:49:59 GMT  
		Size: 223.5 MB (223525883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015c105a20465a2f84cd46c788e72dacee5080e61177089b24938eb91a4741bb`  
		Last Modified: Wed, 12 Aug 2026 17:49:47 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:8b563208001c4e974dffd6dcad1bccec6a42faec16906d811058e380f528c771
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2408181687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63889c7b5fc6f5e8ce7af352de82f30387c6826e9f5a94d243b66a3fe63b22e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:20 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 12 Aug 2026 17:49:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:27 GMT
ENV JAVA_VERSION=27-ea+34
# Wed, 12 Aug 2026 17:49:27 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Wed, 12 Aug 2026 17:49:28 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Wed, 12 Aug 2026 17:49:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:49 GMT
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
	-	`sha256:dfd161e481f0c5e7537aa95c6789122ee31dcd6ce57e3c0f949c47a9e1dddb43`  
		Last Modified: Wed, 12 Aug 2026 17:38:25 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae20c29be79e12c6464692282498e0ec38646c2a81efea1f9e7d6f91c9a321e6`  
		Last Modified: Wed, 12 Aug 2026 17:49:56 GMT  
		Size: 343.2 KB (343185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fa102bf0f38373e57fa75ed4d74359966a05884f93cb4802153fad3ac48b2b`  
		Last Modified: Wed, 12 Aug 2026 17:49:56 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22014770012fdee7929a73714744c8f33430a4c373ace95138b6c5854bbf2e2`  
		Last Modified: Wed, 12 Aug 2026 17:49:56 GMT  
		Size: 323.5 KB (323506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8068b84348d0f0fb137bb7d7595c27fe63ba82db4191bfec7d9d397d7e099544`  
		Last Modified: Wed, 12 Aug 2026 17:49:54 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bac9e049ecce8177167a1b32c2950b8d0789dc413311c00aa52da4372d77b21`  
		Last Modified: Wed, 12 Aug 2026 17:49:55 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb37291224ca4ad50315020e7facbca9b7f67b4f2b7410d15bcb935d8f5ddd0`  
		Last Modified: Wed, 12 Aug 2026 17:49:54 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54292df2c68569b14bdbb5414f4907407f44bd68053c83283c17929d69767479`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 223.5 MB (223509784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace7a1111412153fd454954eca11e8942510077f322fd7aecdcf7929df50f834`  
		Last Modified: Wed, 12 Aug 2026 17:49:55 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
