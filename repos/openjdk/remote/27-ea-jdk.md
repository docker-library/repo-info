## `openjdk:27-ea-jdk`

```console
$ docker pull openjdk@sha256:e3b57e2ea4c6a6beb581878d6d7a62758972abfa115827e15435c620f0c11bb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:c614214d0d4d09a3ff8e099e2266584f5f6410d362d1479d2968d7b16381e46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308721079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b444dc9c91f642a913b3c1cbadcb0ec70fcad796e4b7011990e898b76f69478`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:10:51 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:11:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 22:11:02 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:11:02 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:11:02 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 22:11:02 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:11:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8fdab8931f7de94e5c3639cd9bee182b1e2ff61004a97860c4e62fb900a11b`  
		Last Modified: Tue, 04 Aug 2026 22:11:24 GMT  
		Size: 36.9 MB (36857143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafde37a26dd68f3db466ac20f0488369915f9ea2be368b10418293d163e4561`  
		Last Modified: Tue, 04 Aug 2026 22:11:27 GMT  
		Size: 227.0 MB (227021486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:b4e1b612dfc71c3179024b1bc923088e0bd0055d071d8652f9254f3ece17645d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7d94420e7fbf230d8084f522acf14c009ffa509f80c133ae0a1f350736a9a2`

```dockerfile
```

-	Layers:
	-	`sha256:93a63c1cb5257761f677a153c31684ebe62f64e44333fc058fd4c6a137033179`  
		Last Modified: Tue, 04 Aug 2026 22:11:22 GMT  
		Size: 2.4 MB (2373382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e580e1ec277e0fe7952cabfd4f38f8ed6e45500f86f940a3552fe45f39e860a4`  
		Last Modified: Tue, 04 Aug 2026 22:11:22 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b1a68ce893a232339382568c2cf2971a63d5809c3d9dc5552e7d15596a5786df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305213968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c842bd95005fae702f95f59498524c71342afdf624f8df4d20d489a41abe687c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:12:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 22:12:13 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:12:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 22:12:13 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 22:12:13 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 22:12:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32af5fcd6bfe40bce606df5f1adfd28462dba617a6a154db178a956fd507b14a`  
		Last Modified: Tue, 04 Aug 2026 22:12:36 GMT  
		Size: 36.9 MB (36915098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ec507d6666ee980b0a2e3ac0f21d9d88ee121cdde9ae03658ef458208688fa`  
		Last Modified: Tue, 04 Aug 2026 22:12:39 GMT  
		Size: 225.0 MB (224997446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:889ac501f0935ad22c64dcc1fe914234a2ed390a0b710d59b08fa92e2cbc7d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd3c78820aa33d0aec64f9cb2c9f18349cf9cdf7bc909f96a2348756ad98b5e`

```dockerfile
```

-	Layers:
	-	`sha256:c8cd15599238ca86086ceb960d3ad610d14ed94662f44e750c1bfb407f741d04`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 2.4 MB (2372910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc84ae97e850e6cd65f2ab296452f2ab9c2dbc8b133eacd71b965959cb7b0f49`  
		Last Modified: Tue, 04 Aug 2026 22:12:34 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:ead33946bc8b159843161f0324d5315a1a494c57dfbc33232e18ce703334889d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579357969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb053065df3697a9a0bfb8deff383512e1089896580456cedace0a2623520cea`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:00:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:21 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 04 Aug 2026 01:00:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:00:29 GMT
ENV JAVA_SHA256=b0cb0a5e7a3a55c33156aafff55edd46f46b7e7f306743285691c76bc7d79263
# Tue, 04 Aug 2026 01:00:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:55 GMT
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
	-	`sha256:0a35ca151f110438c3c4bfe658e4db1feccc940c5c87e053e4cb9688768ac883`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e45ff04c56a7871831e4d2309fc5d5074bbf584bf340962c599ff05c292bf4`  
		Last Modified: Tue, 04 Aug 2026 01:01:02 GMT  
		Size: 395.9 KB (395903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055dde483976554840827cf4807a92d9d536f7e19d70d1f8dad5f511ba79626f`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426385c908ca9e619050b8a9e49c3721f30a76ffebd3fa9ebf1f1e654f706056`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 385.1 KB (385110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831c66cc6729a98059290789f4f2541c5988337eb70cb994b5f74a3e366c24e`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12759576ea7e027c985cf2971413534af9590ca5d22d12202923e53f1673cff7`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9698a4b8944a28d4b6a1223b0f28da4c76aea52c2829302556d90585cbb17a`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205ff888e3d6db6f569160a0df896b1e41117503e8a15ccf66b16c956c361f43`  
		Last Modified: Tue, 04 Aug 2026 01:01:13 GMT  
		Size: 223.6 MB (223560987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee87e5af35949d4b83c0b33755ab8aad484e2e9f7c5a6fe9ebf3a36279fffc73`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:ad39394527bb7b9dfa4423af93bce16a50d5038bb83885a7170366ab344195e8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381928757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b5de4aab344abfa96f1f24a78ae58b52e1629028c277f5cfabc3b8dcee5747`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 01:01:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:02:23 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:02:24 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 04 Aug 2026 01:02:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:02:34 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 01:02:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:02:37 GMT
ENV JAVA_SHA256=b0cb0a5e7a3a55c33156aafff55edd46f46b7e7f306743285691c76bc7d79263
# Tue, 04 Aug 2026 01:03:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:03:37 GMT
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
	-	`sha256:374123d8acc99a6e9f519e50e544432036d6e008e65a29896bb1d69e3675a3c1`  
		Last Modified: Tue, 04 Aug 2026 01:03:45 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd09bdca053b3e396e3693318d19f00cb859c63aae801ff352a03079fcd3935f`  
		Last Modified: Tue, 04 Aug 2026 01:03:45 GMT  
		Size: 497.2 KB (497235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7083c50bfa5dab45490b70108ac16fa47be506fc9c1037643e3b3a9c6addaf2`  
		Last Modified: Tue, 04 Aug 2026 01:03:45 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e11d7870b263423f110611062b8ba3cd5a874b3fd48b0966a17d92ba880b8`  
		Last Modified: Tue, 04 Aug 2026 01:03:45 GMT  
		Size: 344.5 KB (344468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2a01f2e8164bd0af136c4d87471b03ec03be9d92f0a0c41f292051e96d8228`  
		Last Modified: Tue, 04 Aug 2026 01:03:43 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c899a8888c51918185ebb3b89673ba42c82077a4f816bfbf889933cd6f904b3`  
		Last Modified: Tue, 04 Aug 2026 01:03:43 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7202edcadaacf6b48098fc46b8db9142c6c34bc9e23b23d5527c01faf841a2a7`  
		Last Modified: Tue, 04 Aug 2026 01:03:43 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f981bd976265f28a6bfba08bef573df65661626553560d6d1280fb0ef6d1d91`  
		Last Modified: Tue, 04 Aug 2026 01:03:57 GMT  
		Size: 223.5 MB (223526100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5468ca0ddbb0be503e26253163fa1ba4a4abf08cfb317dd47c6276027ee7bc6e`  
		Last Modified: Tue, 04 Aug 2026 01:03:43 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
