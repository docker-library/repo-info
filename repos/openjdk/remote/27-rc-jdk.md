## `openjdk:27-rc-jdk`

```console
$ docker pull openjdk@sha256:e318114a7a9d559bb8af7fee6a579799d57cc7394053c38ec6b069ec806cd18f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-rc-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:46baef3eb49cb41f59d186f6a76b99d85da5f11c019c5c30a3aebfb3f3aacd33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310109329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9588f13c7bbde3c5036e2afd07370892a521b3aa2e6eb0206dd58de62d173a21`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:54 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:54 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:21 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:15:29 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:15:29 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:15:29 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:15:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:15:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51ebae28b522ae451dcb4755f40b850034b90aac9a5ee084d5cf00124019006`  
		Last Modified: Tue, 08 Sep 2026 18:58:04 GMT  
		Size: 44.8 MB (44848156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0861bf89cf8b8b11657c9414e65c4bc341a7e3e01b76b797c873fac672a5e53b`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 38.2 MB (38239869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e40e2d964766df3fa94e79a373b89ff13c44cc7888a90ffc85ed23efcd9a6b3`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 227.0 MB (227021304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:e6d1bfaea7e89b20762685e162328d484fecca8116984ae61b1dd1fdd40eff04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec4681e1fd1767a296aa57972de99b57c25df80ea84822d56062035f2dd67f9`

```dockerfile
```

-	Layers:
	-	`sha256:143445ad2094f91f49dd817b9e9e301db233199613d8f01ee08715feff76aa5b`  
		Last Modified: Tue, 08 Sep 2026 19:15:49 GMT  
		Size: 2.4 MB (2398888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3977f31382cfd2a6952bcb5120b062c6c1512a53ba2df4c2161ce8ae7bd6b1ae`  
		Last Modified: Tue, 08 Sep 2026 19:15:49 GMT  
		Size: 16.0 KB (15986 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:909e84de0a133bf408af9349de5462155369ab0c72c4c0acb8b3a184b865d2a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306598338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90e0e9ad19b514e3d2df252837d1f6ccaa304869bb599d6b69763cbca830586`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:06 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:06 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:16:42 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:16:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:16:51 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:16:51 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:16:51 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:16:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:16:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d69eefe7b81f7db3bb7240d32dae9ece515d7146f3e014e0b6e59b31a41a9bb0`  
		Last Modified: Tue, 08 Sep 2026 18:57:16 GMT  
		Size: 43.3 MB (43305657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f170ab1ceaf99503ae82698141ef6e3780679bcb972756e7057091178206eae6`  
		Last Modified: Tue, 08 Sep 2026 19:17:14 GMT  
		Size: 38.3 MB (38293370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e993ba3d05a8a5c5facbe6ed168311f677493c8f47185a1d592d0cc2308c9ae4`  
		Last Modified: Tue, 08 Sep 2026 19:17:17 GMT  
		Size: 225.0 MB (224999311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:21ce5b1068179a30c2d7811996fe1818183cd8dc882a190752d84dcbe9053f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce792ee44de91fe1b58dea9fe4782830cbbb49706e56a9ebbf05a26f06e45d5c`

```dockerfile
```

-	Layers:
	-	`sha256:4915848069a3bb571e0d771b2f18e2b11b669061c8bf4b9f75b7b6e7353c3190`  
		Last Modified: Tue, 08 Sep 2026 19:17:13 GMT  
		Size: 2.4 MB (2398344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b74a101eb2ea9f550a5f322934f7cc2e4578f28fa02c7893458f8e766f01bfb`  
		Last Modified: Tue, 08 Sep 2026 19:17:12 GMT  
		Size: 16.1 KB (16129 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:c7abbd175c8d43135fa9e82277391839a0357d5f91deb2ce2521a10e672ccd67
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2665102059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc9dacbbc0e52df3ab6d316e1fa56d7580e81dd216e5137bb0a3b8ac717767b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 21 Aug 2026 17:59:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 17:59:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:59:56 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 18:00:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:00:04 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 18:00:04 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Fri, 21 Aug 2026 18:00:05 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Fri, 21 Aug 2026 18:00:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:00:32 GMT
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
	-	`sha256:122e55204f721a4565ed66054a30fb652b877801fff7d16ae6ccd1e6c80fa843`  
		Last Modified: Fri, 21 Aug 2026 18:00:40 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1130d20296ba9febc7cc9af5e91f979f8dd9a3942791fc32b6e7f949c52546ec`  
		Last Modified: Fri, 21 Aug 2026 18:00:39 GMT  
		Size: 389.0 KB (388959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a1f5c388be9bf3658bdefad881d0f5c31c985355c8d269c8f798fd07bdec7`  
		Last Modified: Fri, 21 Aug 2026 18:00:39 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513a33d5baf7504188d5e0f2ebe58d2b34f479a670e8f534489d41bce257ee30`  
		Last Modified: Fri, 21 Aug 2026 18:00:38 GMT  
		Size: 373.8 KB (373836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9761df6423b1354a7c686a4087726f0d756fee158e6cc8b8719ec168e7dcba`  
		Last Modified: Fri, 21 Aug 2026 18:00:36 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c060c2189d76e5e2824ba24972f87f1fd64620e4a372344f73abcbd90b3f16`  
		Last Modified: Fri, 21 Aug 2026 18:00:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4172a0a2cb6e6f726a172fe58166bc2aeba5e6c903f0d610cf545cb94a0faae7`  
		Last Modified: Fri, 21 Aug 2026 18:00:36 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729fbd3a553ce40094a72d961b460d5c48ab70b1b7e84757ed9506bc8b8b969f`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 223.5 MB (223546145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818db10d724c6eb5ee7140de1b513a3fb980e2c10dea918be4c4f4881c12613f`  
		Last Modified: Fri, 21 Aug 2026 18:00:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-rc-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:c47c1414eec86bd2498e165b21f5927dc8bff02811a5707363edcdb0c7e8df76
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2408234439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c29b44f130d621abc241ca8b9ee4dd870ccc47f283c3e3635078b91f7b17fe7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 17:46:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 17:47:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:00 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 17:48:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:08 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:48:08 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Fri, 21 Aug 2026 17:48:09 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Fri, 21 Aug 2026 17:48:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:35 GMT
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
	-	`sha256:434a4b389be160fa579bc402c8d442a0687c758845e3fc8c8a01a5f97fbebc99`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff24a60f6f8a43f64e1dc223c938cf0ee9cbb5295c5f5fc154b7a60d5b0402`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 362.1 KB (362095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d510494e9f896a5efc2e16b672a93b6f68cac43f35f68480b8f88955e4ae792`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb16885026f514b946829a7c5888c399f49871af82c83d9f17bf85f242ef7d6`  
		Last Modified: Fri, 21 Aug 2026 17:48:42 GMT  
		Size: 339.2 KB (339231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c379707d3786583992325ec7622631c26004bdba4354ecb784063983487b4238`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea25f7e25009dc24b833ea7b8f3a55e291b50ab24c07451c24435f0974dc8e87`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5999c2cc2bf2b2cd0f5fb17cac7532a64066a2b942386f7f34d9982f62b5da8`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4c83df733ddeda566ed8b39ea3ca2517932343c791c986eedd9f5b8c158be`  
		Last Modified: Fri, 21 Aug 2026 17:48:52 GMT  
		Size: 223.5 MB (223527816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30d3095d13da9ebfa75d2e6bc44175daa31516377e150e59593004d5978126`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
