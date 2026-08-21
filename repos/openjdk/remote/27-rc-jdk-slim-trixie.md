## `openjdk:27-rc-jdk-slim-trixie`

```console
$ docker pull openjdk@sha256:768528b0434cacba1079c4bf406b716efe5d365ba0bc5ed800f4998f3f39b57d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-jdk-slim-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:0e2399baf2b0774acd4c59674c35c1e881d6f917e7310b01d336c68668e36e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259344426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171f0526f97fd1068b6b1c704ca56aac65a7d648e19f8d8e26a5d1690124a28e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:44:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:45:08 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:45:08 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:45:08 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:45:08 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:45:08 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:45:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e86654a9ac9d19cae8e05f90aa70d128bb1cffca06591f8cf0ce563afac9c1c`  
		Last Modified: Fri, 21 Aug 2026 17:45:26 GMT  
		Size: 2.4 MB (2371279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b028d6b417a8743b1ba96bb4d2baea0f854c47011701bd4274021c505775a8d`  
		Last Modified: Fri, 21 Aug 2026 17:45:31 GMT  
		Size: 227.2 MB (227192382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:8f36b12ede9f633d54d23d5d4a513dbf11db311db2006f97dd73ece68c4b3a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4c18200aaafe4afdba92a989ed137ac8d67e9bd4bac7097714b5ffe9c9bebb`

```dockerfile
```

-	Layers:
	-	`sha256:729525859ebcdf28764034c4d14680b891721eb305f56c58b60edc1e6f211e1b`  
		Last Modified: Fri, 21 Aug 2026 17:45:26 GMT  
		Size: 2.3 MB (2275126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3645399ca95443bf0582b360e050636c6869a0f6013f2e7109d3e91d2def07d2`  
		Last Modified: Fri, 21 Aug 2026 17:45:26 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7e366457f7db7905f10451f63a68cc25b7583125817c97551ba90f78104f0db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257621136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90954e3c3a87180fd4e7692fdcf6eb9d9d81ff0c0822c6902c9574d2d4f2233`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:44:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:31 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:44:31 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:31 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:31 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:31 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee85fac69daf2ed72808b8cdd6edbdb9643af4e332f440e23b2dd9346842f08`  
		Last Modified: Fri, 21 Aug 2026 17:44:52 GMT  
		Size: 2.3 MB (2314626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abc70e38283c8f5234629981af62d5a20fa8261d18a697985f9c950bd1517d0`  
		Last Modified: Fri, 21 Aug 2026 17:44:57 GMT  
		Size: 225.2 MB (225162901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-slim-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:76b63c7fbf0ca513d0767f9974b46ccc9818706a2d207460e62deca14b4f2958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5beb74c113a46cc8c6b261edd322539efc070b12e6e008c45bf634ad59b5b57`

```dockerfile
```

-	Layers:
	-	`sha256:734a95e09de4246d2e9815a0fd4f4909d65a41d1102fe2a371005c7c7fef30b5`  
		Last Modified: Fri, 21 Aug 2026 17:44:52 GMT  
		Size: 2.3 MB (2274756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddaa14e62f25a359c312e5c5a4ca5f994f5859da915e4a84a1bfc42af15d010c`  
		Last Modified: Fri, 21 Aug 2026 17:44:52 GMT  
		Size: 17.0 KB (16992 bytes)  
		MIME: application/vnd.in-toto+json
