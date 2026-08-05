## `openjdk:27-ea-slim-bookworm`

```console
$ docker pull openjdk@sha256:df09cedf2b2313a5c5e963a0647bb83bced40de73a3a2c55027d10601f1ab46b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:69d303231a18fcac4c2ecc5ea3dd0d2c94ce17904e01cd8078a7f0167f9b9415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259454455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae57c840381346c3934fe13d28f555d80798e294636ee47551be283127e4d3f8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 00:49:47 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:49:47 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 00:49:47 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:49:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c54a8904dc13a55ba435871ae24f66c27e6d29597ebec27d25c6f5def0e2e9d`  
		Last Modified: Wed, 05 Aug 2026 00:50:07 GMT  
		Size: 4.0 MB (4033002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd615c50d346dfdaae5370136fc8b77a3de07d4acd676d166386e8dbcc92e7`  
		Last Modified: Wed, 05 Aug 2026 00:50:11 GMT  
		Size: 227.2 MB (227188863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:753b6d9a462517b028b11c82199f0334c8e41344f7aee2f952903f3c0c31a723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6650af6eb7e0b40e9e123ed3a3f9cfaacd23a596e623831d2fa88e1226a79f24`

```dockerfile
```

-	Layers:
	-	`sha256:bce34bb08fc68204a43e98c69211a3316405795e68c8b8cf6b91f637e9d119d8`  
		Last Modified: Wed, 05 Aug 2026 00:50:07 GMT  
		Size: 2.6 MB (2647326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f55ce94d0e66e0a6be7236614eab4ae3bc5d60563dc5a8ef2a0ca01467e3118`  
		Last Modified: Wed, 05 Aug 2026 00:50:07 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ffd9994994c34283591e83e2467399fd63022d9b1b2ce60a51dbe8c93c13a769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257128588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:442694d090e56df0b46e2f5aa9db31dccc1cd7504ff5a93524676ed21a4be167`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:52:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:52:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Wed, 05 Aug 2026 00:52:25 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:52:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:52:25 GMT
ENV JAVA_VERSION=27-ea+33
# Wed, 05 Aug 2026 00:52:25 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 00:52:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dca34cf2d39a9528d6720ec23b5c907af059d561b24be46ad08b2082dd8f4c8`  
		Last Modified: Wed, 05 Aug 2026 00:52:46 GMT  
		Size: 3.9 MB (3852829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a52e24bc13a538fb2c9e97f151a05293b3a6224bb5e58a727af0515d8375fc2`  
		Last Modified: Wed, 05 Aug 2026 00:52:51 GMT  
		Size: 225.2 MB (225158557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:41b2a4ef034c8ab25ab69e91320de4e048525e9fdcc5703e0182bce665c8c23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be45c8724ab19ff563673a62816248e1a4f4a66a8f00e6a518e050d94aaa7cb`

```dockerfile
```

-	Layers:
	-	`sha256:f2ed965204469c6d7ce699c6f1601da3d8bd8dd68417e1b8f26965a05c1805e6`  
		Last Modified: Wed, 05 Aug 2026 00:52:46 GMT  
		Size: 2.6 MB (2646960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21401feab67ff769b682b47c7fa9bbedc8e1a0694d770d69064cce94bf1cb7d6`  
		Last Modified: Wed, 05 Aug 2026 00:52:46 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
