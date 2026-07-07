## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:c38d3da0d6120813336d060e6c27bcb923bb59b5f2fe66c106bac4df2264f480
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:e3c8a5731fbd324766324905e1cc31ceec606be519d19c80d4969bedf601457c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313647792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d55282448d7ca58775769be8d9d7a75887873e48f3beebd5be19b87c2d35b8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 23:31:07 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 23 Jun 2026 23:31:07 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:43 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:53 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:39:53 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:53 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:53 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:39:53 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b21eb7a1e3e8c85b9f7c55e523b7309abb9be51ed5d639b708a756b2568459d`  
		Last Modified: Tue, 23 Jun 2026 23:31:18 GMT  
		Size: 47.9 MB (47923466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d455fef9f09969d43a6370e1ff80137adb30f384334ef59a2eca2f778c5c69`  
		Last Modified: Mon, 06 Jul 2026 21:40:16 GMT  
		Size: 38.3 MB (38301629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ee1bd72172ccab0673085a2a97c8a20e35f0fa56e29364e5595d532e74fce3`  
		Last Modified: Mon, 06 Jul 2026 21:40:23 GMT  
		Size: 227.4 MB (227422697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:a24e10c32fc4a37d798af42b58e56a599247e360299c779f529f21141dda3f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a3cfa593b3235f1b457c91403ca753f2f8c17e82d3354e15404787001efe56`

```dockerfile
```

-	Layers:
	-	`sha256:ca6f9df9f3ef83372a1e2e19eb21f366782c9ef26fd4641852fb548300fd95d7`  
		Last Modified: Mon, 06 Jul 2026 21:40:15 GMT  
		Size: 3.7 MB (3652159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d2e0bb1c7231f7a87290c2e50080b166e47449686324150d950be50ed14400d`  
		Last Modified: Mon, 06 Jul 2026 21:40:14 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f3d9ac5659cf3026a4c0d562737d4df867a6364843138c6c0af9f4e5bfd7898b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310636309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06306b3263a96d4c71fe3e901c082a5f76dc01c16021fe2867f03860829c995`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 23:31:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 23 Jun 2026 23:31:02 GMT
CMD ["/bin/bash"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 06 Jul 2026 21:39:56 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 06 Jul 2026 21:39:56 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:39:56 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:39:56 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:39:56 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:39:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14f0bac426a67d312501b30c0b419c0d5c2265f32077f348593b94dd76f064ac`  
		Last Modified: Tue, 23 Jun 2026 23:31:13 GMT  
		Size: 46.5 MB (46470688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecb304fd370e74df349379ac8898e9d1b5fe90ba421fe6126e978e74971f1c`  
		Last Modified: Mon, 06 Jul 2026 21:40:19 GMT  
		Size: 38.7 MB (38691301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68576d8d0b2aa59470c3207094d98b724c8a882c86e8ed706f140ad2f4dfcb55`  
		Last Modified: Mon, 06 Jul 2026 21:40:23 GMT  
		Size: 225.5 MB (225474320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:715a9bda1745b6e601cf42d0fb6b150187fb00b7c237e5e9110a97fb26c1fde9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ef886af55bf01b0f6ac2862f2672506e9df05579dde6fc8f79d305f0ffb809`

```dockerfile
```

-	Layers:
	-	`sha256:2118e1269e00385e6a6d929ace6564c3607396d7e267eac7f78f2f8b765b9675`  
		Last Modified: Mon, 06 Jul 2026 21:40:18 GMT  
		Size: 3.6 MB (3649769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a515e4bf8b64d35082b63b1d97e9c41bc82e95e08fe2ffa0e79ec50bace2c98d`  
		Last Modified: Mon, 06 Jul 2026 21:40:17 GMT  
		Size: 15.4 KB (15444 bytes)  
		MIME: application/vnd.in-toto+json
