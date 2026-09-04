## `openjdk:28-ea-14-oraclelinux9`

```console
$ docker pull openjdk@sha256:4916d0554514270c172844a237c8ed5ac6cfdaa90607ec69e20e56dec2edd28f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-14-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:b87e5f79c3c7641a8a7eb24fa99680a8567b1d2b72c70053dac0daa81aa326a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330171042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9526550d0a989e14d2acb63f0fe89b95c66153fa15de5b6598360eac68f471`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 21:08:21 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 04 Sep 2026 21:08:32 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 04 Sep 2026 21:08:32 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:08:32 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:08:32 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:08:32 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:08:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32df3fea9e67780483fa232a35c8296e8a3be770507ef0d7ad0c2933db3b32a5`  
		Last Modified: Fri, 04 Sep 2026 21:08:58 GMT  
		Size: 39.7 MB (39691065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9210bae542aa0ebdc5a27ef81bf657030cfd5d387888ff34d840a260f40396`  
		Last Modified: Fri, 04 Sep 2026 21:09:02 GMT  
		Size: 242.6 MB (242552225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:ba29b7d8e8bb0611853f424fc2d7c17dc9e419ca03dd641fa4e8d46900712804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3697459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebe4b7602bddab7bfeec0c45186f9c06ab09f25950e00057fcacf56845ba366`

```dockerfile
```

-	Layers:
	-	`sha256:7f7140c0012fc143d67cdffaf670b6be2273197064f9b664d63ab208d768ce95`  
		Last Modified: Fri, 04 Sep 2026 21:08:57 GMT  
		Size: 3.7 MB (3682116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94c5b21eca91a5e2adb12bf30dc3568f1eff0276be61a02da9df4980f251308b`  
		Last Modified: Fri, 04 Sep 2026 21:08:56 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:03e688b5f0108c75f63f20a6e79e59054f51c6abf0731ad25196d31af384d22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327199082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d916bb80094b9b65d911118a6911a9e94cf3c92ca70b420fda5ff24d9b82d15`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 21:07:58 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 04 Sep 2026 21:08:09 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 04 Sep 2026 21:08:09 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:08:09 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:08:09 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:08:09 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:08:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007ba8370063f0c1c06d0d4c757c9e057baa50b631a8716085336d4c31843982`  
		Last Modified: Fri, 04 Sep 2026 21:08:35 GMT  
		Size: 40.1 MB (40093400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c16697b15a41f983ee4decff88d5b5891a064307d73a28a80b806bc0f8f89b`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 240.6 MB (240627777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:f56028d91bd3bc70a15e77edd6a634c4f5b84e25eb595295bc845478ef805212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3695188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb6324f6106ed47b8b45244334d3659b39d2aa5a1f54c404d9cdf4d89d6b743`

```dockerfile
```

-	Layers:
	-	`sha256:6fa75a8715ed8fcea98bcc4b484e17db6c6e80f04747533b3309e8575a269570`  
		Last Modified: Fri, 04 Sep 2026 21:08:34 GMT  
		Size: 3.7 MB (3679726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db01d132649f56895374a0be9aaff11133d1a26b3b659eb47ada0adc2936802d`  
		Last Modified: Fri, 04 Sep 2026 21:08:34 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
