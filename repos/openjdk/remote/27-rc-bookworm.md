## `openjdk:27-rc-bookworm`

```console
$ docker pull openjdk@sha256:e8eccdda2a6ed889a1b7900436844c91bcacf486e467d20165525d7179c978cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:671bec8e3e5efddb3bd16e9bf132cd90b89cad1a879577e2ec66cd1554ce9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381060421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:623f4f139f3c200853d3a70f21c8017aed2133892a2c05504a38a6a85b052481`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:23:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:00 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 02:24:00 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:24:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:24:00 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 02:24:00 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:24:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1f45d7f0a84a27e8cc2c825c6e03068f7109003328307b298cb7e4153ac7e6`  
		Last Modified: Tue, 25 Aug 2026 02:24:22 GMT  
		Size: 16.9 MB (16949390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165c77510d73abf1ce94a0e16f6c532205f07101adfc9ee242257733bafa3859`  
		Last Modified: Tue, 25 Aug 2026 02:24:26 GMT  
		Size: 227.1 MB (227144357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:34f2cbad6d5c7783005bd0db10c8122ed4853bca828a2882d1b5e4e2947a8ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8688353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72996537420223025312ae71207f2a45b2855f55c3c90010493dba9318c3c69e`

```dockerfile
```

-	Layers:
	-	`sha256:8b3469ee51e09ca070f5ccf4b3843ee3b72b2515b0feaf7c80d30d87fdb4ee70`  
		Last Modified: Tue, 25 Aug 2026 02:24:21 GMT  
		Size: 8.7 MB (8671003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f80d63851ddda919e2fab4acb3743db2b5a7d973653191974e437cdde32fdc3`  
		Last Modified: Tue, 25 Aug 2026 02:24:21 GMT  
		Size: 17.4 KB (17350 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bde800f12c833142ca53b836bebe6e73d5413880145e9fc3ff1d0fd43396ef6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.4 MB (379356319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bc6fbd5f16a61922e78a7e081706a481266e0576eec378b307c78ac7bd1e65`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:25:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:00 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 02:26:00 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:26:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:26:00 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 02:26:00 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:26:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f587abe52c83b798e4b14a3217685a529b89738239defee67ffb0c5276bba7e7`  
		Last Modified: Tue, 25 Aug 2026 02:26:25 GMT  
		Size: 17.7 MB (17733631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda0fac253029c561fe51735e998abd14e11e9c5c23b9706f3b0fc129081c7e3`  
		Last Modified: Tue, 25 Aug 2026 02:26:29 GMT  
		Size: 225.1 MB (225110201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d35120c7f695f96e245e2bc2ed4b9e219e8c2fce0d7c8e9330bf876fb7ecb26e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8825270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd08dda51e5b67c776c05c5ae88557ee7a69b6e6d522f29faa8155a7b0be5479`

```dockerfile
```

-	Layers:
	-	`sha256:4542de43c71fc8af892e7523d7e95345bdc1aebaf0f39b52e0477eec7a43a74d`  
		Last Modified: Tue, 25 Aug 2026 02:26:25 GMT  
		Size: 8.8 MB (8807824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43e6ec605923b12ceb0a114d7161b86b00f3c5790a611e8529cd6432769ae118`  
		Last Modified: Tue, 25 Aug 2026 02:26:24 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
