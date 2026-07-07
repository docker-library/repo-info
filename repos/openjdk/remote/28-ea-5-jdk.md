## `openjdk:28-ea-5-jdk`

```console
$ docker pull openjdk@sha256:5f3aad3c8d752a0264645e775a64f71e286527d5dc51c621eb32c4f8903e12b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-5-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:2dd20060ac9d4facf773a7057658b349a0d3e43e2234dd03995c35b6d6f3fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308191291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e76d34134e837b77b92dc97ab8d42e8feca68a06331f1215c472d59cf3590b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:40:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:40:00 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:00 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:00 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d27d3b7785da0686825a8fc43c736ed323ef8e7483c0e8c9efa731c6e9b19a`  
		Last Modified: Mon, 06 Jul 2026 21:40:23 GMT  
		Size: 37.7 MB (37687875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4645f2d68cd7ac75a189457e84a798fb9a184ddc208ddffb5250629b82e884`  
		Last Modified: Mon, 06 Jul 2026 21:40:27 GMT  
		Size: 227.4 MB (227422834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:d296e1d0a6f8b36dd3314e374222eed0c0db4d7e6cc240e7459dc68518ce956a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2b61a74acc23fad2a437dfeb9573a4e6600b3400107e249ac4f8f2a4242026`

```dockerfile
```

-	Layers:
	-	`sha256:e6abc72655db82fde1f0b46147bb3e2d95bf24f4c1663b4d8bef2718d05d79e0`  
		Last Modified: Mon, 06 Jul 2026 21:40:21 GMT  
		Size: 2.4 MB (2366446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dbf71d1cc19766218f274909faddd6a20f528ab909706f388d9307d652774e6`  
		Last Modified: Mon, 06 Jul 2026 21:40:21 GMT  
		Size: 17.8 KB (17827 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f62fb55f6b8cda4d8248da00150ca4675c2adad7edd605e391911dda4a8d4f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304666019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729a7e275e97a1963406ea6a03c3dee8ed6b63cd86e2b84173ce8f94b8785678`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:16 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:39:27 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:27 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:39:27 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4aff9fb93cdd5d73b682d0e640b2d9d4768bebb6b7f8dcdfeb2fee565e121c`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 37.7 MB (37695854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62e405e2abdfc13e052bb1d3f7015fc5df00126de65ed497e3056f61c7a54b4`  
		Last Modified: Mon, 06 Jul 2026 21:39:53 GMT  
		Size: 225.5 MB (225474470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:f59a89dcb718730c95deea6f656f64b52c197945d21d95a7d0aef729510e53f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fb9b139ce21ce840c91f7c10cdb2b0db91b93d7a9afad42535295f7b896fc`

```dockerfile
```

-	Layers:
	-	`sha256:62326f054e53187ba844071e89b564ec5c75b74a56244cd2d28a7b1464c96558`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 2.4 MB (2365974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f61921f214f57ac397ca385e504aeaa7324834e8b27300a232ca79d11268217e`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-jdk` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:e5c6cf7018f719c175a9acb9a8ae247e611d423350a99a945a79877f066b921f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2504418169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481df3d51c036fc0a7f081eecf3c9b8178fa0666b93184a07cffac590ac4fba6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Mon, 06 Jul 2026 21:54:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:55:24 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:55:24 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 21:55:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:55:31 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:55:32 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:55:33 GMT
ENV JAVA_SHA256=9df5140ba566bdffc2249703e6d204486903d277d365cbf2b04bbc035b33f2e0
# Mon, 06 Jul 2026 21:56:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:56:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20ac7d0775821c6921cd689baa095419d1f49f567359105e7cfb0ba565d95fc`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be19b6946c2389ab14fb9200cc202c0adc7bd742d85a91fca6ba553796e453d`  
		Last Modified: Mon, 06 Jul 2026 21:56:11 GMT  
		Size: 399.9 KB (399881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e9fda94e74b9b2eb3c68f8623675c5898a3ce2cf8b0e68b0c25582535059f4`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f947fa9f2ada9c10c3f7df777c8af364dcd3e5e26c18080cf12220cb5fb6c110`  
		Last Modified: Mon, 06 Jul 2026 21:56:10 GMT  
		Size: 388.8 KB (388806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ab864a02b23f84e61c95ddb01b0dc6414d592271ac8855c1ce8526cd3697bc`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d213011088814c6c389dc3e308f0347f87c1c3424e104098312ad510f10e68`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd92f0f27b378c207830b8eee50cf9f4a7467a71444b762dca87cc7f4a4f3`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e218ab819b4748cba64e179332ca8c8ded03f4667c8cbac901aa6d23ab3c7737`  
		Last Modified: Mon, 06 Jul 2026 21:56:24 GMT  
		Size: 224.5 MB (224478736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2e78a37e4fd822330d6cd13d14fc032833fdee9592051d668960006fb91782`  
		Last Modified: Mon, 06 Jul 2026 21:56:08 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-5-jdk` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:bbef37fc6b71042470a1a61e1a666c49ec5561a6848ee7c42eb4e3d1c3d06627
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357437793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6fea5238490f08e4a3d7911c7e2babe0535e5db9ea2dd70d65694dbc872cd4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Mon, 06 Jul 2026 21:58:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:59:06 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:59:07 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 21:59:16 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:59:16 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:59:17 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:59:18 GMT
ENV JAVA_SHA256=9df5140ba566bdffc2249703e6d204486903d277d365cbf2b04bbc035b33f2e0
# Mon, 06 Jul 2026 22:01:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 22:01:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7992f170cee6308bcfa365256e93e86a0048b6ce105596f42c0e23338a98f7`  
		Last Modified: Mon, 06 Jul 2026 22:01:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a75c70545d0bbe98998b3d7d9f90d8ef6f9d92cd2298e3e65cb47eab0a6b10`  
		Last Modified: Mon, 06 Jul 2026 22:01:18 GMT  
		Size: 502.7 KB (502727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4339cace7017814acad225c096365c241c137d15752cf67e7e3229a06fe9f5df`  
		Last Modified: Mon, 06 Jul 2026 22:01:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194271965bc8738c7310c7d5b0facd9a8e4d302958e90d993392872947d24398`  
		Last Modified: Mon, 06 Jul 2026 22:01:18 GMT  
		Size: 352.1 KB (352112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289beee2be31e2b93b3d7044dad1dea0a444b8561f43d202b379476e1fba6996`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bab95c93a599ab29477fbc391acf46d152e6fa984013c84b8426737a6b85ba`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047fd33aa68984a352687a739cdd84e34c350a83aaf13b352ac6ab8aa1a57ca`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd5832a0566cadb22d919592005a219c0ef3d6d09087cf858901302a298ff7a`  
		Last Modified: Mon, 06 Jul 2026 22:01:30 GMT  
		Size: 224.4 MB (224449527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5062c6258c9c945ba48caed5ff256e5a2ac651aca5111f4600dd09b9cbf6c872`  
		Last Modified: Mon, 06 Jul 2026 22:01:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
