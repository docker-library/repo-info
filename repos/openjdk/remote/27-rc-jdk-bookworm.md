## `openjdk:27-rc-jdk-bookworm`

```console
$ docker pull openjdk@sha256:b6aeaca94a23fc421ef26d4352e307bf17a489d596a94d8986df3c0da8240a7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:743ad341f09f69ec23795a32e3d40eb346db6534602af0e0a5564209c9172520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.3 MB (381344504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90f8219c247d29054db3d0764daea1a7200c65699eacd6e9971f1459878d9f3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:45:51 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:45:51 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:45:51 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:45:51 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:45:51 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:45:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067f120fe1cbe0ca629fb18c1d049aea10f88b106ddaf57308775b63ee8faa46`  
		Last Modified: Fri, 21 Aug 2026 17:46:16 GMT  
		Size: 17.3 MB (17250674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f512c1cf6390d125e995bc83ed094b3a700a0a30be0de09fce78a7bab009381`  
		Last Modified: Fri, 21 Aug 2026 17:46:21 GMT  
		Size: 227.1 MB (227144333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a23f3c679e203ec72fab91ebdcf664d46f555d4895dc8aeb7d7d0332eeb4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8688318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a462e369f15bc71b06bf782e8f3143a1a8b1c004481ad3892ceb0ca0ea2d91d9`

```dockerfile
```

-	Layers:
	-	`sha256:61b419ed99da17d51702739b8c0f364abb08c9d5193dafb067b2ff795c707552`  
		Last Modified: Fri, 21 Aug 2026 17:46:16 GMT  
		Size: 8.7 MB (8670967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e81f045fbc587dd3502c1fba5210836e4a631ea9cefb97095a2e9fea133fdf0c`  
		Last Modified: Fri, 21 Aug 2026 17:46:15 GMT  
		Size: 17.4 KB (17351 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8485dc3c29d682189e49c4368a70bff6dbef5efa3a4c753bc283335c5409d1ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379642456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7265b09b894edf9a64c0785897cc28982ae71c0ba3aa67495ac84e3832c3d3d4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:44:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 21 Aug 2026 17:44:18 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:44:18 GMT
ENV LANG=C.UTF-8
# Fri, 21 Aug 2026 17:44:18 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:44:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 21 Aug 2026 17:44:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064648d589f901a345afec42922857899924844150e13e5543b35acf05295aba`  
		Last Modified: Fri, 21 Aug 2026 17:44:44 GMT  
		Size: 18.0 MB (18037725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec975a57a47ca9786ccefc84a32c7697de0d50e8201fa8db49856598d494f5b`  
		Last Modified: Fri, 21 Aug 2026 17:44:48 GMT  
		Size: 225.1 MB (225110515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:99d73b42a6374a77dde4047aa39f4f5cf36c1a796b7f53198d3f47cbae49b7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8825234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b69b77d096f917f042b38c520d0faec85b6d9e18b28690ef59c9a63aee79b62`

```dockerfile
```

-	Layers:
	-	`sha256:c73446673db75810ed7004342aebad2ad1c938c1b6cddf8b469f25d964331edf`  
		Last Modified: Fri, 21 Aug 2026 17:44:44 GMT  
		Size: 8.8 MB (8807788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:771f140b2c8cfc98b974815d317299e703f08ae0b179d0c9eb2e1c3e1ce30540`  
		Last Modified: Fri, 21 Aug 2026 17:44:43 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
