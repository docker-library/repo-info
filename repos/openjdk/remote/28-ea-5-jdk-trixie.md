## `openjdk:28-ea-5-jdk-trixie`

```console
$ docker pull openjdk@sha256:7f31aa0a9aad1d531208f94dfdd1b20b3f9e18a2d29111163cc136e229b86830
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-5-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:5aaad6f578c2d1ac04cf5c99fba838c6f97baba638f89588b1bdd9c3f23f3db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386339897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fec08e9b248932185b79a329ac3d7c266af6e2ecffdc236ef5a5bf7f9e62a60`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 21:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:15 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:15 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:15 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
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
	-	`sha256:d81336fa39faee5dd46729fbc72f7b4a45ece12a244094d1796196f69507d6df`  
		Last Modified: Mon, 06 Jul 2026 21:40:41 GMT  
		Size: 16.1 MB (16065697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2acf73c8f8730b58cd044ee3b1fd93a974c28a40829cea629cc2794a1212e2`  
		Last Modified: Mon, 06 Jul 2026 21:40:46 GMT  
		Size: 227.5 MB (227543873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:970ed6778aa43003fcf64dfcd3c68ebd67e7ee7e7e45f52efeccd8b37dd0f395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4854586576cf348c2fac8330754f00eb8c6e16abe848adfdb1e1a4c9cd5719`

```dockerfile
```

-	Layers:
	-	`sha256:4f4f3d819e073a721c18c5bf243dfaa6a937ff2c491c5729e24935585ad56464`  
		Last Modified: Mon, 06 Jul 2026 21:40:41 GMT  
		Size: 8.5 MB (8508887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c09544c4ae5b52f70bc7f0a9df25439da27ea5f17017bd3b736e996a7a918747`  
		Last Modified: Mon, 06 Jul 2026 21:40:40 GMT  
		Size: 17.9 KB (17896 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d21108b755acae72a89f70a39ade4e43ce215d6306e18dd8950a5a16cc8d4a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.0 MB (383964224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb2a4cf29a9569527ac7775ca08ed95d3ce8ba3e9498207ba1cdb053ca1da8d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 21:40:11 GMT
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
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2961a2b2988fdb45860f693657772930b3e24c35efd550c9b4263cb6a1240ce`  
		Last Modified: Mon, 06 Jul 2026 21:40:48 GMT  
		Size: 16.1 MB (16071419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23fd73e6a4aa52661971029126462919ce3cee5c6240fe36cc8da502aaa7597`  
		Last Modified: Mon, 06 Jul 2026 21:40:52 GMT  
		Size: 225.6 MB (225594902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:9a01864650cbaeebef5653be3cb22b39cc73b057cc1d89aa2d92e6876f39e3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f786ee5f213a599fb4e53d30a27b3e85b373573ae60ff30b1f8d58a1b705fad0`

```dockerfile
```

-	Layers:
	-	`sha256:518bbc85410997df8e0454f61b46db87bf13582511c67ed1c11177420cc93d88`  
		Last Modified: Mon, 06 Jul 2026 21:40:47 GMT  
		Size: 8.7 MB (8703040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eccade53daf7468665e063943f07a53d2c503ba258ae2d7b7dbe583a0c34a43`  
		Last Modified: Mon, 06 Jul 2026 21:40:47 GMT  
		Size: 18.0 KB (18015 bytes)  
		MIME: application/vnd.in-toto+json
