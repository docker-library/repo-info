## `openjdk:28-ea-21-slim-bookworm`

```console
$ docker pull openjdk@sha256:b2226c7d0e092bad5fc152af4cb0b39b90640c0c1a203172a0d94a86ae8651b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:16972405dfe6cfb5108633e5db5078ea441bac282054ee214a8bc7cbde2ae8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275441031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64287cd158090d4be6a0fbcd43dd9cd71c84bf5364b41faa6d9cadea605a4092`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 17:19:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:19:24 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:19:24 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:19:24 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:19:24 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:19:24 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:19:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eee13d35d11ffc7a85abbdbbc68287aec45dd7a011184c9184fe4c5a370e415`  
		Last Modified: Mon, 26 Oct 2026 17:19:45 GMT  
		Size: 3.9 MB (3852397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b70b0d2a1280c2aef47af0fcff8f1a452aff5568496d9f7989cfbc01d3b4a3a`  
		Last Modified: Mon, 26 Oct 2026 17:19:50 GMT  
		Size: 243.3 MB (243340699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:369fd456af9f33462ddee822cbe536f8a489b3793ba335cea3d0347919acbedd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e997871ba8569899202354f3d2f57399b94a2a2f9944168ebc7d40746c2a985`

```dockerfile
```

-	Layers:
	-	`sha256:8c2b4cbf612cf711de076ed8cbabee5451d173aa7e855c6f75bd22395f74e4d2`  
		Last Modified: Mon, 26 Oct 2026 17:19:46 GMT  
		Size: 2.7 MB (2654482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b18e8fda4cc95c32752fbac64a03ca40e8bf2437036c5ed4ada88aba32e06551`  
		Last Modified: Mon, 26 Oct 2026 17:19:45 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7770a2d6533d2e239621a75275911d27e0f110662d622c0e4d4bfd1d210391a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273154237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa11277050881ff3bc53eb1a3aa53ed9a90c73cf3ba67ea58f066d4291cb19a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 17:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:19:38 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:19:38 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:19:38 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:19:38 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:19:38 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:19:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a1225c2ac83dae4c939ab0b0e7cca690f38f6c38a8aad7eb2d88f1accb33c8`  
		Last Modified: Mon, 26 Oct 2026 17:20:02 GMT  
		Size: 3.7 MB (3666871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2fd64a4b1e5079a82984b167ba8816d73815407e2932e58ddb9bce4b1f29aaa`  
		Last Modified: Mon, 26 Oct 2026 17:20:07 GMT  
		Size: 241.3 MB (241348941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:310e89db230163955ea5628b5c08e15444b7877e71dfe296c6bbe7f1f4b49b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a7fc13906606359e3d2860658b469c2a43a2bb79a1dc716a39f8259facab70`

```dockerfile
```

-	Layers:
	-	`sha256:a5121cfac072e59667b31b038f0f116c36a3c2485aaa0a2ac366b58bd93a49ad`  
		Last Modified: Mon, 26 Oct 2026 17:20:02 GMT  
		Size: 2.7 MB (2654116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd26b57005e92d35ce23d1eaba705828e48c80f18cc62215e9c66cbc1e48a6c2`  
		Last Modified: Mon, 26 Oct 2026 17:20:02 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
