## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:00c4981d95ca23c8e10e67c9a934f2e8d105def893123e2b0b99b60b22c6e9aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 5
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:b96d51c7b19b91286abc4acfc974f850af8d25d5fcaf78c660a6e21843e4f1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324986084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698a76aa741885826b6180c69e35254be786e596deeb2f0c88c7b003006145eb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:43:34 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:43:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:43:46 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:43:46 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:43:46 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04aec27dc6f088f7b0505463a28d59789597fc25e7b8cc56c68ccb8c5310a9`  
		Last Modified: Tue, 10 Nov 2026 21:44:12 GMT  
		Size: 36.9 MB (36894133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f3d75197a34ed9328a4a271fc26363a3cf38d0540e9e0839a36be25d7493c4`  
		Last Modified: Tue, 10 Nov 2026 21:44:15 GMT  
		Size: 243.2 MB (243241245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:ef438d94b91856c508f1acea3f22a278cb9f83122d2b394858cd092c90714262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca59a24709cceaff58386bbac067da18d61bb4bb8f9261b55c7dfd9fc1756cc7`

```dockerfile
```

-	Layers:
	-	`sha256:334aa95370aee6c19d2e8e0a319356ca560979e78a4878e174f4be0cce520584`  
		Last Modified: Tue, 10 Nov 2026 21:44:10 GMT  
		Size: 2.4 MB (2358174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66c311a5b5bcb2f0678dd1731e986d302a6d4acc4535ac04f7edb5c6cd392a34`  
		Last Modified: Tue, 10 Nov 2026 21:44:10 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:79ed272a102cc3ff492d3a5f4a4edbeaca73b5a95254c11736600788b1a9281a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321526869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf8aabdf5a9a4f6d58f8b4e07389e51cde10823c9ca719e49b63a2ceb84e4ac`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 21:46:30 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:46:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 10 Nov 2026 21:46:46 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:46:46 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 21:46:46 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:46:46 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-x64_bin.tar.gz'; 			downloadSha256='8a8723ee41ada67f996bbe8292fac4e2865803017832ca4a677c80dc13a97eb7'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_linux-aarch64_bin.tar.gz'; 			downloadSha256='b739d2c42e55eaec14e7cf2efb861d165be04b680a61a0dba38878f20673a7cf'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 10 Nov 2026 21:46:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26909ae1eac496bdb0072ec4f8df671c3ee6344a44ba7c461b9c9e31d88e079`  
		Last Modified: Tue, 10 Nov 2026 21:47:11 GMT  
		Size: 36.9 MB (36943411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207b29d5b9fa51023bdddbf235203ab6d5a8abd86b036c188920c66fa2fe63c`  
		Last Modified: Tue, 10 Nov 2026 21:47:15 GMT  
		Size: 241.3 MB (241278162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:632cfe4b0d01178bc3fb32703aeb9af2efb456c9a681d33232955917c405fa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2375766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28124af01e52edc6e35b40136d484d3e8fac699c8eeb4e4b2755d7fc8f6b29`

```dockerfile
```

-	Layers:
	-	`sha256:c081abe696eb88e985c89c3e5e45e4b0cccb50d73ce80c4bb0b2a253811e05a8`  
		Last Modified: Tue, 10 Nov 2026 21:47:10 GMT  
		Size: 2.4 MB (2357702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ef0837f0c81e8539546a2439fb873a0cead9f9550bd9270bc6bac3525786dcf`  
		Last Modified: Tue, 10 Nov 2026 21:47:10 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:b9c718dc868d3c7abdf9ae3f10e6061a66fb4182c4a19326f49dfb8e72c43f63
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632816605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069816412e44bba3540bc7d426656ddc5284654d22d99f8bf12d6b61d107ed6e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 10 Nov 2026 21:29:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 21:30:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 10 Nov 2026 21:30:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:23 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 21:30:24 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/23/GPL/openjdk-28-ea+23_windows-x64_bin.zip
# Tue, 10 Nov 2026 21:30:25 GMT
ENV JAVA_SHA256=14c3fc0511b3d83dc2b23875f3755241cd1eb1c6ee594ce0a2e80e12be76873f
# Tue, 10 Nov 2026 21:30:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 10 Nov 2026 21:30:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eefd6a1547d60c1fd4d450f3c2c7a8153ec803f034351e09c22ed929156cafb`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fcb228b6085f27138d2ff4ee482ababbe308e3f04bd4bad1c8ddbf6b7ff78f`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 378.2 KB (378154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de0e942f920122ec1accc6147950ea2cdea093519f82959b095167752bb4de2`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4048e58e94e12b185dbe7f7f73986e261fe7e1af8c57a19370cff6e16f2aee`  
		Last Modified: Tue, 10 Nov 2026 21:31:03 GMT  
		Size: 366.7 KB (366709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834bff372e234676d0a2fb7ec796adf460e1810efa150f5d7f5f945c5d010a`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765f3fa253756dc23acfb92a8ea217f2fe240e7738fed967a8dd3444567153fe`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3de9511760072371c9684fc88b9e93f097d3dffa6dcf3ef07d688d4964b321`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117abb55257ff625d83ba1e036f8d183beb6678e529ee125d261897bdc32f8ba`  
		Last Modified: Tue, 10 Nov 2026 21:31:17 GMT  
		Size: 240.0 MB (240014903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c582a282d3eb3e84b61f4a16f449f270bca2da7c2c909fd84534ca74cb2d1`  
		Last Modified: Tue, 10 Nov 2026 21:31:01 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
