## `openjdk:28-ea-18-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:5cf7ab0380b383ac6e6cea92c75f5edd01ed1a1b7b1f2d0fa03390591456c8ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-18-jdk-oraclelinux10` - linux; amd64

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

### `openjdk:28-ea-18-jdk-oraclelinux10` - unknown; unknown

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

### `openjdk:28-ea-18-jdk-oraclelinux10` - linux; arm64 variant v8

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

### `openjdk:28-ea-18-jdk-oraclelinux10` - unknown; unknown

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
