## `openjdk:27-rc-jdk`

```console
$ docker pull openjdk@sha256:3c0220e1c19cf0c724f2333addee5fe5f73fbfdb74e8ca9cecc69aaf54cafa50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

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

### `openjdk:27-rc-jdk` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:9aed9a429404b7cf4697d06e793b960bd335264e7948c5fff576c7876c3b08cf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681870936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a913d178c1b467d80ca83b26eaa28e0132a5690593c7608e890b3a25d956581`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:47:43 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:47:43 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 09 Sep 2026 22:47:48 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:47:49 GMT
ENV JAVA_VERSION=27
# Wed, 09 Sep 2026 22:47:49 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Wed, 09 Sep 2026 22:47:50 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Wed, 09 Sep 2026 22:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:11 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07762bbdde5be9cadb40541e985342df8cf017140f7c4c551e9301b3e645477`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 356.2 KB (356194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922bb44b595b4451a112e3707ab0201eca706358b30f92a857badb32a4af3f50`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30535381bf12bc80d1975fa64d0b768c76af9e81960511c7c377fff8287e3e02`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 348.1 KB (348103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f892b545177f802551acfc82c73bdfa05de2b382de1b96c4c67befe90d5e84`  
		Last Modified: Wed, 09 Sep 2026 22:48:16 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0c028b427f3c63ffc0c89042ff750d194906ce486ed3c805da9771a9bc9e3d`  
		Last Modified: Wed, 09 Sep 2026 22:48:16 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ae5dd8e0a5d4bd904e0bbbe5562713379cfcd03fcc374108ecf6174741153a`  
		Last Modified: Wed, 09 Sep 2026 22:48:16 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a336c922fee1fe4c904df1a061aed09d4e81fcc50a64e0f063484416f820a3`  
		Last Modified: Wed, 09 Sep 2026 22:48:29 GMT  
		Size: 223.5 MB (223529261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d7508579047628c6ab9b83b084d8eb3c5ff85f6e12d638185e43c027e108c9`  
		Last Modified: Wed, 09 Sep 2026 22:48:16 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-rc-jdk` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:1e2ad7426560bdb13938bce99fcd94566198828c3b8a5506db3380f170bd81b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2443675897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1cceac31edde079174302dfc22aaf07fc0b3902b7ee3d48887c08dff292ea7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:35:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:48 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:49 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 09 Sep 2026 22:49:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:55 GMT
ENV JAVA_VERSION=27
# Wed, 09 Sep 2026 22:49:56 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Wed, 09 Sep 2026 22:49:56 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Wed, 09 Sep 2026 22:50:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:41 GMT
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
	-	`sha256:390c3dd940ecf265b861931ae3dc9b5172a4e1d3a6a62ef3d59a7d2e3180d1a9`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53307b4fad4b44801ba37fb0749411f4787473b037cbf1739cd26a76a005e6c`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 349.0 KB (348973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14972c19dc30641a7b52f0c0670c5e258380109f36dc457be77ec45f673d2c0c`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e1e624e26a0079085091b0de46c66695b15204e2822ebbd3998624cb4e2045`  
		Last Modified: Wed, 09 Sep 2026 22:50:52 GMT  
		Size: 325.6 KB (325551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fd7f6dc2dd201fc2827c312b4169d60b5ee5abb1fbee237a0819df311c583f`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcc7038fa443b830aed93e850a0319b86cbb2103ec40ce2b6c1582e789d431c`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2255e1ff7ef605085c8d142cb917e88c62b9054cd395e510b0f3a90bed591ea`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc4c8863e026cfd61f6c8027fb9d333ae20d084c5a54093ad53f3bfc57d74e`  
		Last Modified: Wed, 09 Sep 2026 22:51:03 GMT  
		Size: 223.5 MB (223504742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7051cb84aa1a30d16652b2722e3205bfa9ccf2287663133374994cded1a4692`  
		Last Modified: Wed, 09 Sep 2026 22:50:50 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
