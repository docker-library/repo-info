## `openjdk:28-ea-14-jdk-bookworm`

```console
$ docker pull openjdk@sha256:8478374e415d3620b0a0bd3a62a1b76bca9ef0f78942b90b7a0c69137e88892f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-14-jdk-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8fa12c2a2c2f1508e0a121c0f7281d2b0888f9cd150f105a21c2d645d97a8d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.6 MB (396591570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b82f7da65397dd37ab0a3692915a71642826a66a39a19b43d683fb534151162`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:48 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:48 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:48 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:48 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:48 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:48 GMT
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
	-	`sha256:b7d67f9cc2062709012c69be0918c9f4270f22b86adb69e97e167a725fad460d`  
		Last Modified: Fri, 04 Sep 2026 21:10:17 GMT  
		Size: 16.9 MB (16949378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78c34032fac820460b48c17550ddb7d0517e7a7fb3491307149c5d26145cea3`  
		Last Modified: Fri, 04 Sep 2026 21:10:21 GMT  
		Size: 242.7 MB (242675518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8782cba168ef08fbe3ea0e3b6bd4021530277abf49eb6303d433df419daeb4dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8692180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1eac0e2b191fc1dbb3a384f65848fc8737a2c076f308d7dee8b9fe23c86539b`

```dockerfile
```

-	Layers:
	-	`sha256:c5d635bc4695191626ba0d3f8b65d9f5317a42709f9ba4f193756db37d804f92`  
		Last Modified: Fri, 04 Sep 2026 21:10:17 GMT  
		Size: 8.7 MB (8674241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277c1d53b84c21b89532b5f92c8648ed62a65ecd4ea6db48ea48264553828d61`  
		Last Modified: Fri, 04 Sep 2026 21:10:16 GMT  
		Size: 17.9 KB (17939 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-jdk-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cb7797526c8b07c9ad45e293662247a43750f9175af6a57934d359c605958650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (394990849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13f93a06f4be536257333342aeb4211a151e752fadc7c7027ac17d9f9b4f7a9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:08:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 04 Sep 2026 21:09:08 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 04 Sep 2026 21:09:08 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:09:08 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:09:08 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:09:08 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:09:08 GMT
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
	-	`sha256:9648dd0a96db2dba6d1a911ac755838532c2b59b246c24030495a2d2dd914fa9`  
		Last Modified: Fri, 04 Sep 2026 21:09:37 GMT  
		Size: 17.7 MB (17733622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4f231615e8f4b21ac358c231f0931309ba6f6f77b9725274bda5190371b783`  
		Last Modified: Fri, 04 Sep 2026 21:09:41 GMT  
		Size: 240.7 MB (240744740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:a694470cc7a06c822a4c98b836c437f45b1c0b29b937cfa466877be6b2210594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8829144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec861f2acb47a28d0af31051ad1ceff49ddb8f4d21d1fbc3eefabac6e3421860`

```dockerfile
```

-	Layers:
	-	`sha256:07c6c1b7029dd9d50ec9b20df8a3c78b669aa1552ffaff498d1331a50767359b`  
		Last Modified: Fri, 04 Sep 2026 21:09:36 GMT  
		Size: 8.8 MB (8811086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:add0dceed5e74f9d3728beff05f9d36bf0959f557c3a03cda895fedaadec024c`  
		Last Modified: Fri, 04 Sep 2026 21:09:36 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
