## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:c16b755b0734dee987b340594bf8c3f5117fbebcef6b2f774214ecc961b0344c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:4c7e24300403e7e28d67fbe0c6285783b24c007a37446dffd59cc6fb1d4b16d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324573699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d908250d12113e620b5f9560bdf20fd88f9d36affb0526c43050003536997a9d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:08 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:37:45 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:37:56 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 02 Oct 2026 23:37:56 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:37:56 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:37:56 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:37:56 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:37:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d624c29b96864298c383ac9b17d9f3f75bc3bd0a4e34fdf02641996376806498`  
		Last Modified: Mon, 21 Sep 2026 23:04:19 GMT  
		Size: 44.9 MB (44858468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4e1b2b7959895aa4464b37f1d71657d08c852618830e1a1d96f56bebaadd73`  
		Last Modified: Fri, 02 Oct 2026 23:38:20 GMT  
		Size: 36.9 MB (36874461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6beea52f8c45b9462f0c7daf5f601a4120561906df492ca034aaf5a90f7d7`  
		Last Modified: Fri, 02 Oct 2026 23:38:24 GMT  
		Size: 242.8 MB (242840770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:6be4cc3494fdf690d16a5f13226962b8b2adcc884677b706b1ad0290149a3131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5202cc27d6845ffeeecee00d5fb7099a371668a5ac288c2c0c765a02bf22402c`

```dockerfile
```

-	Layers:
	-	`sha256:e57f0b5a8b146450eda9ba4cb0462b0499278d39a1c11bfa6f8436725a2dc19b`  
		Last Modified: Fri, 02 Oct 2026 23:38:18 GMT  
		Size: 2.4 MB (2376689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b6439e64c450bb5c1f52dc1133610d41612988ba5ead3c9d21419ac2e7e8ffc`  
		Last Modified: Fri, 02 Oct 2026 23:38:18 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fc14835ac33848bb9af84f5773c958e62f7c12a702b924f706b0b5b7fe579a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321174814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa0e113149825a1447cc95ce39476e122e9ccf9fa4de73df4adc97d03b39915`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:03:43 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:03:43 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:37:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:38:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 02 Oct 2026 23:38:18 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:38:18 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:38:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:38:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65d9e9baa87f15f9db4cb1d85886337ca58865ec36d7c01695e8ed25ffa616cb`  
		Last Modified: Mon, 21 Sep 2026 23:03:54 GMT  
		Size: 43.3 MB (43326589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6b13bfa735ff74698a954789936dffe0b6df921504c41012e58a74b95bbabd`  
		Last Modified: Fri, 02 Oct 2026 23:38:44 GMT  
		Size: 36.9 MB (36940417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07406c35498cad190489370b3e2eb600145cce30567520d16674036b2fb1de61`  
		Last Modified: Fri, 02 Oct 2026 23:38:48 GMT  
		Size: 240.9 MB (240907808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:f5ac4cf617bb49ff9ce84b20eaf49cfa6f6799c90ab238d5dc5e6f39ddf70c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01d8ea34d39af58ee426e5f3dcfce7b3abc8a681c21325d1b54ba4e829d8b00`

```dockerfile
```

-	Layers:
	-	`sha256:77a01ea47845d2d54a14d3215d3ac29ba189ffbf9184f0439e2be27333e3b46b`  
		Last Modified: Fri, 02 Oct 2026 23:38:42 GMT  
		Size: 2.4 MB (2376217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8192b65b8d22bb310e7426af97e608fd2e376510023f7ecff32c1d9c942e996b`  
		Last Modified: Fri, 02 Oct 2026 23:38:42 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:e860d8937bef672055889c046ce289cd103d4aeef33c2a542ba8c048351dc82f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698088462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7dca1bbadd46c5265399a34daaedd44e068d70c3ed5a5d213f1c02dac6d5e1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 02 Oct 2026 23:40:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 23:41:31 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:41:32 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 02 Oct 2026 23:41:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:41:38 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:41:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_windows-x64_bin.zip
# Fri, 02 Oct 2026 23:41:40 GMT
ENV JAVA_SHA256=2066c67ef24bf60d7347802ea5a0950c170849790d3b92089368dfb69643e175
# Fri, 02 Oct 2026 23:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:42:08 GMT
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
	-	`sha256:ff3e33e78c8e306d504286014cc1ba80aa963f7e73355e1a1ccb2ff0d87386ed`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486e67739f574d7ce67af486e56c825e0dbf604d6fcde919c06888bc9142a693`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 388.9 KB (388948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c7fee4c504deb60025d5cff44b1c9811344b09fe16e4a6c730c639fa10f7a6`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ca418d9bde4c2e0eeec391ec8f330ce02e7e886fd0e15e01247f53c1b4c0a8`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 335.0 KB (334981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80877524e41a1999d6830638591445af8eaeb549c2d1c513685cdae12fa3bf74`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2f1ee0597b5e97d652c6bbd065373169ad9277e0fe5b84102059662c45d99`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c696d3c74d2f7bdf311616b139bad20c944bba1b0b37f5a155bafcaa238e73`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789f1b717499c3ff8c4375d0dea5c753d12278361bfa4f3fec8d1334589fb3ba`  
		Last Modified: Fri, 02 Oct 2026 23:42:28 GMT  
		Size: 239.7 MB (239727271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db79eb4cfbc9588f17f322e0cb3015aab1b58211ab763c079e0e4de843eb88f`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:1f1ca000fff8a8bbea7979472508a5d490c007caa46bdcb42a5a22e3a492ff31
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459947316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2374ff1e58868a8cd532dda9ee2bc809e7e696ead088680193f3f66f177652e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Sat, 03 Oct 2026 00:23:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Oct 2026 00:24:04 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:24:04 GMT
ENV JAVA_HOME=C:\openjdk-28
# Sat, 03 Oct 2026 00:24:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:24:11 GMT
ENV JAVA_VERSION=28-ea+18
# Sat, 03 Oct 2026 00:24:12 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_windows-x64_bin.zip
# Sat, 03 Oct 2026 00:24:13 GMT
ENV JAVA_SHA256=2066c67ef24bf60d7347802ea5a0950c170849790d3b92089368dfb69643e175
# Sat, 03 Oct 2026 00:26:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:26:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c197863238a0d321956149808066ebae4afbf67279113a8a03659c03c67278`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5dc18c1f84c387e78ce9af7fdb3245df95abf7c2cb870b849f4bd1fc703ff3`  
		Last Modified: Sat, 03 Oct 2026 00:26:41 GMT  
		Size: 362.3 KB (362263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3003eb311e9c66f0ed37cc0b1932bc6811a5fe3ee8acccd3c56d0d3017a5196`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ec797e23d4a87c76c93a7b21cfa910c41d672f59d6f44d44fd34e52ce7bdc`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 339.1 KB (339139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9db5b068f9ef2137b8f35ff11bd3f586734279be42c45c071696c988458149c`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f69ecc5c18e8502aa69b4d84497a27b00e9840c8bbc23aee2013fece59525da`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b90e279fa0fd9712be0074aa321cde1b2f90724f97f2ddbf4ef67e246a4aa0`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b52ffa9d9c78ddd79c770408b067e65541cd4bbe7e26b9fb358cef42626b9`  
		Last Modified: Sat, 03 Oct 2026 00:26:55 GMT  
		Size: 239.7 MB (239749314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eb7dc4736f81e328ed2b866676bef33dd7d9c7e684f5e6c2b1c38bb5bbe0b`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
