## `openjdk:27-ea-34-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:fb14c2c8b703ba9c160503524ca588e765e46463576ec2ecdc909a1921b135d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-34-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:c77f7a1d9db0c32d502cccfdf7523df7e2ea012cc16eeba2f49982f4d1ad6d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259477815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86dc6a1d36a90aaab9875f8050997a1b83f0ffcc0188e0e4d5cb8c31770e663`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Mon, 10 Aug 2026 23:33:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:47 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:47 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:47 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e593ebcdd19de91c42f5c82de1d78975eb0da6a9b18f682d4121d9da4548ddbe`  
		Last Modified: Mon, 10 Aug 2026 23:34:07 GMT  
		Size: 4.0 MB (4046312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924bc743fc23ad8dc77349f0ce630112e0e76c3535f6019e4907b5a0bce5b9b0`  
		Last Modified: Mon, 10 Aug 2026 23:34:12 GMT  
		Size: 227.2 MB (227198913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:0329f1f04551987ee0df933f5161ec34f5186ba5f9236f1fdc15eae664a41d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2669399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18fb811e0bca89f7267d6c0e69fdeb85dec2a8e67239585856ad6f34578992c`

```dockerfile
```

-	Layers:
	-	`sha256:77e5c56a9d77f9caa69867d0692411f8bd0591b86de6bf8830e65f60e43781e4`  
		Last Modified: Mon, 10 Aug 2026 23:34:07 GMT  
		Size: 2.7 MB (2652529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f48fc387be35bfb2b53292fe0bbfc53716f02989e46213dee49ee97eece795`  
		Last Modified: Mon, 10 Aug 2026 23:34:07 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ff453e240b5e906fd20ec2265438b8b27bacdca32675c4f0b93c6aeb4902fbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257141040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e4adefe62f13a5568432f4f664cd8ebcf9187cc9c893086da329752431fd53`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Mon, 10 Aug 2026 23:33:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:45 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Mon, 10 Aug 2026 23:33:45 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:45 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:45 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:33:45 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9b95b73800b7fe9dcaf1828a4b20d53b1c11c71137d5f212b0f38f540bdb00`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 3.9 MB (3861363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae7d78d0b273193cca56b992506391d7bd0969119a392099fd650ef69f9f3fb`  
		Last Modified: Mon, 10 Aug 2026 23:34:10 GMT  
		Size: 225.2 MB (225162475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:e6ad5a8566c3601578b42d3a19d43593b357a3e2e16386c98116860f1f8bc9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2669153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffbe9cf3fb2d65c64fdd90283505d3ece1698c7593027e9004fd4e11fd9ebf7`

```dockerfile
```

-	Layers:
	-	`sha256:f14efd0a91809b9957e50e8b61b72a177ddff796713345c372541201d9131941`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 2.7 MB (2652163 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5302876d8c03f11d2e3693d449e0b1d95d03fd3ebef997eff0e476f649b68c6f`  
		Last Modified: Mon, 10 Aug 2026 23:34:06 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
