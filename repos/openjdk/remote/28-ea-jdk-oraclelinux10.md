## `openjdk:28-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:ec708e8d48795381a4e7f7094483bf9217355a9704495fcce2432136283aa1d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:9811e596aafdd09b245431f07f5e44ed342ea142d15368cc5360c1edaaed4a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324921121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8051862b0f11f5770262812d05fff4fa4decd4f7d083c8e2396f4169ef5113cd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:38 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 27 Oct 2026 23:07:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 23:07:49 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 23:07:49 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 23:07:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 27 Oct 2026 23:07:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc864218a87873add895f3d60b930361becac4bf4b2004c4d7f5edf31efde62`  
		Last Modified: Tue, 27 Oct 2026 23:08:12 GMT  
		Size: 36.9 MB (36894406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439ede41436667b6610c486d3e9396a5e867b4c3e177db3c220641105bf909fd`  
		Last Modified: Tue, 27 Oct 2026 23:08:16 GMT  
		Size: 243.2 MB (243176009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:985c5a49899c0933be44fab5b92f345568b32b28a4fdcbfad5cf70c4b1c44957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfed5f465518b1234d698b607298d92456178f1069a0f9ec5b85fa897848253`

```dockerfile
```

-	Layers:
	-	`sha256:0664fa52f9fbe68b316bba0ebf49320f65fd0f99145784c0e0cba217c1e64345`  
		Last Modified: Tue, 27 Oct 2026 23:08:11 GMT  
		Size: 2.4 MB (2358174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33968f7fce2159b1baea6b2dedad920a1f8c418e6737d2d6bc50410f21f01a91`  
		Last Modified: Tue, 27 Oct 2026 23:08:11 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:214a807179e8ee4ce0b050b5a4de17f1d5f6667dab077c6076f876ede4611f2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321432591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e969ca10780dc5eb2d115441433bf61dfa90093abecc3be4e9a11586bbc7ea9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:45 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 27 Oct 2026 23:07:45 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 23:07:45 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 23:07:45 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 23:07:45 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 27 Oct 2026 23:07:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00c5d74560d295bad117edca44b01025f01025b3e0e1d524545d24b9bdfd4ad`  
		Last Modified: Tue, 27 Oct 2026 23:08:11 GMT  
		Size: 36.9 MB (36943295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7760c15c54ca1ef80239b18199a0317e47b9c752afc5a874e046508af8d0b6`  
		Last Modified: Tue, 27 Oct 2026 23:08:14 GMT  
		Size: 241.2 MB (241184000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:4cf6cbc73984cc9db0fc7b7af70f5a9d1c84e43cc75f995d9c8fe7efe16047c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2375767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d59b460cf82995da16fdc50786f8ca6cd4bb5e4d68a0c5b367b36ee3b8132a4`

```dockerfile
```

-	Layers:
	-	`sha256:c6fc96f7fe015e9044c7075b780166c2d4b1f97822c423aef8c84537c367213b`  
		Last Modified: Tue, 27 Oct 2026 23:08:09 GMT  
		Size: 2.4 MB (2357702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bec573c3aa7af4475d2479773a314848657b0a26a12cfb5f72fc187197845c42`  
		Last Modified: Tue, 27 Oct 2026 23:08:09 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
