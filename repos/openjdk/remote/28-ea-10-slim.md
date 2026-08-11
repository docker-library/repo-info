## `openjdk:28-ea-10-slim`

```console
$ docker pull openjdk@sha256:8748034481e5b62695e3cb5638860e6aecd8adff7f3439fbbd82b9ff963f33c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-10-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:923345c7004e3de282ff7dac450ac685750c95a3651c702b109666fc336ed4dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274821091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3976c4c3418dbc59bfc6697fb213669da5c279ca5319cff84ae95780b23fa607`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 23:33:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:24 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:24 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aff7d95bf5e8ff5ca228872eb6a239b7f2cc6cd9ecf5340c4e062babd85c4e2`  
		Last Modified: Mon, 10 Aug 2026 23:34:02 GMT  
		Size: 2.4 MB (2371347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a1d195f710a4841cbc23621a4cad95d3b567af8cd4866ab80d718787ebf216`  
		Last Modified: Mon, 10 Aug 2026 23:34:50 GMT  
		Size: 242.7 MB (242668979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:f6dd1cbf3ddf0a4a1795e101300dabf48bf8c8d082fcfe1620de4e46becd4860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c211a79636f9afa0fd5087b7c380c7ed82f55a1ab275d2fcefc86196f091945`

```dockerfile
```

-	Layers:
	-	`sha256:5c289df90160c5f2ca6b47552adb7891b68b53d3fe08e4e41e8490fd2fb574ea`  
		Last Modified: Mon, 10 Aug 2026 23:34:45 GMT  
		Size: 2.3 MB (2279012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de1a57eecf492d8789c9fd3f92283d5b9907978d506a76c39a59b321e723db26`  
		Last Modified: Mon, 10 Aug 2026 23:34:45 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-10-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b89d84177ebb21b9a4a01719c3ab39cfce82e1b0cfd254b9f24f4dd0b86d26ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273217011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0769a2caf919ad025fde247aca5ca8391f2e1d17987180f376b2c9df6b64878d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 23:34:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:34:32 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 10 Aug 2026 23:34:32 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:32 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:32 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:32 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4622a159a62d85e77068be65adaff4b56ef752bcbaf8021880fb5104e69e5410`  
		Last Modified: Mon, 10 Aug 2026 23:34:55 GMT  
		Size: 2.3 MB (2314647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3635a7963a251d293b5dd68ae4bbc8749aa40b8fed6970342bfd1901e92b4ff6`  
		Last Modified: Mon, 10 Aug 2026 23:35:00 GMT  
		Size: 240.8 MB (240758755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-10-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:9f7ec17d59995fe0cd6e390f560f72112cb8450a09a96f532c6235301fde3eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2296966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b6efcc55552fd5ce10b960f1e8314a61f0ab16628656a4d29c52db09348350`

```dockerfile
```

-	Layers:
	-	`sha256:48d229d70909349d4d4f6ded32003889e571ee1008ce6f6a1bf32c5b9c1c1954`  
		Last Modified: Mon, 10 Aug 2026 23:34:55 GMT  
		Size: 2.3 MB (2278690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd7a53da7a12a3948585721397f52ab2575a2c7251827d13bf40ba86cf1c6895`  
		Last Modified: Mon, 10 Aug 2026 23:34:55 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
