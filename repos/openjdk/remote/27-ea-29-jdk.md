## `openjdk:27-ea-29-jdk`

```console
$ docker pull openjdk@sha256:dcfe229ac66b75eadd72a53a726c962196116b63395609b95473c3c3ff79abd9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `openjdk:27-ea-29-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:3ab71bd24cbb7b8374d3bf44ab1c2b9136d70f66c3e6d134a56de7112b14e4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307752343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ea943118a9a0f76796b6b10b89fb49fd61fed466592d4c857da829c970fe62`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:13 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 06 Jul 2026 21:39:23 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:23 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:23 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:23 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0727806e21499af220779f941cc84a8e26367cc22ad27c03d70508bf16406d92`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 37.7 MB (37687107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203fc4cd7397d1f860015b55f663573aa5561afd20138505d7d9f85924b98dba`  
		Last Modified: Mon, 06 Jul 2026 21:39:55 GMT  
		Size: 227.0 MB (226984654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-29-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:f82b3e2bde7293bd74ea24ab405212f7e644e91161299791b29b21ca33cc6ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcf12d10b03207fd15c544b3d0162c8ff796255db449dfff423c3dac2703f49`

```dockerfile
```

-	Layers:
	-	`sha256:7b2dc896dc7331f36f662c7cf1b8dc0de82e1e6bf9bcd6c318718301f3df785d`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.4 MB (2366462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea244607af7e5dc5291faf9560b4d253a3e9e5ade35426fac3350ddc706e619a`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-29-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bcbf19b55702a23d2b606cb4293ea5cd18b3e31605476c2c6f18783b28dea5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304152262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489b5e43892cd8b09e6adfbcdc783724169aef0ece2d59006196a180ee6351e8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:11 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Mon, 06 Jul 2026 21:39:22 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:22 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:22 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:39:22 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-x64_bin.tar.gz'; 			downloadSha256='f4820c527635c627b3b7a592b80e416f2b203f2688d2ea66d2ff63692ccdf2a2'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_linux-aarch64_bin.tar.gz'; 			downloadSha256='a4564029f6c9903249f0b9355bf1952ec04f0b38ec6f6d5d5375e7c4fd850836'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7b2634b133cf600e70886559ce1e886f4bfbd9648f7c9fd5363a3e1ce1628f`  
		Last Modified: Mon, 06 Jul 2026 21:39:46 GMT  
		Size: 37.7 MB (37695905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8931e476112e4b7a73df46333771688dd32aaf1caf54d05927d890e36fef75d4`  
		Last Modified: Mon, 06 Jul 2026 21:39:50 GMT  
		Size: 225.0 MB (224960662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-29-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:5298e91926943cb0ff8148b3c6be0325131059b29ff1c50b18c1cb669e4616af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ab7b0afefef66dbc33e0c7d9b41f33ffe7dbebff8578e56bacc0e3adb7147d`

```dockerfile
```

-	Layers:
	-	`sha256:05b572eecb7a0fd0b234dde2ea42110bb1202a878047beb0f9027e1fd8a3e845`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 2.4 MB (2365990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f9b93b1d91e8247b10bb105781b0eaadd800981beb6f5d151b879e0e4cb1ed`  
		Last Modified: Mon, 06 Jul 2026 21:39:44 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-29-jdk` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:8740ef981020689d7874cda70e06ad9575ae32aa5f668520de1ee32fe6b93b36
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503507962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3776142fff0917992a7f60371f4ac3d1fe28dc2fae78ccc7c2475808b6aaccf1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Mon, 06 Jul 2026 21:49:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:50:47 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:50:48 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 21:50:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:50:55 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:50:55 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:50:56 GMT
ENV JAVA_SHA256=4883781bf55f6ed0224c10009d257a488a84dd6e41663ff34e762d357acb14be
# Mon, 06 Jul 2026 21:51:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:51:28 GMT
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
	-	`sha256:74856d80ec6061deb53d231d9d698e0aed4f8f97460d6292fd8997f85146bb39`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23a1166ad4a30aaffccf1743c1d118e98c1c81a8c1bff0f4a57ebe9f537bfe1`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 408.0 KB (408032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0f06477861aef756effb09bae117b59b494f01abd2d0b9f66ad423eae8d5a`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1498365a504ab042910066bd68b081cf4ee57889c3e47d87462230c937b61ea`  
		Last Modified: Mon, 06 Jul 2026 21:51:35 GMT  
		Size: 397.3 KB (397337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326257be9bfe6f77613e41810dae0df79a37943818ce52db11a2b2e3b5bf21b`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada616699ec64610773541767e9ea5fdb9335456d8b1821d62288c02c88c4d48`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae46816f8ce20a49f14016ee540af9c22735245df540a1f0835966db477a24`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79008883f7eb73ef53be23d2ee4d5b9073e560b009406b90dcbaad3104d3ab`  
		Last Modified: Mon, 06 Jul 2026 21:51:48 GMT  
		Size: 223.6 MB (223551880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8cb81e3ff72c9a8a0f3d3207d9777354aa0cd11bd29da5b4ccdafd8aa1c2`  
		Last Modified: Mon, 06 Jul 2026 21:51:33 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-29-jdk` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:7dcffe43426c484b333b051895e4f60fcd684e2417f1cc5acabad81015a72fce
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356496672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e7190b0a2e0073713c5d1fd9be04a2c192dafba4a1a69906ced3b946ee9fa7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Mon, 06 Jul 2026 21:48:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 06 Jul 2026 21:49:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:49:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 21:49:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:49:25 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 21:49:26 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/29/GPL/openjdk-27-ea+29_windows-x64_bin.zip
# Mon, 06 Jul 2026 21:49:28 GMT
ENV JAVA_SHA256=4883781bf55f6ed0224c10009d257a488a84dd6e41663ff34e762d357acb14be
# Mon, 06 Jul 2026 21:51:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 06 Jul 2026 21:51:10 GMT
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
	-	`sha256:a04ff882821e31c0ef42e848e69c22699b46cd39d1c5babe967d4edaf6d555d1`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3558a0f556acc9f96401dff45eec8acb3a6c22ac50d9f6e08afa47cfba2de456`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 502.2 KB (502236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b830210ae5cfa4be2b872a21731bc6471a12f9625b911bbbed5bb3a768706058`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df92ac036ec281d8c7fd80385afad546381d7a5f94b26eafff736d0341157bf6`  
		Last Modified: Mon, 06 Jul 2026 21:51:27 GMT  
		Size: 352.3 KB (352294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0170a1f54027c133af1d9942b7092f70eae2481f66524001b14003919216406b`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c9ea1e49d93517c3df45592502189bc198e06b87a764d3ae815b1f4ee44be2`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80cb0ea6e3b82466d465fb1b809a993d9d93f4248df8b21e0e15bd6a6240791`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce322d3e2affaca2c85948521bb260f700e4ffe1ef63c68a0a1d8c386e4dbef7`  
		Last Modified: Mon, 06 Jul 2026 21:51:41 GMT  
		Size: 223.5 MB (223508737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ace6018d61cc4f2bb8a1c6594eb053e18cabeab2444175e704d83c591e701`  
		Last Modified: Mon, 06 Jul 2026 21:51:25 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
