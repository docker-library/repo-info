## `openjdk:27-rc-oraclelinux9`

```console
$ docker pull openjdk@sha256:1ea6f2d1716b6529268c21ff79b78d7c759e78136653095036d7598003e3cf44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:681e186b63762e840afb49b19ee51c5218d919f75b535fffb35ed7ecd10e8665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313240579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b0460fdf6b26ad1b70cc2e96b9d28022fcf73707bf8b87aa365f43f6027e2b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:19:22 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:30 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:19:30 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:19:30 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:19:30 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:19:30 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:19:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da084a72aeed82667dca0c9537001f9b0a6b501ddf48f16235a704949b275585`  
		Last Modified: Tue, 08 Sep 2026 19:19:52 GMT  
		Size: 38.3 MB (38287759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86109b0041fc5511bf08eb73b3368f41e675774b640c8da87f8c6dc02b7f6e10`  
		Last Modified: Tue, 08 Sep 2026 19:19:56 GMT  
		Size: 227.0 MB (227021240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:1947aa112730001bb71aced94cdacdb6715d80668153723e34fe3d535460acd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c900513399f73755baaf41be41402b360438b3b5c42f72228c03e5dbe351cab`

```dockerfile
```

-	Layers:
	-	`sha256:622327f03944214464a8545acd9246d0e4180a1febdf629dddcb4f557dfd5e90`  
		Last Modified: Tue, 08 Sep 2026 19:19:51 GMT  
		Size: 3.7 MB (3652747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fecec0c01b7705dd220c28aadcd635779306a07f97550fee5c50712a2fa10d4`  
		Last Modified: Tue, 08 Sep 2026 19:19:51 GMT  
		Size: 14.7 KB (14739 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fdddce268c7b83c9a00b134bef0bead7001c398e3437abd617008f2680443e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310159376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c02701932d0f081fc9c3ea06044f9c5421a7766970259bbcb97bb9b7406f51`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:17:19 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:17:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:17:28 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:17:28 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:17:28 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:17:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:17:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7148574a3bdbbbbb8f8a3b7b8bdd2328a710e84e3da1a1e4520b02c5c86dd30e`  
		Last Modified: Tue, 08 Sep 2026 19:17:51 GMT  
		Size: 38.7 MB (38683287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68908ea9882d02fc8b70a4cf3ae5f38437fb8314eb5bc4a0a0d55d6d667d1ed9`  
		Last Modified: Tue, 08 Sep 2026 19:17:55 GMT  
		Size: 225.0 MB (224999060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:71f999ee5efaecd09711f2853941186967430149d3990ec00fb3c3bf14ff2fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d195fda544ec1b738239b422c447fca5654cc4dbb3a8f09dab1c71bf4fd5e8c`

```dockerfile
```

-	Layers:
	-	`sha256:a50a6db94d8d7d3c3d84023137c7b2650373204043eb351a5bced999dd300635`  
		Last Modified: Tue, 08 Sep 2026 19:17:49 GMT  
		Size: 3.7 MB (3650333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6219103b951dbc5912196847b2ce5be8609c57f744e7ab1fc3c10b82957cd27b`  
		Last Modified: Tue, 08 Sep 2026 19:17:49 GMT  
		Size: 14.8 KB (14834 bytes)  
		MIME: application/vnd.in-toto+json
