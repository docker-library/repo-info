## `openjdk:28-ea-22-slim`

```console
$ docker pull openjdk@sha256:1de57e2559964f7d126933339463ebc4e2519af6fcd913cfec8e50f55a162be5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d54cd96a0761ca6f2ebacbafafc40aa6c804808c633ee88ebd9d7653342f13e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275620801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db1faa33f5d642f81c365e5625965479434d86dc2d140848625f2f2b0a19810`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:58:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:13 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:13 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:13 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:13 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:13 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992a5972b544d74633d66eefc63772333c67475bcf93b78a6019ca17f5e4aee`  
		Last Modified: Tue, 03 Nov 2026 00:59:36 GMT  
		Size: 2.4 MB (2368487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a763f2f49735b05188d1f13d5879bb8cda3a73284e116e2743c0ed98360921d`  
		Last Modified: Tue, 03 Nov 2026 00:59:40 GMT  
		Size: 243.4 MB (243397078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:9436c3b98b29141fd6b4d088777581ec9087e48c74c767fe4cce02b20be17b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a55600add09bf22e7fed6f5143716f492cf9c32446de878adc70f4b220bae6d`

```dockerfile
```

-	Layers:
	-	`sha256:eca885d610d259285e2be4c22fe5fee27d10d7a72ac60bba7bee476ef00acd8e`  
		Last Modified: Tue, 03 Nov 2026 00:59:36 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7bb8adec6a33e6226f96629105016fed31602591508e10920533be637172a6e`  
		Last Modified: Tue, 03 Nov 2026 00:59:36 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2802afd125f2de3485a7599345be0bbeb4415d082037dc8ee1eb849bfc025c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273948902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a382ae76ba7a3f091fd14d4555dee3ab7d9b48d890b906ebe2882511e6da12`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:58:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:59:09 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 03 Nov 2026 00:59:09 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:59:09 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:59:09 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 00:59:09 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 03 Nov 2026 00:59:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a4fce942efe4d41828d25cc85b59412ac3dc3500f1e734dac51ef2fe0f436f`  
		Last Modified: Tue, 03 Nov 2026 00:59:31 GMT  
		Size: 2.3 MB (2311854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e822fcd79adcbffa6e636113b3037f2ede9c3eaa885c5ce6cfbea6b1b9cc74`  
		Last Modified: Tue, 03 Nov 2026 00:59:36 GMT  
		Size: 241.4 MB (241423552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:957f67763f48fd3de9ac0dc537aff4aecd5a186febcc1afe9ba83df6b71eaae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79915b3209fb45b96e1b51bad86aed2512ea42e19e2844f08d1b7957f70bae4d`

```dockerfile
```

-	Layers:
	-	`sha256:e18be0b92e3e0caa6326018907cfaa78beb8c605df1df30c2b789d9d6f83f6cb`  
		Last Modified: Tue, 03 Nov 2026 00:59:31 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:995134346af07191d85c4816c350fa288bb92f9994ac00fc645b307720f16753`  
		Last Modified: Tue, 03 Nov 2026 00:59:31 GMT  
		Size: 18.3 KB (18275 bytes)  
		MIME: application/vnd.in-toto+json
