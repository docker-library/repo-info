## `openjdk:28-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:292fe8490be59565446036c5adb4aaf4883ed69a65571a2a9031126521ea0ec4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:2dd20060ac9d4facf773a7057658b349a0d3e43e2234dd03995c35b6d6f3fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308191291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e76d34134e837b77b92dc97ab8d42e8feca68a06331f1215c472d59cf3590b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:44:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:44:08 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:40:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:40:00 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:00 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:00 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ded2aa0abafd1e1e93e05338cb1b14916dbeb283d3862aa21e5d8b0164f4cbf3`  
		Last Modified: Tue, 12 May 2026 18:44:20 GMT  
		Size: 43.1 MB (43080582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d27d3b7785da0686825a8fc43c736ed323ef8e7483c0e8c9efa731c6e9b19a`  
		Last Modified: Mon, 06 Jul 2026 21:40:23 GMT  
		Size: 37.7 MB (37687875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4645f2d68cd7ac75a189457e84a798fb9a184ddc208ddffb5250629b82e884`  
		Last Modified: Mon, 06 Jul 2026 21:40:27 GMT  
		Size: 227.4 MB (227422834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:d296e1d0a6f8b36dd3314e374222eed0c0db4d7e6cc240e7459dc68518ce956a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2b61a74acc23fad2a437dfeb9573a4e6600b3400107e249ac4f8f2a4242026`

```dockerfile
```

-	Layers:
	-	`sha256:e6abc72655db82fde1f0b46147bb3e2d95bf24f4c1663b4d8bef2718d05d79e0`  
		Last Modified: Mon, 06 Jul 2026 21:40:21 GMT  
		Size: 2.4 MB (2366446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dbf71d1cc19766218f274909faddd6a20f528ab909706f388d9307d652774e6`  
		Last Modified: Mon, 06 Jul 2026 21:40:21 GMT  
		Size: 17.8 KB (17827 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f62fb55f6b8cda4d8248da00150ca4675c2adad7edd605e391911dda4a8d4f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304666019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729a7e275e97a1963406ea6a03c3dee8ed6b63cd86e2b84173ce8f94b8785678`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 May 2026 18:43:55 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 12 May 2026 18:43:55 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:16 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:39:27 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:27 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:27 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:39:27 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:523b5fcd95921b1880258a8c56e30985e8f3adf21d143bf177907dc76d6a562b`  
		Last Modified: Tue, 12 May 2026 18:44:06 GMT  
		Size: 41.5 MB (41495695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4aff9fb93cdd5d73b682d0e640b2d9d4768bebb6b7f8dcdfeb2fee565e121c`  
		Last Modified: Mon, 06 Jul 2026 21:39:49 GMT  
		Size: 37.7 MB (37695854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62e405e2abdfc13e052bb1d3f7015fc5df00126de65ed497e3056f61c7a54b4`  
		Last Modified: Mon, 06 Jul 2026 21:39:53 GMT  
		Size: 225.5 MB (225474470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f59a89dcb718730c95deea6f656f64b52c197945d21d95a7d0aef729510e53f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fb9b139ce21ce840c91f7c10cdb2b0db91b93d7a9afad42535295f7b896fc`

```dockerfile
```

-	Layers:
	-	`sha256:62326f054e53187ba844071e89b564ec5c75b74a56244cd2d28a7b1464c96558`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 2.4 MB (2365974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f61921f214f57ac397ca385e504aeaa7324834e8b27300a232ca79d11268217e`  
		Last Modified: Mon, 06 Jul 2026 21:39:48 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
