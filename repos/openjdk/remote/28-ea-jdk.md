## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:6e0444aa2bcc3d947e187529df1419bc3db2dd9e170a9935ff0ecb0779331f4a
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
$ docker pull openjdk@sha256:a098dd77c7ca385ed5285680cf39e68c69c63b9857d51a136dab0d496b1f4428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309162176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621b29dbbcf4f5f475ea4ff5d45868eba65925900c851b7412c297d29a05eae3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:20 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:11:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 21 Jul 2026 19:11:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:11:17 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:11:17 GMT
ENV JAVA_VERSION=28-ea+7
# Tue, 21 Jul 2026 19:11:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:11:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e84ac769025b735ad963c991fc844729d330bf00b06c1a99cdc3e0af9fc380`  
		Last Modified: Tue, 21 Jul 2026 19:10:55 GMT  
		Size: 36.9 MB (36854490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf453b16e78b882e871779df7f6333723956d29f929dc569c36955dde6010e6`  
		Last Modified: Tue, 21 Jul 2026 19:11:42 GMT  
		Size: 227.5 MB (227475347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:4dc6144c2a6395586554832133f21fadef37d2b34aaada5021c0cbf41eb6af9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e8806ee56caebbfa6410ee24e1597f8113ab52a4976b96dec06e695899c421`

```dockerfile
```

-	Layers:
	-	`sha256:e0e9b435d413d7f365480344f8d0dbabe29d8ee4ca783e50b9b9e2d4002829ee`  
		Last Modified: Tue, 21 Jul 2026 19:11:37 GMT  
		Size: 2.4 MB (2373333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a679ce4d8bc50100fbc292ad500f70fc939a9a2c81ca8524c90debf3e502998`  
		Last Modified: Tue, 21 Jul 2026 19:11:37 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ad48824426404c6fa8f63192da01b7ad552eb34c8f171b57d4a53291e0515de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305713541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1186a2c47c51f9a02c6e88adfea4594727dccb0e55378ff1fc9ad64703a05`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:56 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:11:52 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 21 Jul 2026 19:11:52 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:11:52 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:11:52 GMT
ENV JAVA_VERSION=28-ea+7
# Tue, 21 Jul 2026 19:11:52 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:11:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4792d47620872b62ba02bc240adad146c152d03519562f02b977a4476bb07dc2`  
		Last Modified: Tue, 21 Jul 2026 19:11:31 GMT  
		Size: 36.9 MB (36903105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1544074ad5c13d1a0f8f5c0fc99e51b3ef05ee19b2dc926059e8fb7893efd1c`  
		Last Modified: Tue, 21 Jul 2026 19:12:17 GMT  
		Size: 225.5 MB (225522543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:d73512ca3b590f623ecd5fcb5f3d66e563b521247084f7e10a3d49747dcdca35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401042838b0baf333ebedcca93e5f7bc7c8169d954bb81bca57f95959a1ee89c`

```dockerfile
```

-	Layers:
	-	`sha256:1792293d8e9b42136d22af1d47c416dd584d7e805283c7eb2d9b0bb8ff6abb98`  
		Last Modified: Tue, 21 Jul 2026 19:12:14 GMT  
		Size: 2.4 MB (2372861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca6d6c844bca3e3434d8a6b6fdc62991dabaf3eb4cace9d954311ae99bfb1989`  
		Last Modified: Tue, 21 Jul 2026 19:12:12 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:4fc809f0d83acb83aeb607d3e8fd67b672d8ad6fbfb87f3d9244886913a99c93
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580234126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ea68507f33d2bf53cdac2c5b03431dbda051f02e089f207ee521c0f1d70eef`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 17 Jul 2026 22:03:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 22:04:18 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:04:19 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 17 Jul 2026 22:04:29 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:04:30 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 22:04:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_windows-x64_bin.zip
# Fri, 17 Jul 2026 22:04:32 GMT
ENV JAVA_SHA256=56a8a125b887851f551dc2ce7d575aabd074617d3ff3df2775e1522ff3d23510
# Fri, 17 Jul 2026 22:05:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:05:18 GMT
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
	-	`sha256:dd2d4b3d381f5af0fd854e437600b80a6106a92a72dee0583ae9868b9e11f0d8`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa2af267bbb32cf1dac9526ea517d800973917733a9950abd1ac90e2a0e118`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 378.8 KB (378755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6d77fb9e6f3f865474504ae97a15e7f66bf51eaefe315e6e82fa9727f3ce41`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231feec25566f707f40cefc62619fd8b2a7a18081178a870ed17dbca4f826bf7`  
		Last Modified: Fri, 17 Jul 2026 22:05:24 GMT  
		Size: 362.1 KB (362081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa4eabd350543f7e716dfffa3efa1d112a604c054b13d5a6f218dbd01383f`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe25de8d7f1f58d07ad52364d205f44be0ae7e717ac27b11ff96b55d28bf1b`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f436a9186694b6e00298292d13afdeab2cbc1d2f6b646370bdc9a6f7fab352`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4006ad38107d40a4875f178e59fa73d84564c02a07b4d8971cfcb529e80ed01`  
		Last Modified: Fri, 17 Jul 2026 22:05:37 GMT  
		Size: 224.5 MB (224477344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35783b13da6d3d6fcbeb1c4c60fddf2171b82b094b256faeb60c8cc147140041`  
		Last Modified: Fri, 17 Jul 2026 22:05:22 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:20b3fac27f0e03ac228dfbcf6f0247a6acc5424d10fe61318c6423b009a52ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2382855086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fab028cb7d25b462526443ded4458e0bd828dc6d545007ceba2fa2dfeff27eb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 17 Jul 2026 22:00:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 22:01:41 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:16:04 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 17 Jul 2026 22:16:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:16:11 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 22:16:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_windows-x64_bin.zip
# Fri, 17 Jul 2026 22:16:14 GMT
ENV JAVA_SHA256=56a8a125b887851f551dc2ce7d575aabd074617d3ff3df2775e1522ff3d23510
# Fri, 17 Jul 2026 22:17:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:17:49 GMT
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
	-	`sha256:df55a446d745c7fbbc18ba3e71038c10f971691e9ebcdff560afd2083fd1f055`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2fbeeb38b2ed2f8dd2296c91034022b633b3df530599717d65e8b268af017`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 490.9 KB (490916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce318733c755a897dce5b5fe5e44c3e9867edc1cdad44444d76e1cab2523614`  
		Last Modified: Fri, 17 Jul 2026 22:17:55 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d7e2645bfa5cb93443c729de68644debfea6b9e2d93faa9d2eb39b81c97d54`  
		Last Modified: Fri, 17 Jul 2026 22:17:55 GMT  
		Size: 338.6 KB (338637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8969d0f5c5305578b51650d3e77033fe2a6e51af929c5c1bf4332f2a0cf9e12b`  
		Last Modified: Fri, 17 Jul 2026 22:17:53 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae555ffa8305f29c37a9186ef4c2a48b341e8f3d5fdf18a34ce394296bfbf870`  
		Last Modified: Fri, 17 Jul 2026 22:17:53 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ebe7ee6e274da0d33241c110573a5faca686c0679123415dd2e9390b82a37`  
		Last Modified: Fri, 17 Jul 2026 22:17:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea90cb59ed8a1596fb78cd48f44ef0e87d74b707d799dd65bbf245d9038356e0`  
		Last Modified: Fri, 17 Jul 2026 22:18:06 GMT  
		Size: 224.5 MB (224464535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7786f7f58bda8c1cb998d8b48294ef167140e5ca4603eb97b971e56a06761fe`  
		Last Modified: Fri, 17 Jul 2026 22:17:53 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
