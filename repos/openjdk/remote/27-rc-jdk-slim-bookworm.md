## `openjdk:27-rc-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:a1728b0fceeeeb80f4e94eb2605148e9f07250917c01b107dcdf74e6ed5a1b33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:710b67fec8ad0594a89cd7f20c0637c1c241141ed8e87dfa9eefda5c1fcc91a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259475422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4927700fd82b5dfda9a3e3d5e500366a44d726c422398b8524b78afb59419b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:55:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 00:56:22 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:56:22 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:56:22 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 00:56:22 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 00:56:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db80ee8f3a024ecf1db2f892697601eb269b60e92d4d5fedd0ebaa181a0427`  
		Last Modified: Tue, 25 Aug 2026 00:56:40 GMT  
		Size: 4.0 MB (4046378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637d4531cf1ccd956037ced8932af246f7efb4d05e877b4747b1e0329ca9e9e7`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 227.2 MB (227196389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:bae5c3d9725460329c70a8ddb027145473624533763ac90b8b9cb54d68f20c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2668112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7421bf36433e2305051482e9ae74e0b3235932c1513ac72fdfbda66bc77291`

```dockerfile
```

-	Layers:
	-	`sha256:970ada438c5c50f46dacdff4b32e3915af8bc0bf21f4a1d3e2660b822181f561`  
		Last Modified: Tue, 25 Aug 2026 00:56:40 GMT  
		Size: 2.7 MB (2651845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d98b3f67e61e7662281e382c110e94eb0e77931d38afea44b6158e23f55fc1c9`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 16.3 KB (16267 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0984161ef3f8e8afa2dd560ee425e82c2b70f4a1a6ef164f59c5a2bceafa346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257145100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f9ae206c39e684bb590c0d5aa41b77d045efee36feb8899d9bc3e15aec3e91`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 02:00:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:00:40 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 25 Aug 2026 02:00:40 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:00:40 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:00:40 GMT
ENV JAVA_VERSION=27
# Tue, 25 Aug 2026 02:00:40 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 25 Aug 2026 02:00:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9213cc5e61f5a08a0b90e14ec62432f1a44c487c5a1c7e0fb30a7fd83a3f790a`  
		Last Modified: Tue, 25 Aug 2026 02:01:01 GMT  
		Size: 3.9 MB (3861363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5356b6889190bb6cfd8292d035330f7feeea411e9d788024ba0f1856ef701eb8`  
		Last Modified: Tue, 25 Aug 2026 02:01:05 GMT  
		Size: 225.2 MB (225166448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ad6e26b335636894cb990de9b3182718bb3f5de017701473b9a67f9f59a852f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2667817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913773d267a71f5411d1b1dc4a1454d93a9f9bf4fb9747b846b5e4e076efadb5`

```dockerfile
```

-	Layers:
	-	`sha256:ee56aa8a09863155a68150930a742f31c0dce99e2ecbba71113ba4993b4b776a`  
		Last Modified: Tue, 25 Aug 2026 02:01:01 GMT  
		Size: 2.7 MB (2651455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:982c920639690e0875f00e03a206faf4c75439ebc7697bb82139af04d1784dcd`  
		Last Modified: Tue, 25 Aug 2026 02:01:00 GMT  
		Size: 16.4 KB (16362 bytes)  
		MIME: application/vnd.in-toto+json
