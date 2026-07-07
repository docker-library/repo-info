## `openjdk:28-ea-5-bookworm`

```console
$ docker pull openjdk@sha256:d30c5a8ead071770cbd4bb64a40e84125c0975afc8c15988b4e8bf30ed1c79be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-5-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:58ae2bd29ed5df2d8304757896735b746f3f0862c3cf4ad85d17d45810d34c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.4 MB (381436785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e69a424c6e9c1a0eb91a327462e2b81cd6e35189611160c159fd8c5d2fbba30`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:19 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:19 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:19 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:19 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:19 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2b0e0ce5f35a6f800b6cf70219a8538c69db60b28e92ad6e4a9d041dc42040`  
		Last Modified: Mon, 06 Jul 2026 21:40:45 GMT  
		Size: 16.9 MB (16946525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63462617bac94547fadce3842a5e7c90598eb067a3f19a579dc08f7cf7615867`  
		Last Modified: Mon, 06 Jul 2026 21:40:50 GMT  
		Size: 227.5 MB (227539987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8465115c996fe90f10c390bc27612c07a3988ee753fe865a5931dfb631228b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8684287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02926ac16cb9da4c8fdce792c45e4b1529d4272197356fc7f6e85b55a2715945`

```dockerfile
```

-	Layers:
	-	`sha256:df49506d220899f0867e055ff60ddb9f662d32d021a2b7bb6f7e521a7b5017c2`  
		Last Modified: Mon, 06 Jul 2026 21:40:45 GMT  
		Size: 8.7 MB (8666366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:365279dfae0f0b525f9b82ce5b56e130a36d2d66eec9f8a459fc0b4d06c95125`  
		Last Modified: Mon, 06 Jul 2026 21:40:44 GMT  
		Size: 17.9 KB (17921 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2f39ed695f381d11cabc78df84a9934e64f4ff4791b10c3aeae08132ef4a9962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.8 MB (379811974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0d8a6b8efcc8ad60c4058f3a387c28846f4cf72b53ed792df28f3cd8052797`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:21 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:21 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:21 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:21 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2b8a1f07dc4e204bc7a9c92e0eeb0ab85fa60003c0b04f66c36e035ecba62d`  
		Last Modified: Mon, 06 Jul 2026 21:40:47 GMT  
		Size: 17.7 MB (17730354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be9ae90bc7ac2ebbc723a071f2ad548fe4c66c05ff03bce240ead368d541198`  
		Last Modified: Mon, 06 Jul 2026 21:40:51 GMT  
		Size: 225.6 MB (225591397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:dd5ff6b503ac01aae3d1d0d8ee6683ce71c31c70f91405f0e6c851c70fbf93bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8821252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064ed8635fad7eb89716044a416ff6c37b0c36a95a8bd919d36d6294e16960a2`

```dockerfile
```

-	Layers:
	-	`sha256:9d7daa23940da4fab6c5f98fad6e0aa84f7e008fa6c3e9293e0e5bf67fb09af1`  
		Last Modified: Mon, 06 Jul 2026 21:40:46 GMT  
		Size: 8.8 MB (8803211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d651d493e8f43348108dcff377865f29d0f8b55e83435dd6b272b8ee64c5c4e7`  
		Last Modified: Mon, 06 Jul 2026 21:40:46 GMT  
		Size: 18.0 KB (18041 bytes)  
		MIME: application/vnd.in-toto+json
