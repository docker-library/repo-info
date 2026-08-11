## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:89dbc3d2c8c2cc15bf2007c7217289678bd0117c538e11f72b1dd3d7ce6d1e31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:f8379bbbc1de34b54e9bc0ccdfb0c85f0f1626bebbc8001cd550559831d37f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324197533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aba0d72bf46b1599df513b337cc48957ff7759b64caff0a7a1e095b668bf809`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 21:16:30 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 21:16:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:46 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:34:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:34:00 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:34:00 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:34:00 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:34:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:34:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:79c2d66f9f47f61119d8b02676cac5ac7dd1994ad8daf50a1eeeb73311945995`  
		Last Modified: Tue, 04 Aug 2026 21:16:41 GMT  
		Size: 44.8 MB (44842450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c6c636b440a7b5b9aedb5bf7fe37df5848e8c382bb0544f5dd9a264e613d1`  
		Last Modified: Mon, 10 Aug 2026 23:34:24 GMT  
		Size: 36.9 MB (36857337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15512c7b234daf7a12ebca8a91cb479c22fb48e1ec420eb40a42ef040e0566b`  
		Last Modified: Mon, 10 Aug 2026 23:34:28 GMT  
		Size: 242.5 MB (242497746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:4ed568f4fbacdb4c2b8abd074300862d95adf9ea7ced436388677f4e8d9406cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac744ba4d50b818642d9e20002d9e4d1df6f2072061f1a3c6c27d01e95d805e`

```dockerfile
```

-	Layers:
	-	`sha256:3a68a006b91c4c28239a2a9ba5223bca65cf03c1619526017e683155423ed632`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 2.4 MB (2375952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e9c3f19ed2f8ab323ebe6d6ba94199257b27f6f47d9241abd6a3df6618f937d`  
		Last Modified: Mon, 10 Aug 2026 23:34:22 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:87801ff0282f5c07f464edd6815563fa90ad085b8ef4d455c967aea431756d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320805997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d9610c3aa5a0f4c2016d302593fca8a5147d91c9868cef901423f727ee3d93`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 04 Aug 2026 22:02:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 04 Aug 2026 22:02:53 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:33:35 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 10 Aug 2026 23:33:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 10 Aug 2026 23:33:51 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:33:51 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:33:51 GMT
ENV JAVA_VERSION=28-ea+10
# Mon, 10 Aug 2026 23:33:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 10 Aug 2026 23:33:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:778a33a3fc07f06e034baf262727b4309e77f8c410ceeb52e467c4cdb0891934`  
		Last Modified: Tue, 04 Aug 2026 22:03:03 GMT  
		Size: 43.3 MB (43301424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90e38ec8491a8aa6237636239604f9faf15e75afdae85649838b2135fcc88ae`  
		Last Modified: Mon, 10 Aug 2026 23:34:16 GMT  
		Size: 36.9 MB (36915244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352628b3aae598aeee0a34ea6681b3681e48cdbbdd5ea6c02c9b9865c99e7949`  
		Last Modified: Mon, 10 Aug 2026 23:34:20 GMT  
		Size: 240.6 MB (240589329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:4a044bec9dd796ff58c7200fe140aae5e8478e10b6e1c77f30b9ddf5b89ae67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f49275cf5f0510ce054da27822a75802b21766f92e74ae05dbaff54ac962cff`

```dockerfile
```

-	Layers:
	-	`sha256:9438bafa78ba955ea7141dcf74beeb4d71a8f642573ba514f182fd19bd555708`  
		Last Modified: Mon, 10 Aug 2026 23:34:15 GMT  
		Size: 2.4 MB (2375480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebea7f8667a9d54f255f178f643342d3500f168551e675a770a18dc83bc0c37b`  
		Last Modified: Mon, 10 Aug 2026 23:34:15 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
