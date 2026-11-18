## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:2eb5818a5dfd75f4634ee99d26eaf94f5ebfeedd6b688a837e51f567146d1e38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:231db61f04e5b22f83c0d2035be8240a9f124e8fcb46c2632e6f78b2b575f190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.9 MB (329915687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b7f9daae644f344584f0f737944766c8fe2063c3feb7d0a6f534d544f50f2a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:44:53 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:45:04 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Wed, 18 Nov 2026 21:45:04 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:45:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:45:04 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:45:04 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:45:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e84b807541b4715792bf2ca5cde98e4d34f69e842f23b3901e4ac571449269`  
		Last Modified: Wed, 18 Nov 2026 21:45:28 GMT  
		Size: 38.3 MB (38292361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f50b9bb1318ef7cc0c77ea19dc2c4c883d2c99529ffa7c8a287dc18e23cdb3`  
		Last Modified: Wed, 18 Nov 2026 21:45:32 GMT  
		Size: 244.4 MB (244436717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:727cff66a2536058da9b9ab9fa48ff8090ba33dc7ac976c8302019e9f511d5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3654191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841f52d1023250458c315f38dfa21f1fe2c1fdaf50e2192f08e48670e08970f0`

```dockerfile
```

-	Layers:
	-	`sha256:b32d320838e9a8ebfa068b6bc7076c99fc244341d6c253945241121b050c1214`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 3.6 MB (3638848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57301ef3b83c41fd07172b053b0f8f31cf8ef13baad1d34d2ad52827e2dcab94`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f5aa843892c3301ab254f31572bb19bfc333c92d647d34fe064bf8fb2138c157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326901346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc45d5852e55ca0bdc5253385260aa4e48185569fb9376f29161c9d8410c294`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:44:33 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:44:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Wed, 18 Nov 2026 21:44:44 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:44 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:44 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b43e64da8531afc83a7783aaeb02e4809f195664f0b90233c3a1a1a654ca9d`  
		Last Modified: Wed, 18 Nov 2026 21:45:10 GMT  
		Size: 38.7 MB (38697088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911941c821146dd53e2747d778944f391d6e0a443307f345d5bb596479e10f78`  
		Last Modified: Wed, 18 Nov 2026 21:45:14 GMT  
		Size: 242.5 MB (242470218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:ac11debd3abe3131dd64fa35144e7d5509403d29c571ae9b8d94debba6374b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1138aedf5b535e37ec4e6fd45ef1cc019e322c277a1f6bb31ed2bf85d260d4a5`

```dockerfile
```

-	Layers:
	-	`sha256:9ee23b3526f389d49ed6b625f5fa9fd92db22be4cc16ecc877029eb7c942cdc2`  
		Last Modified: Wed, 18 Nov 2026 21:45:08 GMT  
		Size: 3.6 MB (3636458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94a52dda0e1fefd3e6f4d29a01cec1dd13d7efb21a21be5af2ea3eb1f949ef98`  
		Last Modified: Wed, 18 Nov 2026 21:45:08 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
