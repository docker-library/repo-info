## `openjdk:28-ea-16-jdk`

```console
$ docker pull openjdk@sha256:68de98b0b11ab6dcea1d10373fdf4c26d00b53c68240188c3d652b53b7abaa27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-16-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:9d687a5da69ecfb1e28cfe2b09723a0ba0f1853da054cbfb344a94d4c99ff19d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324512200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9134c21e374b056b9586f091857eefba282ce9cef8826762691fd3ff7bf3608e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:08 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:13 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:24 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:24 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:24 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:24 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:24 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d624c29b96864298c383ac9b17d9f3f75bc3bd0a4e34fdf02641996376806498`  
		Last Modified: Mon, 21 Sep 2026 23:04:19 GMT  
		Size: 44.9 MB (44858468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf51eaba40c83823601676d1c93fc78d5a8a0fad8f922262501315a391cd141`  
		Last Modified: Mon, 21 Sep 2026 23:07:50 GMT  
		Size: 36.9 MB (36876447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf45da2d8497a803eef44a5a02a1e39b148781297ba400ff0a0a62593b1a2d6`  
		Last Modified: Mon, 21 Sep 2026 23:07:54 GMT  
		Size: 242.8 MB (242777285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:a67932dece7da270ffb92915665c009e2718187e325b79a72c85ce8738d4fd0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05069fc009f42172405168acd14806ad17afa9696175f10e691d46454ff578c`

```dockerfile
```

-	Layers:
	-	`sha256:485c0cfb324963cbf9a1abda3319213e6bb52f196f4f5722b92b019d13191523`  
		Last Modified: Mon, 21 Sep 2026 23:07:49 GMT  
		Size: 2.4 MB (2376689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d512177c25b92ebf336d6bab30390a8eac74faba46f4fb985e06909cd2639a8`  
		Last Modified: Mon, 21 Sep 2026 23:07:49 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:352d86863ab3aa03a41bf93111642b88b55c3ed5b53de04599bd801a18e9fbdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321078644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146403ebc8d742c767f38793e5cd3e208b20c761f1ce52e6b7f041bc6b01aee4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:03:43 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:03:43 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:11 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:30 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:30 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:30 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:30 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:30 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65d9e9baa87f15f9db4cb1d85886337ca58865ec36d7c01695e8ed25ffa616cb`  
		Last Modified: Mon, 21 Sep 2026 23:03:54 GMT  
		Size: 43.3 MB (43326589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172881af58a7bc8d3e41737f954770c54aea68cc547f45dc70c473bf938d7ed0`  
		Last Modified: Mon, 21 Sep 2026 23:07:55 GMT  
		Size: 36.9 MB (36931491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630b5325d9f9ea4b0fcb528b740d53fc8a8766f3c8052ae99adf129931ba3880`  
		Last Modified: Mon, 21 Sep 2026 23:07:58 GMT  
		Size: 240.8 MB (240820564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:0cbbcdf0f3983334535f2335a44a16b40cc67ed1331bbf33d5bfe0409482070d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589e8443efd3569d1371e7c6228477fd5c0cbcae1e90fc32cc9d4fbe98aac50`

```dockerfile
```

-	Layers:
	-	`sha256:cf3d4d6c4a5c489c7aca559bf7e2974aa022f98a9d5569a352c11b5e5594b9c0`  
		Last Modified: Mon, 21 Sep 2026 23:07:53 GMT  
		Size: 2.4 MB (2376217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c5b227d48b609ddc3911cb1e9ac79113e1cdf0984d98d85fa65738cc090855a`  
		Last Modified: Mon, 21 Sep 2026 23:07:53 GMT  
		Size: 18.1 KB (18064 bytes)  
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

### `openjdk:28-ea-16-jdk` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:b4b3e75e5b8a8d92efec0b45adb9c697b2f1f32ebdb8fed6e0b329e365c9efbe
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459807021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2246a9755f5d8937cd8e92a603a718919bf781f219263c586db04d703f01541`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 18 Sep 2026 22:59:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Sep 2026 23:00:49 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:00:50 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 23:00:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:01:00 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 23:01:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_windows-x64_bin.zip
# Fri, 18 Sep 2026 23:01:02 GMT
ENV JAVA_SHA256=33d6871bf3a2889428e9f7f6e8d2340a1a5e60eabeb82d474e98a0b58cbcf04b
# Fri, 18 Sep 2026 23:03:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 18 Sep 2026 23:03:29 GMT
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
	-	`sha256:c7d833214b6a88ad5b468a9979f5b4f5a96278334acdd0fb53d2b8b101793bc0`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39f494a137cd66a8abcf55578c48bc0cd67e9ab53ed082ff431c100fe6d69b7`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 363.0 KB (362984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07edd53c63518bea3fac524981f0da62c31115ad2f6b5332e440412ee8326b0b`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90e3db26a98c14513feb9e643b654767ec427e52d545b01757b5c371858bce3`  
		Last Modified: Fri, 18 Sep 2026 23:03:47 GMT  
		Size: 305.9 KB (305888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598b0fba00d2b357fcec4a8b89d8ab2182ff962325e129cffa172f540fd69567`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3691f86f1ec70c324757f069ffde27955aa088881fb4d27e851b47630fa48314`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf99912ba40a30358262e5bb8e77a837f08ef54903adff502789d53cf872947`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6711c712805b3c6396d3e54d3e3dc9d0ad63831cbaf558584ed0b01b125a6502`  
		Last Modified: Fri, 18 Sep 2026 23:04:02 GMT  
		Size: 239.6 MB (239641537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e7cc814baf7c7bf84cd879f348b4ce7dcffc5b2bdab53982db3523a9167b4`  
		Last Modified: Fri, 18 Sep 2026 23:03:45 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
