## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:667760d13a3f6a8962039dd61f42b2bef265ef3535070a1f39338087cf6bfe6d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:dc430fad723a06d9ddd83a7a1ee5b6e24c94ea762096923a663c63cec302473d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.5 MB (403501159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed9f301a677de060e9696e05818dba35ae9b43ddf88a0253ae7885cf06a24f3`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 21:44:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:17 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c59766a7ef3add086d4f2eee9cb69387fa19ce3e7d41ca195057459bfffc8ef`  
		Last Modified: Wed, 18 Nov 2026 21:44:43 GMT  
		Size: 16.1 MB (16068267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c463f1c5e4f69642312369734902800ee23044bfb63782c566ff5eb2545a7ee`  
		Last Modified: Wed, 18 Nov 2026 21:44:47 GMT  
		Size: 244.6 MB (244567300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:c9f0eeabf933a509b188ecd35f8c0e9584c2dbdefcc82b33ad896c885909a630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8537248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f58f517a069b6090a16c58b8b238558dc8f6320564c79fabec3f0e3584ce3c`

```dockerfile
```

-	Layers:
	-	`sha256:3f798eb445473fe013a76d04332e2c9c1d65a86c175804495768db9569170913`  
		Last Modified: Wed, 18 Nov 2026 21:44:43 GMT  
		Size: 8.5 MB (8519335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcd8c0bdd8a6ac371ec3fbc59d19452eb4f0eccdf79ef7e0da39c6da22cd194f`  
		Last Modified: Wed, 18 Nov 2026 21:44:42 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:03f0e7656ea671b5a41c76f9cb0fecb7d7775146dc5cc68b923b0dc8b0454613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.1 MB (401115831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb32f5be18a4e5896f079730f80ff6c34237722a11734dc66f30f13c17303f8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 21:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:44:12 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 18 Nov 2026 21:44:12 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:12 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:12 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:12 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dec2d6da2e97ebc0055e13540a7f53cf9a6071506e996306ca67a14f2de2d3`  
		Last Modified: Wed, 18 Nov 2026 21:44:41 GMT  
		Size: 16.1 MB (16071298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721007130da58b4437ae120fbe2dca84fefe5f78b78bd68d42dc609cc7a94dec`  
		Last Modified: Wed, 18 Nov 2026 21:44:45 GMT  
		Size: 242.6 MB (242594643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:18e1c6f416ebb580907bb0f3b5a5556e1f2475c13d0b408fd6936c62ec378ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3feaca294d3e3d67e816a705e1ad0a28f4c95f5ad16c1a8c144d8446e99e19`

```dockerfile
```

-	Layers:
	-	`sha256:e7b352433b1163954237bf558e05b2a622e98016476872ce8b2a410c83411acb`  
		Last Modified: Wed, 18 Nov 2026 21:44:41 GMT  
		Size: 8.7 MB (8713488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bf5de2e2d3a02ea350615c1cf0f7fbe0b8622bffceece575da4460ab5efdf8`  
		Last Modified: Wed, 18 Nov 2026 21:44:40 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
