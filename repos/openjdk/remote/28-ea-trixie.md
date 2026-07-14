## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:b1eeba500097883f7768762a28c74da220d4759f7d95fc9ce405a38fd57d7bd9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:8ede2bddb9a16d82066f35599348147019c6272235cc63db9b206f6d58f670c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.4 MB (386366668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e1c0461c712b41e6f38180715e63cadaac489714f1a3e0da2d1d813cd23ffe`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 10 Jul 2026 17:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:10:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 10 Jul 2026 17:10:57 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Jul 2026 17:10:57 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jul 2026 17:10:57 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 17:10:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 10 Jul 2026 17:10:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838582566ec10cfe698e5dbb556a299abb8a511c685dc95a6301a7c4171819f`  
		Last Modified: Fri, 10 Jul 2026 17:11:22 GMT  
		Size: 16.1 MB (16065758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745410515281dd993206179ebd429c5e3d6e8ff9ccd606e162052386e31317e0`  
		Last Modified: Fri, 10 Jul 2026 17:11:26 GMT  
		Size: 227.6 MB (227570583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:896ab34bcc9609e6ec5e2d41c151f90f5775700455afa06433f689e154d43f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec87d419053d09670301e5e5b9d9cb3c919af2dd27981106d56ca88ec75f18b`

```dockerfile
```

-	Layers:
	-	`sha256:da24febffc2e765f9be23318669df9b8e4a5a58ad7b3f4e9124278c16e9b6d97`  
		Last Modified: Fri, 10 Jul 2026 17:11:22 GMT  
		Size: 8.5 MB (8508887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e461640aca76eaf770156a968f9b09b3543dd4958d41d6cb6bdfdd61b8b4cf9`  
		Last Modified: Fri, 10 Jul 2026 17:11:21 GMT  
		Size: 17.9 KB (17895 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:70bb4aa3a6bee494aeae5737ad15d9678f85e7e7e55fa7af88de37f004d61315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.0 MB (383994588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca0c3811dd4d8af02f784c539fd3a1afc3dd63f94d110bea4070c9f5ca5d1e6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:24:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:24:16 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 14 Jul 2026 03:24:16 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:24:16 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:24:16 GMT
ENV JAVA_VERSION=28-ea+6
# Tue, 14 Jul 2026 03:24:16 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='72062e6a5506eb2829a215f6e3fde92d0f625d6e7e56fe84044169921e4e8a3c'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/6/GPL/openjdk-28-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='062a6f65617a2ec1abab55036320b057d8a147a60ab17c4695ac06e2e5c40ab2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 14 Jul 2026 03:24:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15cba30f09fda765eb962f9ef01579cb711708e3246d81c3f8307a14cfcd814`  
		Last Modified: Tue, 14 Jul 2026 03:24:41 GMT  
		Size: 16.1 MB (16071363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849a4dedd3c07be8ad42666dbd29e7afcfe1f4f21622addd7077250902163236`  
		Last Modified: Tue, 14 Jul 2026 03:24:45 GMT  
		Size: 225.6 MB (225626567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9a52a4e3811f696f4110ddc861a8d7b97fe988ae3cab59eb943ab65900149d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67678adfedfd7c81b6335348818a8a3f3aeb5d7d468827d014ee0395e454273`

```dockerfile
```

-	Layers:
	-	`sha256:7db120a6a115270d9818747e37fd971752713fd3dae87e6bb8d090e73e0bc5db`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 8.7 MB (8703130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4bb280b606a837f7c133163f78dcbdfcf22143ff6b76bea1657f19e5fe67907`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 18.0 KB (18014 bytes)  
		MIME: application/vnd.in-toto+json
